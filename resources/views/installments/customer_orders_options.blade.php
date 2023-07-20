<label for="">اوردرات العميل :</label>
<select name="customer_order" id="customer_order" class="" style="display:inline-block;width: 100%;" onchange="click_on_order()">
    <option value="">اختر</option>
    @foreach ($customer_orders as $customer_order)
        <option value="{{ $customer_order->id }}">{{ $customer_order->selling_bill_number }}</option>
    @endforeach
</select>

<div id="order_installment_div" style="margin: 30px 0px;"></div>

<script>
    jQuery('#customer_order').select2();
    // start get order installments

    // if (typeof customer_installments_id === 'undefined') {
        // let customer_installments_id = '';
    // }

    // jQuery('select[name=customer_order]').change(function() {
    //     console.log('hello');
    //     let order_id = jQuery(this).val();
    //     let customer_id = jQuery('select[name=customer_id]').val();
    //     console.log('customer id ' + customer_id + ' and order id ' + order_id);
    //     if (order_id !== '' && order_id !== null && customer_id !== '' && customer_id !== null) {
    //         if (customer_installments_id === '') {
    //             customer_installments_id = "customer_order_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
    //                 .random() * 1000) + 1;
    //             console.log(customer_installments_id);
    //             jQuery('#customer_orders_div').html("<div id='" +
    //                 customer_installments_id + "'><p style='text-align:center;'>جاري التحميل ...</p></div>");
    //         }
    //         $.ajax({
    //             url: "{{ URL::to('/') }}/admin/order/" + order_id + "/installments/" + customer_id,
    //             success: function(result) {

    //                 jQuery('#' + customer_installments_id).html(result);
    //             }
    //         });
    //     } else {
    //         jQuery('#' + customer_installments_id).html('');
    //     }
    // });

    // end get order installments
</script>
