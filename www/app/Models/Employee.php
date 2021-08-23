<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $table="employees";
    protected $fillable=[
      'first_name',
      'last_name',
      'gender',
      'email',
      'mobile_number',
      'date_of_birth',
      'date_of_anniversary',
      'address',
      'city',
      'pin_code',
      'job_type',
      'commission_percentage',
      'salary',
      'commission',
      'created_at',
      'updated_at'
    ];
}
