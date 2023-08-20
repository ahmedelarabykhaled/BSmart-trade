@extends('voyager::master')

@section('page_title', 'اقساط العميل')

@section('page_header')
    <h1 class="page-title text-center">
        {{-- <i class="{{ $dataType->icon }}"></i> --}}
        اقساط العميل
        {{-- <a href="{{ url()->previous() }}" class="return-to-list">{{ __('translations.go_back') }}</a> --}}
        <a href="{{ url('admin/customer-installments') }}" class="return-to-list">{{ __('translations.go_back') }}</a>
    </h1>
@stop


@section('content')
    <div class="page-content">

        @include('voyager::alerts')

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="table-responsive">

                                <table class="table" id="installmentsTable">
                                    <thead>
                                        <th>id</th>
                                        <th>amount</th>
                                        <th>due date</th>
                                        <th>installment paid amount</th>
                                        <th>partially paid</th>
                                        <th>partially paid amout</th>
                                        <th>penalty amount</th>
                                        <th>paid penalty</th>
                                        <th>paid penalty date</th>
                                        <th>status</th>
                                        <th>created_at</th>
                                        <th>action</th>
                                    </thead>
                                    <tbody>
                                        @foreach ($customer_installments as $customer_installment)
                                            <tr>
                                                <td>{{ $customer_installment->installment_id }}</td>
                                                <td>{{ $customer_installment->amount }}</td>
                                                <td>{{ $customer_installment->due_date }}</td>
                                                <td>{{ $customer_installment->installment_amount_paid }}</td>
                                                <td>{{ $customer_installment->partially_paid }}</td>
                                                <td>{{ $customer_installment->partially_paid_amount }}</td>
                                                <td>{{ $customer_installment->penalty_amount }}</td>
                                                <td>{{ $customer_installment->paid_penalty }}</td>
                                                <td>{{ $customer_installment->paid_penalty_date }}</td>
                                                <td>{{ $customer_installment->status }}</td>
                                                <td>{{ $customer_installment->created_at }}</td>
                                                <td>
                                                    <form
                                                        action="{{ route('pay_installment_form', $customer_installment->id) }}"
                                                        method="get">
                                                        @if ($customer_installment->status !== 'paid')
                                                            {{-- <a href="{{ url('pay') }}" class="btn btn-primary">pay</a> --}}
                                                            <button type="submit" class="btn btn-success">pay</button>
                                                        @else
                                                            <button type="submit" class="btn btn-warning">view</button>
                                                            {{-- <a href="{{ route('pay_installment_form', $customer_installment->id) }}">view</a> --}}
                                                        @endif
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @stop

    @section('javascript')

        <script>
            $('#installmentsTable').DataTable();
        </script>
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
