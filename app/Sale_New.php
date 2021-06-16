<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale_New extends Model
{
    protected $table = 'sales_new';

    protected $fillable = ['po_no','total_amount','date'];


    protected $hidden = ['created_at','updated_at'];

    // public function product()
    // {
    //     return $this->belongsTo(Product::class);
    // }

    // public function customer()
    // {
    //     return $this->belongsTo(Customer::class);
    // }
}