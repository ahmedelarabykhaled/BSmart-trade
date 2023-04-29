<?php

namespace App\Http\Controllers;

// use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use PDF;

class PdfController extends Controller
{
    public function index()
    {
        $data = [
            // 'foo' => 'bar'
            'invoice_no' => '878787',
            'installment_no' => '0404040',
            'customer_name' => 'ابراهيم محمد عيسي',
            'paid_amount' => 550,
            'rest_installments_no' => '30',
            'total_unpaid_installments' => '43',
            'penalty_amount' => '90',
            'paid_penalty' => 50,
            'due_date' => '20-02-2023',
            'note' => 'لا توجد ملاحظات',
            'reciever' => 'احمد'
        ];

        $pdf = PDF::loadView('pdf.document', $data);

        return new Response($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' =>  'inline; filename="invoice.pdf"',
        ]);

        // return $pdf->stream('document.pdf');
        // return $pdf->download('document.pdf');
    }

    public function print_receipt(){
        $data = [
            'payment_id' => 345,
            'customer' => 'احمد خالد السيد',
            'amount'   => 500,
            'note' => 'سداد الغرامة',
            'reciever' => 'المدير'
        ];

        // return view('pdf.receipt',$data);
        $pdf = PDF::loadView('pdf.receipt',$data);

        return new Response($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' =>  'inline; filename="receipt.pdf"',
        ]);
    }
}
