@extends('voyager::master')

@section('content')
    <div class="page-content">

        @include('voyager::alerts')

        <h2 class="page-title">اقساط عميل</h2>

        <div class="page-content browse container-fluid">
            <div class="alerts">
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="customer_id" style="margin: 20px 0px;">اختر عميل : </label>
                                <select name="customer_id" class="select2">
                                    <option value="">اختر</option>
                                    @foreach ($customers as $customer)
                                        <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')

    <script>
        let customer_div_id = '';
        jQuery('select[name=customer_id]').change(function() {
            let customer_id = jQuery(this).val();
            console.log('customer id ' + customer_id);
            if (customer_id !== '' && customer_id !== null) {
                if (customer_div_id === '') {
                    customer_div_id = "customer_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
                        .random() * 1000) + 1;
                    console.log(customer_div_id);
                    jQuery(this).parent('.form-group').after("<div id='" +
                        customer_div_id + "'><p style='text-align:center;'>جاري التحميل ...</p></div>");
                }
                $.ajax({
                    url: "{{ URL::to('/') }}/customers/" + customer_id,
                    success: function(result) {

                        jQuery('#' + customer_div_id).html(result);
                    }
                });
            } else {
                jQuery('#' + customer_div_id).html('');
            }
        });
    </script>

@stop
