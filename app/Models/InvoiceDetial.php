<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InvoiceDetial extends Model
{
    protected $fillable = ['invoice_id', 'service_id', 'unit', 'price', 'discount', 'vat'];
}