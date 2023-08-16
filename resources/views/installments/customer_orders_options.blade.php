<label for="">اوردرات العميل :</label>
<select name="customer_order" id="customer_order" class="" style="display:inline-block;width: 100%;" >
    {{-- <select name="customer_order" id="customer_order" class="" style="display:inline-block;width: 100%;" onchange="click_on_order()"> --}}
    <option value="">اختر</option>
    @foreach ($customer_orders as $customer_order)
        <option value="{{ $customer_order->id }}">{{ $customer_order->selling_bill_number }}</option>
    @endforeach
</select>

<div class="form-group" style="margin: 20px 0px">
    <label for="">تاريخ الدفع</label>
    <input type="text" name="pay_date" class="form-control">
</div>

<div id="order_installment_div" style="margin: 30px 0px;"></div>

<script>
    jQuery('#customer_order').select2();
    $(".custom-date-format").datepicker({
            dateFormat: "dd-mm-yy"
        });
</script>
