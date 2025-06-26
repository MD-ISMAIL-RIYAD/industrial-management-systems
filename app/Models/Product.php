<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'offer_price', 'manufacturer_id', 'regular_price', 'photo', 'product_category_id', 'product_section_id', 'is_featured', 'is_brand', 'uom_id', 'weight', 'barcode', 'created_at', 'updated_at', 'product_type_id', 'product_unit_id'];
}