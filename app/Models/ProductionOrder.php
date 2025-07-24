<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductionOrder extends Model
{
    protected $fillable = ['production_order_number', 'product_id', 'warehouse_id', 'quantity', 'status', 'scheduled_date', 'started_at', 'completed_at', 'remarks', 'created_at', 'updated_at'];
}