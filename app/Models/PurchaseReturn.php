<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseReturn extends Model
{
    protected $fillable = ['purchase_id', 'supplier_id', 'return_date', 'reason', 'subtotal', 'total_amount'];
}