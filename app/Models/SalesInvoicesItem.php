<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SalesInvoicesItem extends Model
{
    protected $fillable = ['sales_invoice_id', 'product_id', 'quantity', 'unit_price', 'total_price'];
}