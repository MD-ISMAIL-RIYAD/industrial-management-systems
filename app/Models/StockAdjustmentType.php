<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockAdjustmentType extends Model
{
    protected $fillable = ['name', 'factor'];
}