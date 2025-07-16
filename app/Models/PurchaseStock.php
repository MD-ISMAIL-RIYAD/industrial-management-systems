<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseStock extends Model
{
    protected $fillable = ['purchase_id', 'item_id', 'warehouse_id', 'qty', 'unit_id', 'created_at', 'updated_at'];
}