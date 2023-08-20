<?php

namespace App\Http\Controllers\Admin;

use App\Customer;
use App\CustomerInstallment;
use App\CustomerPayment;
use App\Http\Constants\OrderConst;
use App\Http\Controllers\Controller;
use App\Http\Requests\PayInstallmentRequest;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;
use PDF;

use Mpdf\QrCode\QrCode;
use Mpdf\QrCode\Output;

class InstallmentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customers = Customer::select('id', 'name', 'code')->get();
        // return $customers;
        return view('installments.index', ['customers' => $customers]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getCustomerInstallments($order_id, $customer_id)
    {
        // $customer_installments = CustomerInstallment::where(['customer_id'=> $customer_id,'order_id'=>$order_id])->get();
        $customer_installments = CustomerInstallment::where(['customer_id' => $customer_id, 'order_id' => $order_id])->get();
        // return $customer_installments;
        return view('installments.customer_installments', ['customer_installments' => $customer_installments]);
        // return $customer_installments;
    }

    public function update_installments(Request $request)
    {
        $today = new DateTime('today');
        if (isset($request->pay_date) && $request->pay_date !== '') {
            $today = date('d-m-Y', strtotime($request->pay_date));
            $today = new DateTime($today);
        }

        // pretty_print( ['custom_date' => new DateTime($request->pay_date), 'date_time' => new DateTime('today')]);die;
        // return ['custom_date' => new DateTime($date), 'date_time' => new DateTime('today')];
        $installments = CustomerInstallment::get();
        foreach ($installments as $installment) {

            if ($installment->status !== OrderConst::$PAID) {
                $date1 = new DateTime($installment->due_date);
                // $today = new DateTime('today');
                if ($today > $date1) {
                    $days  = $today->diff($date1)->format('%a');
                    pretty_print(['due_date' => $installment->due_date,'days' => $days]);
                    CustomerInstallment::where('id', $installment->id)->update(['penalty_amount' => ($days * $installment->penalty_amount_perday) ]);
                } else {
                    $days = 0;
                    CustomerInstallment::where('id', $installment->id)->update(['penalty_amount' => $days]);
                }

                // return $days;
                // pretty_print(['installments' => $installment->due_date, 'days' => $days]);
            }
        }
        // return $installments;
    }

    public function pay_installment_form($installment_id)
    {
        // return 'from form';
        $installment = CustomerInstallment::with('installmentOrder')->findOrFail($installment_id);

        $paid_installments = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('installment_amount_paid');
        $all_installments_amount = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('amount');


        $paid_penalty = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('paid_penalty');
        $all_penalty_amount = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('penalty_amount');

        $installment_payments = CustomerPayment::where(['order_installment_id' => $installment_id])->with('installment')->get();

        // pretty_print(['installment' => $installment]);die;
        return view('installments.pay_installment_form', [
            'installment' => $installment, 'paid_installments' => $paid_installments, 'all_installments_amount' => $all_installments_amount,
            'paid_penalty' => $paid_penalty, 'all_penalty_amount' => $all_penalty_amount, 'installment_payments' => $installment_payments
        ]);
    }

    public function pay_installment(PayInstallmentRequest $request, $installment_id)
    {

        $customer_installment = CustomerInstallment::findOrFail($installment_id);
        if ($customer_installment->status == OrderConst::$PAID) {
            return back()->with(['message' => 'القسط المراد دفعه بالفعل مدفوع', 'alert-type' => 'error']);
        }
        // return ['request' => $request->all(),'installment' => $customer_installment];
        $installment_total_amount_paid = $request->penalty_amount + $request->installment_amount + $customer_installment->total_paid;
        $installment_status = '';

        if (
            ($request->installment_amount + $customer_installment->installment_amount_paid) == $customer_installment->amount && 
            ($request->penalty_amount + $customer_installment->paid_penalty) == $customer_installment->penalty_amount 
        ) {
            $installment_status = OrderConst::$PAID;
        } elseif ($request->installmen_amount < $customer_installment->amount) {
            $installment_status = OrderConst::$PARTIALLY_PAID;
        }
        $customer_installment->update([
            'paid_penalty' => $request->penalty_amount + $customer_installment->paid_penalty,
            'paid_penalty_date' => new DateTime('now'),
            'status' => $installment_status,
            'notes' => $request->notes,
            'bill_no' => ($installment_status == OrderConst::$PAID) ? rand(0000000000, 9999999999) : null,
            'user_id' => Auth::id(),
            'installment_amount_paid' => $request->installment_amount + $customer_installment->installment_amount_paid,
            'total_paid' => $installment_total_amount_paid
        ]);

        $customer_payment = CustomerPayment::create([
            'amount' => $request->installment_amount + $request->penalty_amount,
            'user_id' => Auth::user()->id,
            'order_installment_id' => $installment_id,
            'customer_id' => $customer_installment->customer_id,
            'note' => $request->notes
        ]);

        return back()->with(['message' => "تم دفع القسط بنجاج", 'alert-type' => 'success']);
    }

    public function print_pill($installment_id)
    {
        $installment = CustomerInstallment::with('customer', 'user','installmentOrder')->findOrFail($installment_id);
        // return $installment;


        $paid_installments = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('installment_amount_paid');
        $all_installments_amount = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('amount');


        $paid_penalty = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('paid_penalty');
        $all_penalty_amount = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('penalty_amount');

        $rest_installments_no = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->where('status', '!=', OrderConst::$PAID)->count();

        $pdf_data = [
            'invoice_no' => $installment->bill_no,
            'installment_no' => $installment->installment_id,
            'customer_name' => $installment->customer->name,
            'paid_amount' => $installment->amount,
            'rest_installments_no' => $rest_installments_no,
            // 'total_unpaid_installments' => '43',
            'penalty_amount' => $installment->penalty_amount,
            'paid_penalty' => $installment->paid_penalty,
            'due_date' => $installment->due_date,
            'note' => $installment->notes,
            'reciever' => $installment->user->name,
            'installment' => $installment,
            'paid_installments' => $paid_installments,
            'all_installments_amount' => $all_installments_amount,
            'paid_penalty' => $paid_penalty,
            'all_penalty_amount' => $all_penalty_amount,
            'code' => $installment->customer->code . '-' . $installment->installmentOrder->code . '-' . $installment->installment_id
            // 'qr_code' => $qr_code
        ];
        // return redirect('pdf');

        // return view('pdf.document', $pdf_data);

        $pdf = PDF::loadView('pdf.document', $pdf_data);

        return new Response($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' =>  'inline; filename="invoice.pdf"',
        ]);
    }

    public function print_receipt($payment_id)
    {
        $payment = CustomerPayment::findOrFail($payment_id);
        // $customer = Customer::findOrFail($payment->cusomer)
        // return [
        //     'code' => $payment->customer->code . '-' . $payment->installment->installmentOrder->code . '-' . $payment->installment->installment_id,
        //     'payment' => $payment,
        //     'customer' => $payment->customer,
        //     'installment' => $payment->installment->installmentOrder
        // ];
        $data = [
            'payment_id' => $payment->id,
            'customer' => $payment->customer->name,
            'amount'   => $payment->amount,
            'note' => $payment->note,
            'reciever' => $payment->user->name,
            'code' => $payment->customer->code . '-' . $payment->installment->installmentOrder->code . '-' . $payment->installment->installment_id
        ];

        // return view('pdf.receipt',$data);
        $pdf = PDF::loadView('pdf.receipt', $data);

        return new Response($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' =>  'inline; filename="receipt.pdf"',
        ]);
    }


    public function print_paper_receipt($payment_id)
    {
        $payment = CustomerPayment::findOrFail($payment_id);
        $data = [
            'payment_id' => $payment->id,
            'customer' => $payment->customer->name,
            'amount'   => $payment->amount,
            'note' => $payment->note,
            'reciever' => $payment->user->name,
            'code' => $payment->customer->code . '-' . $payment->installment->installmentOrder->code . '-' . $payment->installment->installment_id
        ];

        // return view('pdf.receipt',$data);
        $pdf = PDF::loadView('pdf.print_paper_receipt', $data);

        return new Response($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' =>  'inline; filename="receipt.pdf"',
        ]);
    }

    public function display_bill_installments(Request $request)
    {
        $date_request = new Request([
            'pay_date' => $request->pay_date
        ]);
        $this->update_installments($date_request);
        // pretty_print(['request' => $request->all()]);
        return redirect()->to('admin/order/' . $request->customer_order . '/installments/' . $request->customer_id . '?pay_date=' . urlencode($request->pay_date));
    }
}
