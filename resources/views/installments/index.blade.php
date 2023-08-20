@extends('voyager::master')

@section('page_title', 'اقساط العميل')

@section('page_header')
    <h1 class="page-title">
        {{-- <i class="{{ $dataType->icon }}"></i> --}}
        اقساط العميل
        {{-- <a href="{{ url()->previous() }}" class="return-to-list">{{ __('translations.go_back') }}</a> --}}
    </h1>
@stop


@section('content')
    <div class="page-content">

        @include('voyager::alerts')

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <form action="{{ url('admin/customer-installments-bills') }}" method="get">
                        <div class="page-content browse container-fluid">
                            <div class="alerts">
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-bordered">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="customer_id" style="margin: 20px 0px;">اختر عميل : </label>
                                                <select name="customer_id" class="select2" required>
                                                    <option value="">اختر</option>
                                                    @foreach ($customers as $customer)
                                                        <option value="{{ $customer->id }}">{{ $customer->name }}
                                                            {{ $customer->code ? '  -  ' . $customer->code : '' }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group" id="customer_orders_div">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>



                </div>
            </div>
        </div>

    </div>
@stop

@section('javascript')

    <script>
        // start load orders options
        // var customer_div_id = '';

        jQuery('select[name=customer_id]').change(function() {
            var customer_id = jQuery(this).val();
            console.log('customer id ' + customer_id);
            // jQuery('#' + customer_div_id).delete();
            if (customer_id !== '' && customer_id !== null) {
                // if (customer_div_id === '') {

                jQuery('#customer_orders_div').html(
                    "<div id=''><p style='text-align:center;'>جاري التحميل ...</p></div>");
                // }
                $.ajax({
                    url: "{{ URL::to('/') }}/admin/customer/orders/" + customer_id,
                    success: function(result) {

                        jQuery('#customer_orders_div').html(result);
                    }
                });
            } else {
                jQuery('#customer_orders_div').html('');
            }
        });

        // end load orders options
    </script>


    <script>
        // start get order installments

        // if (typeof customer_installments_id === 'undefined') {
        // let customer_installments_id = '';
        // }

        function click_on_order(e) {
            // console.log('hello');
            let order_id = jQuery('#customer_order').val();
            let customer_id = jQuery('select[name=customer_id]').val();
            console.log('customer id ' + customer_id + ' and order id ' + order_id);
            if (order_id !== '' && order_id !== null && customer_id !== '' && customer_id !== null) {
                // if (customer_installments_id === '') {
                // customer_installments_id = "customer_order_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
                //     .random() * 1000) + 1;
                // console.log(customer_installments_id);
                jQuery('#order_installment_div').html(
                    "<div id=''><p style='text-align:center;'>جاري التحميل ...</p></div>");
                // }
                $.ajax({
                    url: "{{ URL::to('/') }}/admin/order/" + order_id + "/installments/" + customer_id,
                    success: function(result) {

                        jQuery('#order_installment_div').html(result);
                    }
                });
            } else {
                jQuery('#order_installment_div').html('');
            }
        };

        // end get order installments
    </script>

@stop
