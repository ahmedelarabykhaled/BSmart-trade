<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
    <meta charset="utf-8" />
    <title>
        سند قبض رقم {{ $payment_id }}
    </title>

    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
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
            line-height: 45px;
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

                                رقم السند: {{ $payment_id }}<br />
                                تاريخ السند: {{ date('Y-F-d') }}<br />
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
        <h2 style="text-align: center;">
            سند قبض رقم {{ $payment_id }}
        </h2>
        <table style="text-align: right;border: 1px solid gray;">

            <tr class="heading">
                <td style="width: 35%;">
                    اتسلمت من السيد / السيدة 
                </td>

                <td>{{ $customer }}</td>
            </tr>

            <tr class="item">
                <td>
                    مبلغ وقدره
                </td>

                <td>{{ $amount }} جنيه مصري</td>
            </tr>
            
            <tr class="item">
                <td>
                    وذلك مقابل
                </td>

                <td>{{ $note }}</td>
            </tr>

            <tr>
                <td>
                    المستلم
                </td>
                <td>
                    {{ $reciever }}
                </td>
            </tr>

        </table>

        <footer style="text-align: center; margin: 50px 0px;">
            <small>بي سمارت - B-Smart</small>
            <br>
            <small>
                طنطا - شارع النادي بجوار زهران ماركت امام عيسى موتورز
            </small>
        </footer>
    </div>
</body>

</html>
