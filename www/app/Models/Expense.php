<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
    use HasFactory;
    protected $table = 'expenses';
    protected $fillable=[
        'expenses_name',
        'date',
        'amount',
        'created_at',
        'updated_at'
    ];
}
