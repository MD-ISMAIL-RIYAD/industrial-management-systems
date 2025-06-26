<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['customer_id', 'order_date', 'delivery_date', 'shipping_address', 'order_total', 'paid_amount', 'remark', 'status_id', 'discount', 'vat', 'created_at', 'updated_at', 'table_id'];
}