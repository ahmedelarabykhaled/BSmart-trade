<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CustomerInstallment extends Model
{
    use SoftDeletes;

    protected $fillable = ['customer_id','amount' ,'due_date', 'order_id','status','paid_penalty', 'paid_penalty_date' ];

    public function installmentOrder(){
        return $this->hasOne(Order::class,'id','order_id');
    }
}
