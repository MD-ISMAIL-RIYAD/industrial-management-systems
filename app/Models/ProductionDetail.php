<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductionDetail extends Model
{
    protected $fillable = ['production_id', 'product_id', 'qty', 'uom_id', 'cost'];
}