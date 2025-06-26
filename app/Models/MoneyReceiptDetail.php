<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MoneyReceiptDetail extends Model
{
    protected $fillable = ['money_receipt_id', 'product_id', 'price', 'qty', 'vat', 'discount'];
}