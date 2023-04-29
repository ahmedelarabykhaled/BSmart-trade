@extends('voyager::master')

@section('page_title', 'دفع قسط عميل')

@section('page_header')
    <h1 class="page-title">
        {{-- <i class="{{ $dataType->icon }}"></i> --}}
        دفع قسط للعميل : {{ $installment->customer->name }}
        <a href="{{ url('admin/customer-installments') }}" class="return-to-list">{{ __('translations.go_back') }}</a>
    </h1>
@stop


@section('content')
    <div class="page-content">

        @include('voyager::alerts')

        <div class="page-content browse container-fluid">
            <div class="alerts">
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <h5>بيانات القسط</h5>
                            <div class="form-group py-3">
                                @if (isset($installment->id))
                                    <table class="table table-striped">
                                        <tbody>
                                            @if ($installment->status == 'paid')
                                                <tr>
                                                    <td>رقم الفاتورة</td>
                                                    <td>
                                                        {{ $installment->bill_no }}
                                                    </td>
                                                </tr>
                                            @endif
                                            <tr>
                                                <td>
                                                    رقم القسط
                                                </td>
                                                <td>
                                                    {{ $installment->installment_id }}
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    تاريخ استحقاق القسط
                                                </td>
                                                <td>
                                                    {{ $installment->due_date }}
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>المبلغ الاجمالي المطلوب دفعه</td>
                                                <td>
                                                    {{ $installment->amount + $installment->penalty_amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    مبلغ القسط
                                                </td>
                                                <td>
                                                    {{ $installment->amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    المبلغ المدفوع للقسط
                                                </td>
                                                <td>
                                                    {{ $installment->installment_amount_paid }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>عدد ايام التأخير</td>
                                                <td>
                                                    {{ $installment->penalty_days }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>مبلغ الغرامة</td>
                                                <td>
                                                    {{ $installment->penalty_amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>مبلغ العرامة المدفوع</td>
                                                <td>
                                                    {{ $installment->paid_penalty }}
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>المبلغ الاجمالي المدفوع</td>
                                                <td>
                                                    {{ $installment->total_paid }}
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    اجمالي المستحق للأقساط
                                                </td>
                                                <td>
                                                    {{ $installment->installmentOrder->total_order_amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المدفوع للأقساط
                                                </td>
                                                <td>
                                                    {{ $paid_installments }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المبلغ المتبقى للأقساط
                                                </td>
                                                <td>
                                                    {{ $all_installments_amount - $paid_installments }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المبلغ المستحق للغرامات
                                                </td>
                                                <td>
                                                    {{ $all_penalty_amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المدفوع للغرامات
                                                </td>
                                                <td>
                                                    {{ $paid_penalty }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المبلغ المتبقى للغرامات
                                                </td>
                                                <td>
                                                    {{ $all_penalty_amount - $paid_penalty }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المستحق للأقساط والغرامات
                                                </td>
                                                <td>
                                                    {{ $all_installments_amount + $all_penalty_amount }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المدفوع للأقساط والغرامات
                                                </td>
                                                <td>
                                                    {{ $paid_installments + $paid_penalty }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    اجمالي المبلغ المتبقى للأقساط والغرامات
                                                </td>
                                                <td>
                                                    {{ $all_installments_amount - $paid_installments + ($all_penalty_amount - $paid_penalty) }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>تاريخ الدفع</td>
                                                <td>
                                                    {{ $installment->paid_penalty_date }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ملاحظة الدفع</td>
                                                <td>
                                                    {{ $installment->notes }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>حالة القسط</td>
                                                <td>
                                                    {{ $installment->status }}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <hr>
                                    <hr>
                                    <div class="form-group">
                                        <h5>المدفوعات للقسط</h5>
                                        @if ($installment_payments->count() > 0)
                                            <table class="table table-stripped table-bordered">
                                                <thead>
                                                    <th>رقم القسط</th>
                                                    <th>المبلغ المدفوع</th>
                                                    <th>تاريخ الدفع</th>
                                                    <th>
                                                        ملاحظة
                                                    </th>
                                                    <th>
                                                        طباعة
                                                    </th>
                                                </thead>
                                                <tbody>



                                                    @foreach ($installment_payments as $payment)
                                                        <tr>

                                                            <td>
                                                                {{ $payment->installment->installment_id }}
                                                            </td>

                                                            <td>
                                                                {{ $payment->amount }}
                                                            </td>

                                                            <td>
                                                                {{ $payment->created_at }}
                                                            </td>

                                                            <td>
                                                                {{ $payment->note }}
                                                            </td>

                                                            <td>
                                                                <form
                                                                    action="{{ url('admin/print_receipt/' . $payment->id) }}"
                                                                    method="post" target="_blank">
                                                                    @csrf
                                                                    <button type="submit" class="btn btn-primary">طباعة
                                                                        ايصال</button>
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    @endforeach


                                                </tbody>
                                            </table>
                                        @else
                                            <p class="text-center">لا توجد مدفوعات </p>
                                        @endif
                                    </div>
                                    @if ($installment->status !== 'paid')
                                        <hr>
                                        <hr>
                                        <h5>دفع القسط </h5>
                                        <form action="{{ route('pay_installment', $installment->id) }}" method="post">
                                            @csrf
                                            <label for="">مبلغ الغرامة المراد دفعه</label>
                                            <input type="number" name="penalty_amount" class="form-control" required
                                                step="any" min="0"
                                                value="{{ $installment->penalty_amount - $installment->paid_penalty }}">
                                            <label for="">مبلغ القسط المراد دفعه</label>
                                            <input type="number" name="installment_amount" class="form-control" required
                                                step="any" min="0"
                                                value="{{ $installment->amount - $installment->installment_amount_paid }}"
                                                max="{{ $installment->amount - $installment->installment_amount_paid }}">
                                            <label for="">اجمالي المبلغ المدفوع</label>
                                            <input type="number" name="total_amount" readonly class="form-control" required
                                                value="{{ $installment->penalty_amount - $installment->paid_penalty + $installment->amount - $installment->installment_amount_paid }}">
                                            <label for="">ملاحظة</label>
                                            <textarea name="notes" class="form-control" cols="30" rows="10"></textarea>
                                            <button type="submit" class="btn btn-success">دفع</button>
                                        </form>
                                    @else
                                        <form action="{{ url('admin/print_pill/' . $installment->id) }}" method="post"
                                            target="_blank">
                                            @csrf
                                            <button class="btn btn-primary" type="submit">
                                                طباعة الفاتورة
                                            </button>
                                        </form>
                                    @endif
                                @else
                                    <b class="text-center">لا يوجد قسط</b>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @stop

    @section('javascript')

        <script>
            let penalty_amount = '';
            let installment_amount = '';
            jQuery('input[name=penalty_amount],input[name=installment_amount]').keyup(function() {
                penalty_amount = jQuery('input[name=penalty_amount]').val() == 'undefined' ? 0 : jQuery(
                    'input[name=penalty_amount]').val();
                installment_amount = jQuery('input[name=installment_amount]').val();

                penalty_amount_float = parseFloat(penalty_amount);
                installment_amount_float = parseFloat(installment_amount);
                jQuery('input[name=total_amount]').val(penalty_amount_float + installment_amount_float);
            })
        </script>

    @stop
