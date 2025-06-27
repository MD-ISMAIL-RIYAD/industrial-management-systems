<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseInvoice extends Model
{
    protected $fillable = ['invoice_number', 'supplier_id', 'total_amount', 'discount', 'grand_total', 'created_by', 'created_at'];
}