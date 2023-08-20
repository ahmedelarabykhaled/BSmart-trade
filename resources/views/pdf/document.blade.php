<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
    <meta charset="utf-8" />
    <title>
        فاتورة قسط رقم {{ $installment_no }}
    </title>

    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            /* line-height: 24px; */
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            /* line-height: inherit; */
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            /* font-size: 45px; */
            /* line-height: 45px; */
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>
</head>

<body>

    <div class="invoice-box">

        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td style="padding: 70px 0px;text-align:right;">

                                رقم الفاتورة: {{ $invoice_no }}<br />
                                تاريخ الفاتورة: {{ date('Y-F-d') }}<br />
                            </td>
                            <td class="title" style="text-align: left;">
                                <?php $admin_favicon = Voyager::setting('admin.bg_image', ''); ?>
                                <img src="{{ Voyager::image($admin_favicon) }}"
                                    style="width: 150px; max-width: 300px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <h2 style="text-align: center;margin:0px; margin-bottom: 25px;">
            فاتورة قسط رقم {{ $installment_no }}
        </h2>
        <table style="text-align: right;border: 1px solid gray;" >


            <tr class="heading">
                <td>العميل</td>

                <td>{{ $customer_name }}</td>
            </tr>

            <tr class="item">
                <td>رقم القسط</td>

                <td>{{ $installment_no }}</td>
            </tr>

            <tr class="item">
                <td>قيمة القسط</td>

                <td>{{ $paid_amount }}</td>
            </tr>
            
            {{-- <tr class="item">
                <td>اجمالي الاقساط الغير مدفوعه</td>

                <td>{{ $total_unpaid_installments }}</td>
            </tr> --}}
            <tr class="item">
                <td>تاريخ الااستحقاق</td>

                <td>{{ $due_date }}</td>
            </tr>

            <tr class="item">
                <td>الغرامة المستحقة</td>

                <td>{{ $penalty_amount }}</td>
            </tr>

            <tr class="item">
                <td>الغرامة المدفوعة</td>

                <td>{{ $installment->paid_penalty }}</td>
            </tr>
            <tr class="item">
                <td>عدد الاقساط المتبقية</td>

                <td>{{ $rest_installments_no }}</td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المستحق للأقساط
                </td>
                <td>
                    {{ $installment->installmentOrder->total_order_amount }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المدفوع للأقساط
                </td>
                <td>
                    {{ $paid_installments }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المبلغ المتبقى للأقساط
                </td>
                <td>
                    {{ $all_installments_amount - $paid_installments }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المبلغ المستحق للغرامات
                </td>
                <td>
                    {{ $all_penalty_amount }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المدفوع للغرامات
                </td>
                <td>
                    {{ $paid_penalty }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المبلغ المتبقى للغرامات
                </td>
                <td>
                    {{ $all_penalty_amount - $paid_penalty }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المستحق للأقساط والغرامات
                </td>
                <td>
                    {{ $all_installments_amount + $all_penalty_amount }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المدفوع للأقساط والغرامات
                </td>
                <td>
                    {{ $paid_installments + $paid_penalty }}
                </td>
            </tr>
            <tr class="item">
                <td>
                    اجمالي المبلغ المتبقى للأقساط والغرامات
                </td>
                <td>
                    {{ $all_installments_amount - $paid_installments + ($all_penalty_amount - $paid_penalty) }}
                </td>
            </tr>
            <tr class="item">
                <td>ملاحظة سداد</td>

                <td>
                    <p>{{ $code }}</p>
                    <p>{{ $note }}</p>
                </td>
            </tr>
            <tr class="item">
                <td>المستلم</td>

                <td>{{ $reciever }}</td>
            </tr>
            <tr>

            </tr>
        </table>

        <footer style="text-align: center; margin: 40px 0px;">
            <small>بي سمارت - B-Smart</small>
            <br>
            <small>
                طنطا - شارع النادي بجوار زهران ماركت امام عيسى موتورز
            </small>
        </footer>
    </div>
</body>

</html>
