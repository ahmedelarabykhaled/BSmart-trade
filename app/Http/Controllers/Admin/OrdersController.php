<?php

namespace App\Http\Controllers\Admin;

use App\CustomerInstallment;
use App\Http\Constants\OrderConst;
use App\Http\Controllers\Controller;
use App\Order;
use Illuminate\Http\Request;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class OrdersController extends VoyagerBaseController
{

    // POST BR(E)AD
    public function update(Request $request, $id)
    {
        // return $request->all();
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Compatibility with Model binding.
        $id = $id instanceof \Illuminate\Database\Eloquent\Model ? $id->{$id->getKeyName()} : $id;

        $model = app($dataType->model_name);
        $query = $model->query();
        if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope' . ucfirst($dataType->scope))) {
            $query = $query->{$dataType->scope}();
        }
        if ($model && in_array(SoftDeletes::class, class_uses_recursive($model))) {
            $query = $query->withTrashed();
        }

        $data = $query->findOrFail($id);

        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows, $dataType->name, $id)->validate();

        // Get fields with images to remove before updating and make a copy of $data
        $to_remove = $dataType->editRows->where('type', 'image')
            ->filter(function ($item, $key) use ($request) {
                return $request->hasFile($item->field);
            });
        $original_data = clone ($data);

        $this->insertUpdateData($request, $slug, $dataType->editRows, $data);

        // Delete Images
        $this->deleteBreadImages($original_data, $to_remove);

        event(new BreadDataUpdated($dataType, $data));

        if (auth()->user()->can('browse', app($dataType->model_name))) {
            $redirect = redirect()->route("voyager.{$dataType->slug}.index");
        } else {
            $redirect = redirect()->back();
        }

        $installments_to_be_deleted_count = (int) CustomerInstallment::whereDate('due_date', '>',date('Y-m-d') )->where(['order_id'=>$id,'status' => OrderConst::$NOT_PAID,'customer_id'=>$request->customer_id])->get()->count();
        // return $installments_to_be_deleted_count;

        if(isset($request->customer_id) && isset($request->order_amount) && isset($request->downpayment) && isset($request->order_profit_percentage) && isset($request->installment_start_date) && isset($request->months_count)){
            // CustomerInstallment::whereYear('due_date','>=',date('Y'))->whereMonth('due_date','>',date('m'))->where(['order_id'=>$id,'status' => OrderConst::$NOT_PAID,'customer_id'=>$request->customer_id])->delete();
            CustomerInstallment::whereDate('due_date', '>',date('Y-m-d') )->where(['order_id'=>$id,'status' => OrderConst::$NOT_PAID,'customer_id'=>$request->customer_id])->delete();
            $installment_amout_per_month = ( ($request->order_amount - $request->downpayment) + (($request->order_amount - $request->downpayment) * $request->order_profit_percentage / 100 )) / $request->months_count;
            // var_dump([$installment_amout_per_month,$installments_to_be_deleted_count,$request->request]);die;
            for($i = 1;$i <= $installments_to_be_deleted_count ;$i++){
                // print_r('from for');
                // var_dump('from for');die;
                CustomerInstallment::create([
                    'customer_id' => $request->customer_id,
                    'amount'      => round($installment_amout_per_month,2),
                    'due_date'    => date('Y-m-d', strtotime('+'. ($i - 1) .' months', strtotime($request->installment_start_date))),
                    'order_id'    => $id,
                    'status'      => 'not_paid',
                    'installment_id' => $i
                ]);
            }
        }

        return $redirect->with([
            'message'    => __('voyager::generic.successfully_updated') . " {$dataType->getTranslatedAttribute('display_name_singular')}",
            'alert-type' => 'success',
        ]);
    }

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        event(new BreadDataAdded($dataType, $data));

        if(isset($request->customer_id) && isset($request->order_amount) && isset($request->downpayment) && isset($request->order_profit_percentage) && isset($request->installment_start_date) && isset($request->months_count)){
            CustomerInstallment::where(['customer_id'=>$request->customer_id,'order_id' => $data->id])->delete();
            $installment_amout_per_month =( ($request->order_amount - $request->downpayment) + (($request->order_amount - $request->downpayment) * $request->order_profit_percentage / 100 )) / $request->months_count;
            for($i = 1;$i <= $request->months_count;$i++){
                CustomerInstallment::create([
                    'customer_id' => $request->customer_id,
                    'amount'      => round($installment_amout_per_month,2),
                    'due_date'    => date('Y-m-d', strtotime('+'. ($i - 1) .' months', strtotime($request->installment_start_date))),
                    'order_id'    => $data->id,
                    'status'      => 'not_paid',
                    'installment_id' => $i
                ]);
            }
        }

        if (!$request->has('_tagging')) {
            if (auth()->user()->can('browse', $data)) {
                $redirect = redirect()->route("voyager.{$dataType->slug}.index");
            } else {
                $redirect = redirect()->back();
            }

            return $redirect->with([
                'message'    => __('voyager::generic.successfully_added_new') . " {$dataType->getTranslatedAttribute('display_name_singular')}",
                'alert-type' => 'success',
            ]);
        } else {
            return response()->json(['success' => true, 'data' => $data]);
        }
    }

    public function getCustomerOrders($customer_id)
    {
        $customer_orders = Order::where('customer_id',$customer_id)->get();
        return view('installments.customer_orders_options',['customer_orders'=>$customer_orders]);
        // return $customer_orders;
    }
}
