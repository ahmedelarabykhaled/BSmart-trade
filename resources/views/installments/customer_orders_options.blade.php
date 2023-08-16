<link rel="stylesheet" href="{{ asset('css/jquery-ui.css') }}">
<label for="">اوردرات العميل :</label>
{{-- {{ pretty_print($customer_orders) }} --}}
<select name="customer_order" id="customer_order" class="" style="display:inline-block;width: 100%;" required>
    {{-- <select name="customer_order" id="customer_order" class="" style="display:inline-block;width: 100%;" onchange="click_on_order()"> --}}
    <option value="">اختر</option>
    @foreach ($customer_orders as $customer_order)
        <option value="{{ $customer_order->id }}">{{'كود الفاتورة = ' . $customer_order->code }}</option>
    @endforeach
</select>

<div class="form-group" style="margin: 20px 0px;">
    <label for="">تاريخ الدفع</label>
    <input type="text" name="pay_date" class="form-control custom-date-format" required value="{{ date('d-m-Y') }}">
</div>

<div class="form-group" style="margin: 40px 0px;">
    <div class="text-center">
        <button type="submit" class="btn btn-primary">عرض الاقساط</button>
    </div>
</div>

<div id="order_installment_div" style="margin: 30px 0px;"></div>
<script src="{{ asset('js/code.jquery.com_ui_1.13.2_jquery-ui.js') }}"></script>
<script>
    function add_custom_date() {
        $(".custom-date-format").datepicker({
            dateFormat: "dd-mm-yy"
        });
    }

    jQuery('#customer_order').select2();
    add_custom_date()
</script>
