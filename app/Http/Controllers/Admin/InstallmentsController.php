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
        $customers = Customer::select('id', 'name')->get();
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
        return view('installments.customer_installments', ['customer_installments' => $customer_installments]);
        // return $customer_installments;
    }

    public function update_installments()
    {
        $installments = CustomerInstallment::get();
        foreach ($installments as $installment) {

            if ($installment->status !== OrderConst::$PAID) {
                $date1 = new DateTime($installment->due_date);
                $today = new DateTime('today');
                if ($today > $date1) {
                    $days  = $today->diff($date1)->format('%a');
                    CustomerInstallment::where('id', $installment->id)->update(['penalty_amount' => $days * 10]);
                } else {
                    $days = 0;
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
        $paid_orders = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id])->sum('total_paid');
        $unpaid_orders = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id, 'status' => OrderConst::$NOT_PAID])->sum('amount', 'penalty_amount');
        $partially_total = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id, 'status' => OrderConst::$PARTIALLY_PAID])->sum('amount', 'penalty_amount');
        $partially_paid = CustomerInstallment::where(['order_id' => $installment->order_id, 'customer_id' => $installment->customer_id, 'status' => OrderConst::$PARTIALLY_PAID])->sum('total_paid');
        $partially_unpaid = $partially_total - $partially_paid;
        $total_paid = $paid_orders + $partially_paid;
        $total_unpaid = $unpaid_orders + $partially_unpaid;
        // return $total_unpaid;
        // return $installment;
        return view('installments.pay_installment_form', ['installment' => $installment, 'total_paid' => $total_paid, 'total_unpaid' => $total_unpaid,'unpaid_orders' ]);
    }

    public function pay_installment(PayInstallmentRequest $request, $installment_id)
    {

        $customer_installment = CustomerInstallment::findOrFail($installment_id);
        if ($customer_installment->status == OrderConst::$PAID) {
            return back()->with(['message' => 'القسط المراد دفعه بالفعل مدفوع', 'alert-type' => 'error']);
        }

        $installment_total_amount_paid = $request->penalty_amount + $request->installment_amount + $customer_installment->total_paid;
        $installment_status = '';

        if (($request->installment_amount + $customer_installment->installment_amount_paid) == $customer_installment->amount) {
            $installment_status = OrderConst::$PAID;
        } elseif ($request->installmen_amount < $customer_installment->amount) {
            $installment_status = OrderConst::$PARTIALLY_PAID;
        }
        $customer_installment->update([
            'paid_penalty' => $request->penalty_amount + $customer_installment->paid_penalty,
            'paid_penalty_date' => new DateTime('now'),
            'status' => $installment_status,
            'notes' => $request->notes,
            'bill_no' => rand(0000000000, 9999999999),
            'user_id' => Auth::id(),
            'installment_amount_paid' => $request->installment_amount + $customer_installment->installment_amount_paid,
            'total_paid' => $installment_total_amount_paid
        ]);

        $customer_payment = CustomerPayment::create([
            'amount' => $installment_total_amount_paid,
            'user_id' => Auth::user()->id,
            'order_installment_id' => $installment_id,
            'customer_id' => $customer_installment->customer_id
        ]);

        return back()->with(['message' => "تم دفع القسط بنجاج", 'alert-type' => 'success']);
    }

    public function print_pill($installment_id)
    {
        $installment = CustomerInstallment::with('customer', 'user')->findOrFail($installment_id);
        // return $installment;

        // $qrCode = new QrCode($installment->bill_no);
        // Echo an HTML table
        // $output = new Output\Html();
        // $qr_code = $output->output($qrCode);
        // 
        // $output = new Output\Svg();
        // $qr_code = $output->output($qrCode, 100, 'white', 'black');

        // $output = new Output\Png();
        // $qr_code = $output->output($qrCode, 100, [255, 255, 255], [0, 0, 0]);

        $pdf_data = [
            'invoice_no' => $installment->bill_no,
            'installment_no' => $installment->installment_id,
            'customer_name' => $installment->customer->name,
            'paid_amount' => $installment->amount,
            'rest_installments_no' => '30',
            'total_unpaid_installments' => '43',
            'penalty_amount' => $installment->penalty_amount,
            'paid_penalty' => $installment->paid_penalty,
            'due_date' => $installment->due_date,
            'note' => $installment->notes,
            'reciever' => $installment->user->name,
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
}
