<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Model
{
    protected $hidden = ['governorate_id'];
    protected $fillable = ['code'];
    use SoftDeletes;

    public function orders(){
        return $this->hasMany(Order::class,'customer_id','id');
    }
}
