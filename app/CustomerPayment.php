<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CustomerPayment extends Model
{
    protected $fillable = ['amount', 'user_id', 'order_installment_id','customer_id','note'];

    public function installment(){
        return $this->belongsTo(CustomerInstallment::class,'order_installment_id','id');
    }

    public function customer(){
        return $this->belongsTo(Customer::class,'customer_id','id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}
