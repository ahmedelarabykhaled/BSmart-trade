<?php

namespace App\Http\Controllers\Admin;

use App\Customer;
use App\CustomerInstallment;
use App\CustomerPayment;
use App\Http\Controllers\Controller;
use App\Http\Requests\PayInstallmentRequest;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

            if ($installment->status !== 'paid') {
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
        $installment = CustomerInstallment::findOrFail($installment_id);
        // return $installment;
        return view('installments.pay_installment_form', ['installment' => $installment]);
    }

    public function pay_installment(PayInstallmentRequest $request,$installment_id)
    {

        $customer_installment = CustomerInstallment::findOrFail($installment_id);
        if($customer_installment->status == 'paid'){
            return back()->with(['message' => 'القسط المراد دفعه بالفعل مدفوع','alert-type' => 'error']);
        }
        $customer_installment->update([
            'paid_penalty' => $request->penalty_amount,
            'paid_penalty_date' => new DateTime('now'),
            'status' => 'paid'
        ]);

        $customer_payment = CustomerPayment::create([
            'amount' => $request->penalty_amount + $request->installment_amount,
            'user_id' => Auth::user()->id,
            'order_installment_id' => $installment_id
        ]);

        // return [$request->all(),$installment_id];
        return redirect('admin/customer-installments')->with(['message' => "تم دفع القسط بنجاج", 'alert-type' => 'success']);
    }
}
