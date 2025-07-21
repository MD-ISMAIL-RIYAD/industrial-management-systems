<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = ['invoice_number', 'order_id', 'customer_id', 'invoice_date', 'subtotal', 'tax_amount', 'discount_amount', 'total_amount', 'paid_amount', 'payment_status', 'status', 'created_at', 'updated_at'];
}