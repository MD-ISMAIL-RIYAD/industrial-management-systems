<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SalesInvoice extends Model
{
    protected $fillable = ['invoice_number', 'customer_id', 'total_amount', 'discount', 'grand_total', 'created_by', 'created_at', 'updated_at'];
}