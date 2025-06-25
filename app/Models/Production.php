<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = ['production_datetime', 'bom_id', 'labor_cost', 'manager_id', 'total_cost'];
}