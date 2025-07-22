<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = ['bom_id', 'warehouse_id', 'uom_id', 'created_at', 'updated_at', 'price', 'product_name', 'manufacturer_id', 'product_category_id'];
}