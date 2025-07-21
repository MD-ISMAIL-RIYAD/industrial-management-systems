<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    protected $fillable = ['production_datetime', 'bom_id', 'warehouse_id', 'section_id'];
}