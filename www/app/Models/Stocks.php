<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stocks extends Model
{
    use HasFactory;
    protected $table="stocks";
    protected $fillable=[
        'product_id',
        'attribute_id',
        'quantity',
        'min_quantity',
        'price',
        'purchase_price',
        'purchased_date',
        'created_at',
        'updated_at'
    ];
}
