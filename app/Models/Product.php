<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'price', 'manufacturer_id', 'bom_id', 'product_category_id', 'uom_id', 'created_at', 'updated_at'];
}