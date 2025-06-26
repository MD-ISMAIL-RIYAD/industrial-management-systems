<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MoneyReceipt extends Model
{
    protected $fillable = ['created_at', 'updated_at', 'customer_id', 'remark', 'receipt_total', 'discount', 'vat'];
}