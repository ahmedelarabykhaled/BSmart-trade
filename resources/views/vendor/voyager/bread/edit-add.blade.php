@php
    $edit = !is_null($dataTypeContent->getKey());
    $add = is_null($dataTypeContent->getKey());
@endphp

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
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
        .attr('disabled', 'true');

    // jQuery('input[name=final_customer_tatal_income]').attr('disabled','true');


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
    jQuery('.select2-ajax').change(function() {
        let customer_id = jQuery(this).val();
        console.log('customer id ' + customer_id);
        if (customer_id !== '' && customer_id !== null) {
            $.ajax({
                url: "{{ URL::to('/') }}/customers/" + customer_id,
                success: function(result) {
                    console.log(result);
                    $("#div1").html(result);
                    let div_id = '{{ rand(0000,9999) }}';
                    jQuery('.select2-ajax').parent('.form-group').after('#customer_'+div_id);
                    jQuery('#customer_'+div_id).html(result);
                }
            });
        }
    });
</script>

@stop
