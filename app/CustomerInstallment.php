<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CustomerInstallment extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'customer_id', 'installment_id', 'amount', 'due_date', 'order_id', 'status',
        'paid_penalty', 'paid_penalty_date', 'notes', 'bill_no', 'user_id', 'total_paid',
        'installment_amount_paid'
    ];

    public function installmentOrder()
    {
        return $this->hasOne(Order::class, 'id', 'order_id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
