<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockAdjustment extends Model
{
    protected $fillable = ['adjustment_at', 'user_id', 'remark', 'adjustment_type_id', 'werehouse_id'];
}