<?php

namespace App\Http\Middleware;

use App\CustomerInstallment;
use Closure;
use DateTime;

class UpdateInstallmetns
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        // $installments = CustomerInstallment::get();
        // foreach ($installments as $installment) {

        //     if ($installment->status !== 'paid') {
        //         $date1 = new DateTime($installment->due_date);
        //         $today = new DateTime('today');
        //         if ($today > $date1) {
        //             $days  = $today->diff($date1)->format('%a');
        //             CustomerInstallment::where('id', $installment->id)->update(['penalty_amount' => $days * 10,'penalty_days' => $days]);
        //         } else {
        //             $days = 0;
        //         }

                // return $days;
                // pretty_print(['installments' => $installment->due_date, 'days' => $days]);
        //     }
        // }
        return $next($request);
    }
}
