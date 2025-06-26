<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = ['customer_id', 'created_at', 'remark', 'payment_term', 'updated_at', 'invoice_total', 'paid_total', 'previous_due'];
}