<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CustomerPayment extends Model
{
    protected $fillable = ['amount', 'user_id', 'order_installment_id','customer_id'];
}
