@php
    $edit = !is_null($dataTypeContent->getKey());
    $add = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        .date_value {
            display: inline-block;
        }
    </style>
    <link rel="stylesheet" href="{{ asset('css/jquery-ui.css') }}">
@stop

@section('page_title', __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' ' .
    $dataType->getTranslatedAttribute('display_name_singular'))

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' ' . $dataType->getTranslatedAttribute('display_name_singular') }}
        <a href="{{ url()->previous() }}" class="return-to-list">{{ __('translations.go_back') }}</a>
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form" class="form-edit-add"
                        action="{{ $edit ? route('voyager.' . $dataType->slug . '.update', $dataTypeContent->getKey()) : route('voyager.' . $dataType->slug . '.store') }}"
                        method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        @if ($edit)
                            {{ method_field('PUT') }}
                        @endif

                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">

                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- Adding / Editing -->
                            @php
                                $dataTypeRows = $dataType->{$edit ? 'editRows' : 'addRows'};
                            @endphp

                            @foreach ($dataTypeRows as $row)
                                <!-- GET THE DISPLAY OPTIONS -->
                                @php
                                    $display_options = $row->details->display ?? null;
                                    if ($dataTypeContent->{$row->field . '_' . ($edit ? 'edit' : 'add')}) {
                                        $dataTypeContent->{$row->field} = $dataTypeContent->{$row->field . '_' . ($edit ? 'edit' : 'add')};
                                    }
                                @endphp
                                @if (isset($row->details->legend) && isset($row->details->legend->text))
                                    <legend class="text-{{ $row->details->legend->align ?? 'center' }}"
                                        style="background-color: {{ $row->details->legend->bgcolor ?? '#f0f0f0' }};padding: 5px;">
                                        {{ $row->details->legend->text }}</legend>
                                @endif

                                <div class="form-group @if ($row->type == 'hidden') hidden @endif col-md-{{ $display_options->width ?? 12 }} {{ $errors->has($row->field) ? 'has-error' : '' }}"
                                    @if (isset($display_options->id)) {{ "id=$display_options->id" }} @endif>
                                    {{ $row->slugify }}
                                    <label class="control-label"
                                        for="name">{{ $row->getTranslatedAttribute('display_name') }}</label>
                                    @include('voyager::multilingual.input-hidden-bread-edit-add')
                                    @if (isset($row->details->view))
                                        @include($row->details->view, [
                                            'row' => $row,
                                            'dataType' => $dataType,
                                            'dataTypeContent' => $dataTypeContent,
                                            'content' => $dataTypeContent->{$row->field},
                                            'action' => $edit ? 'edit' : 'add',
                                            'view' => $edit ? 'edit' : 'add',
                                            'options' => $row->details,
                                        ])
                                    @elseif ($row->type == 'relationship')
                                        @include('voyager::formfields.relationship', [
                                            'options' => $row->details,
                                        ])
                                    @else
                                        {!! app('voyager')->formField($row, $dataType, $dataTypeContent) !!}
                                    @endif

                                    @foreach (app('voyager')->afterFormFields($row, $dataType, $dataTypeContent) as $after)
                                        {!! $after->handle($row, $dataType, $dataTypeContent) !!}
                                    @endforeach
                                    @if ($errors->has($row->field))
                                        @foreach ($errors->get($row->field) as $error)
                                            <span class="help-block">{{ $error }}</span>
                                        @endforeach
                                    @endif
                                </div>
                            @endforeach

                        </div><!-- panel-body -->

                        <div class="panel-footer">
                        @section('submit-buttons')
                            <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
                        @stop
                        @yield('submit-buttons')
                    </div>
                </form>

                <iframe id="form_target" name="form_target" style="display:none"></iframe>
                <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                    enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                    <input name="image" id="upload_file" type="file"
                        onchange="$('#my_form').submit();this.value='';">
                    <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                    {{ csrf_field() }}
                </form>

            </div>
        </div>
    </div>
</div>

<div class="modal fade modal-danger" id="confirm_delete_modal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}</h4>
            </div>

            <div class="modal-body">
                <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                    data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                <button type="button" class="btn btn-danger"
                    id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
            </div>
        </div>
    </div>
</div>
<!-- End Delete File Modal -->
@stop

@section('javascript')
<script src="{{ asset('js/code.jquery.com_ui_1.13.2_jquery-ui.js') }}"></script>
<script>
    var params = {};
    var $file;

    function deleteHandler(tag, isMulti) {
        return function() {
            $file = $(this).siblings(tag);

            params = {
                slug: '{{ $dataType->slug }}',
                filename: $file.data('file-name'),
                id: $file.data('id'),
                field: $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
        };
    }

    $('document').ready(function() {
        $('.toggleswitch').bootstrapToggle();

        //Init datepicker for date fields if data-datepicker attribute defined
        //or if browser does not handle date inputs
        $('.form-group input[type=date]').each(function(idx, elt) {
            if (elt.hasAttribute('data-datepicker')) {
                elt.type = 'text';
                $(elt).datetimepicker($(elt).data('datepicker'));
            } else if (elt.type != 'date') {
                elt.type = 'text';
                $(elt).datetimepicker({
                    format: 'L',
                    extraFormats: ['YYYY-MM-DD']
                }).datetimepicker($(elt).data('datepicker'));
            }
        });

        @if ($isModelTranslatable)
            $('.side-body').multilingual({
                "editing": true
            });
        @endif

        $('.side-body input[data-slug-origin]').each(function(i, el) {
            $(el).slugify();
        });

        $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
        $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
        $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
        $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

        $('#confirm_delete').on('click', function() {
            $.post('{{ route('voyager.' . $dataType->slug . '.media.remove') }}', params, function(
                response) {
                if (response &&
                    response.data &&
                    response.data.status &&
                    response.data.status == 200) {

                    toastr.success(response.data.message);
                    $file.parent().fadeOut(300, function() {
                        $(this).remove();
                    })
                } else {
                    toastr.error("Error removing file.");
                }
            });

            $('#confirm_delete_modal').modal('hide');
        });
        $('[data-toggle="tooltip"]').tooltip();

        // load customer data on edit
        let after_load_customer_id = jQuery('select[name=customer_id].select2-ajax').val();
        console.log('customer id ' + after_load_customer_id);
        if (after_load_customer_id !== '' && after_load_customer_id !== null) {
            if (customer_div_id === '') {
                customer_div_id = "customer_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
                    .random() * 1000) + 1;
                console.log(customer_div_id);
                jQuery('select[name=customer_id].select2-ajax').parent('.form-group').after("<div id='" +
                    customer_div_id + "'><p style='text-align:center;'>جاري التحميل ...</p></div>");
            }
            $.ajax({
                url: "{{ URL::to('/') }}/customers/" + after_load_customer_id,
                success: function(result) {

                    jQuery('#' + customer_div_id).html(result);
                }
            });
        } else {
            jQuery('#' + customer_div_id).html('');
        }

        // load grantor data on edit
        let grantor_id = jQuery('select[name=grantor_id].select2-ajax').val();
        console.log('grantor id ' + grantor_id);
        if (grantor_id !== '' && grantor_id !== null) {
            if (grantor_div_id === '') {
                grantor_div_id = "grantor_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
                    .random() * 1000) + 1;
                console.log(grantor_div_id);
                jQuery('select[name=grantor_id].select2-ajax').parent('.form-group').after("<div id='" +
                    grantor_div_id + "'><p style='text-align:center;'>جاري التحميل ...</p></div>");
            }
            $.ajax({
                url: "{{ URL::to('/') }}/customers/" + grantor_id,
                success: function(result) {

                    jQuery('#' + grantor_div_id).html(result);
                }
            });
        } else {
            jQuery('#' + grantor_div_id).html('');
        }


    });
</script>

{{-- my custom script --}}

<script>
    /**
     * 
     * حساب اجمالي الدخل للعميل في بيانات الائتمان
     * 
     */

    jQuery('input[name=final_overall_income],input[name=final_customer_tatal_income],input[name=final_business_income]')
        .attr('readonly', 'true');

    // jQuery('input[name=final_customer_tatal_income]').attr('readonly','true');


    let t_i = 0;
    let t_o = 0;
    let t_t = 0;

    let b_i = 0;
    let b_o = 0;
    let b_t = 0;

    jQuery(
            'input[name=customer_income],input[name=customer_additional_income],input[name=grantor_income],input[name=grantor_additional_income],input[name=commitments_amount],input[name=grantor_commitments]'
        )
        .keyup(function() {
            get_all_values();

            console.log(t_t);
            jQuery('input[name=final_customer_tatal_income]').val(t_t);
        });

    jQuery('input[name=business_income],input[name=business_outcome]').keyup(function() {
        get_all_values();
        jQuery('input[name=final_business_income]').val(b_t);
    })

    function get_all_values() {

        // دخل العميل 
        let customer_income = jQuery('input[name=customer_income]').val();
        let float_customer_income = parseFloat(customer_income);
        console.log('customer_income => ' + float_customer_income);

        // الراتب الشهري
        // let salary = jQuery('input[name=salary]').val();

        // مصدر دخل اضافي للعميل
        let customer_additional_income = jQuery('input[name=customer_additional_income]').val();
        let float_customer_additional_income = parseFloat(customer_additional_income);
        console.log('customer_income_additional => ' + float_customer_additional_income);

        // دخل الضامن
        let grantor_income = jQuery('input[name=grantor_income]').val();
        let float_grantor_income = parseFloat(grantor_income);
        console.log('grantor_income => ' + float_grantor_income);

        // مصدر دخل اضافي للضامن
        let grantor_additional_income = jQuery('input[name=grantor_additional_income]').val();
        let float_grantor_additional_income = parseFloat(grantor_additional_income);
        console.log('grantior_additonal => ' + float_grantor_additional_income);

        // مبلغ التزامات العميل
        let commitments_amount = jQuery('input[name=commitments_amount]').val();
        let float_commitments_amount = parseFloat(commitments_amount);

        // مبلغ التزامات الضامن
        let grantor_commitments = jQuery('input[name=grantor_commitments]').val();
        let float_grantor_commitments = parseFloat(grantor_commitments);

        // العميل لديه نشاط تجاري
        let has_business = jQuery('input[name=has_business]').val();

        // الدخل الشهري للنشاط التجاري
        let business_income = jQuery('input[name=business_income]').val();
        let float_business_income = parseFloat(business_income);

        // الالتزامات الشهرية للنشاط التجاري
        let business_outcome = jQuery('input[name=business_outcome]').val();
        let float_business_outcome = parseFloat(business_outcome);


        t_i = (float_customer_income + float_customer_additional_income + float_grantor_income +
            float_grantor_additional_income);
        console.log('total income => ' + t_i);
        t_o = (float_commitments_amount + float_grantor_commitments);
        console.log('total outcome => ' + t_o);
        t_t = t_i - t_o;

        b_i = business_income;
        b_o = business_outcome;
        b_t = b_i - b_o;

        jQuery('input[name=final_overall_income]').val(b_t + t_t);

    }
</script>

<script>
    let customer_div_id = '';
    jQuery('select[name=customer_id].select2-ajax').change(function() {
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




    let grantor_div_id = '';
    jQuery('select[name=grantor_id].select2-ajax').change(function() {
        let grantor_id = jQuery(this).val();
        console.log('customer id ' + grantor_id);
        if (grantor_id !== '' && grantor_id !== null) {
            if (grantor_div_id === '') {
                grantor_div_id = "customer_" + '{{ rand(0000, 9999) }}' + Math.floor(Math
                    .random() * 1000) + 1;
                console.log(grantor_div_id);
                jQuery(this).parent('.form-group').after("<div id='" +
                    grantor_div_id + "'><p style='text-align:center;'>جاري التحميل ...</p></div>");
            }
            $.ajax({
                url: "{{ URL::to('/') }}/customers/" + grantor_id,
                success: function(result) {

                    jQuery('#' + grantor_div_id).html(result);
                }
            });
        } else {
            jQuery('#' + grantor_div_id).html('');
        }
    });

    // jQuery('#richtextrelatives_data_ifr').contents().find('body').html('hello');
    // jQuery('#richtextrelatives_data').parent('.form-group').after('label').html('what');
    jQuery('#richtextrelatives_data').parent('.form-group').children('label').append(
        '<button id="load_relatives_table" type="button" class="btn btn-primary" >تحميل بيانات الاقارب</button>');
    jQuery('#richtextcommitments').parent('.form-group').children('label').append(
        '<button id="load_commitments" type="button" class="btn btn-primary" >تحميل بيانات الالتزامات</button>');
    jQuery('#richtextbusiness_data').parent('.form-group').children('label').append(
        '<button id="load_trades_data" type="button" class="btn btn-primary" >تحميل بيانات النشاط التجاري</button>');
    jQuery('#richtextcustomer_childrens_data').parent('.form-group').children('label').append(
        '<button id="load_customer_childrens_data" type="button" class="btn btn-primary" >تحميل بيانات ابناء العميل</button>'
    );
    jQuery('#richtextgrantor_childrens_data').parent('.form-group').children('label').append(
        '<button id="load_grantor_childrens_data" type="button" class="btn btn-primary" >تحميل بيانات ابناء الضامن</button>'
    );

    let relatives_data = `<table style="border-collapse: collapse; width: 99.085%; height: 252px; float: right;" border="1">
<tbody>
<tr style="height: 63px;">
<td style="width: 33.3333%; text-align: right; height: 63px;">صلة القرابة</td>
<td style="width: 33.3333%; text-align: right; height: 63px;">رقم الهاتف</td>
<td style="width: 33.3333%; text-align: right; height: 63px;">اسم احد الاقارب</td>
</tr>
<tr style="text-align: right;">
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
</tr>
<tr style="text-align: right;">
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
</tr>
<tr style="text-align: right;">
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
<td style="width: 33.3333%; height: 63px;">&nbsp;</td>
</tr>
</tbody>
</table>`;

    let commitments = `<table style="border-collapse: collapse; width: 99.6078%; height: 304px; float: right;" border="1">
<tbody>
<tr>
<td style="width: 16.6667%; text-align: right;">تاريخ الانتهاء</td>
<td style="width: 16.6667%; text-align: right;">تاريخ البداية</td>
<td style="width: 16.6667%; text-align: right;">مده القرض</td>
<td style="width: 16.6667%; text-align: right;">قيمة القسط</td>
<td style="width: 16.6667%; text-align: right;">قيمة القرض</td>
<td style="width: 16.6667%; text-align: right;">الجهة المانحة للقرض</td>
</tr>
<tr style="text-align: right;">
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
</tr>
<tr style="text-align: right;">
<td style="width: 16.6667%;">تاريخ الانتهاء</td>
<td style="width: 16.6667%;">المدة</td>
<td style="width: 16.6667%;">قيمة القسط</td>
<td style="width: 16.6667%;">المبلغ</td>
<td style="width: 16.6667%;">المنتج المستهدف</td>
<td style="width: 16.6667%;">جهات اخرى</td>
</tr>
<tr style="text-align: right;">
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
</tr>
<tr style="text-align: right;">
<td style="width: 16.6667%;">اجمالي الالتزامات</td>
<td style="width: 16.6667%;">مصاريف اخرى</td>
<td style="width: 16.6667%;">فاتورة النت</td>
<td style="width: 16.6667%;">فاتورة الغاز</td>
<td style="width: 16.6667%;">فاتورة المياه</td>
<td style="width: 16.6667%;">فاتورة الكهرباء</td>
</tr>
<tr style="text-align: right;">
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
<td style="width: 16.6667%;">&nbsp;</td>
</tr>
</tbody>
</table>`;

    let trade_data = `<table style="border-collapse: collapse; width: 99.673%; height: 216px;" border="1">
<tbody>
<tr style="height: 55px;">
<td style="width: 8.33335%; font-size: 20px;">نوع النشاط التجاري</td>
<td style="width: 8.33335%; font-size: 20px; height: 55px;">صافي الدخل الشهري</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">الدخل الشهري</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">الدخل السنوي</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">قيمة البضاعة</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">رأس المال</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">تاريخ بداية النشاط</td>
</tr>
<tr style="height: 53px;">
<td style="width: 8.33335%; font-size: 20px;">&nbsp;</td>
<td style="width: 8.33335%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
</tr>
<tr style="height: 55px;">
<td style="width: 8.33335%; font-size: 20px;">&nbsp;</td>
<td style="width: 8.33335%; font-size: 20px; height: 55px;">اجمالي الالتزامات</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">المرافق</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">مده الايجار</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">قيمة الايجار</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">اجمالي الاجوز</td>
<td style="width: 16.6667%; font-size: 20px; height: 55px;">عدد العمال</td>
</tr>
<tr style="height: 53px;">
<td style="width: 8.33335%; font-size: 20px;">&nbsp;</td>
<td style="width: 8.33335%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
<td style="width: 16.6667%; font-size: 20px; height: 53px;">&nbsp;</td>
</tr>
</tbody>
</table>`;

    let childrens_data = `
<table style="border-collapse: collapse; width: 97.9739%; height: 360px; float: right;" border="1">
<tbody>
<tr>
<td style="width: 33.3333%;">المؤهل الدراسي</td>
<td style="width: 33.3333%;">اعمار الابناء</td>
<td style="width: 33.3333%;">عدد الابناء&nbsp;</td>
</tr>
<tr>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
</tr>
<tr>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
</tr>
<tr>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
<td style="width: 33.3333%;">&nbsp;</td>
</tr>
</tbody>
</table>
`;

    jQuery('#load_relatives_table').click(function() {
        jQuery('#richtextrelatives_data_ifr').contents().find('body').html(relatives_data);
        jQuery('#richtextrelatives_data_ifr').contents().find('td').css('font-size', '20px');
    });

    jQuery('#load_commitments').click(function() {
        jQuery('#richtextcommitments_ifr').contents().find('body').html(commitments);
        jQuery('#richtextcommitments_ifr').contents().find('td').css('font-size', '20px');
    });

    jQuery('#load_trades_data').click(function() {
        jQuery('#richtextbusiness_data_ifr').contents().find('body').html(trade_data);
        jQuery('#richtextbusiness_data_ifr').contents().find('td').css('font-size', '20px');

    });


    jQuery('#load_customer_childrens_data').click(function() {
        jQuery('#richtextcustomer_childrens_data_ifr').contents().find('body').html(childrens_data);
        jQuery('#richtextcustomer_childrens_data_ifr').contents().find('td').css('font-size', '20px');

    });


    jQuery('#load_grantor_childrens_data').click(function() {
        jQuery('#richtextgrantor_childrens_data_ifr').contents().find('body').html(childrens_data);
        jQuery('#richtextgrantor_childrens_data_ifr').contents().find('td').css('font-size', '20px');

    });

    jQuery('#monthly_amount_id input').attr('readonly', 'true');
    jQuery('#total_installement_amout input').attr('readonly', 'true');
</script>

<script>
    let product_price = jQuery('#order_amount_id input');
    let profit_percentage = jQuery('#order_profit_percentage_id input');
    let installement_months = jQuery('#order_months_count_id input');
    let downpayment_order = jQuery('#downpayment_id input');

    let total_amoutn = jQuery('#total_installement_amout input');
    let monthly_amount = jQuery('#monthly_amount_id input');

    jQuery(product_price).keyup(function() {
        update_total_order();
    });


    jQuery(profit_percentage).keyup(function() {
        update_total_order();
    });


    jQuery(downpayment_order).keyup(function() {
        update_total_order();
    });

    jQuery(installement_months).keyup(function() {
        update_total_order();
    });

    function update_total_order() {

        // console.log('hello');
        product_price_float = parseFloat(product_price.val());
        // console.log('product ' + product_price_float);
        profit_percentage_float = parseFloat(profit_percentage.val());
        // console.log('profit ' + profit_percentage_float);
        installement_months_float = parseFloat(installement_months.val());
        // console.log('months ' + installement_months_float);
        downpayment_order_float = parseFloat(downpayment_order.val());

        let total = (product_price_float - downpayment_order_float) + ((product_price_float - downpayment_order_float) *
            profit_percentage_float / 100);

        let installement_per_month = total / installement_months_float;
        // console.log('the total ' + total);
        total_amoutn.val(total);

        monthly_amount.val(parseFloat(installement_per_month).toFixed(2));
    }

    jQuery('input[name=required_installement]').attr('readonly', 'true');

    let required_installement = jQuery('input[name=required_installement]');
    let required_product_price = jQuery('input[name=product_price]');
    let installement_duration = jQuery('input[name=installement_duration]');
    let downpayment = jQuery('input[name=downpayment]');
    let required_profit_percentage = jQuery('input[name=profit_percentage]');

    jQuery(required_product_price).keyup(function() {
        update_required_installement();
    })

    jQuery(installement_duration).keyup(function() {
        update_required_installement();
    })

    jQuery(downpayment).keyup(function() {
        update_required_installement();
    })

    jQuery(required_profit_percentage).keyup(function() {
        update_required_installement();
    })

    function update_required_installement() {

        let required_installement_float = parseFloat(required_installement.val()) !== NaN ? parseFloat(
            required_installement.val()) : 0;
        let required_product_price_float = parseFloat(required_product_price.val()) !== NaN ? parseFloat(
            required_product_price.val()) : 0;
        let installement_duration_float = parseFloat(installement_duration.val()) !== NaN ? parseFloat(
            installement_duration.val()) : 0;
        let downpayment_float = parseFloat(downpayment.val()) !== NaN ? parseFloat(downpayment.val()) : 0;
        let required_profit_percentage_float = parseFloat(required_profit_percentage.val()) !== NaN ? parseFloat(
            required_profit_percentage.val()) : 0;

        total_price = (required_product_price_float - downpayment_float) + ((required_product_price_float *
            required_profit_percentage_float) / 100);

        result = total_price / installement_duration_float;

        required_installement.val(result);
    }
</script>

{{-- <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"> --}}
{{-- <link rel="stylesheet" href="/resources/demos/style.css"> --}}
{{-- <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> --}}

<script>

    $(function() {
        $('input[type=date]').each(function() {
            // console.log('single date')
            // console.log($(this).parent().children('label'))
            $(this).attr('type','text');
            $(this).attr('class','form-control custom-date-format');
        })

        $(".custom-date-format").datepicker({
            dateFormat: "dd-mm-yy"
        });

        $("input[name=code]").attr('disabled','disabled');
        // $( "#format" ).on( "change", function() {
        //   $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
        // });
    });

    // console.log(['all dates' ])
    // console.log($('input[type=date]'))
</script>

@stop
