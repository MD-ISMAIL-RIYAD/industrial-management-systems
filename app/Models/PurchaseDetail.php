<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseDetail extends Model
{
    protected $fillable = ['purchase_id', 'product_id', 'qty', 'price', 'vat', 'discount', 'created_at', 'updated_at'];
}