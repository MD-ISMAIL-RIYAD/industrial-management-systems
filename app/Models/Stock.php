<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    public $timestamps = false;
    protected $fillable = ['product_id', 'qty', 'transaction_type_id', 'remark', 'created_at', 'warehouse_id', 'product_type', 'product_name'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
