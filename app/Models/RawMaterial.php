<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RawMaterial extends Model
{
    protected $fillable = ['name', 'code', 'description', 'unit_id', 'category_id', 'created_at', 'updated_at'];
}