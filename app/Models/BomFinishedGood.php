<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BomFinishedGood extends Model
{
    protected $fillable = ['item_id', 'qty', 'cost', 'bom_id', 'uom_id'];
}