<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseInvoicesItem extends Model
{
    protected $fillable = ['purchase_invoice_id', 'product_id', 'quantity', 'unit_price', 'total_price'];
}