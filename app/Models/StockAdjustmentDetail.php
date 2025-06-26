<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockAdjustmentDetail extends Model
{
    protected $fillable = ['adjustment_id', 'product_id', 'qty', 'price'];
}