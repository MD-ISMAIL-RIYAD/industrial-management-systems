<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bom extends Model
{
    protected $fillable = ['code', 'name', 'product_id', 'qty', 'labour_cost', 'date', 'remark'];
}