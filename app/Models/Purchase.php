<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    protected $fillable = ['supplier_id', 'purchase_date', 'delivery_date', 'shipping_address', 'purchase_total', 'paid_amount', 'remark', 'status_id', 'discount', 'vat', 'created_at', 'updated_at'];
}