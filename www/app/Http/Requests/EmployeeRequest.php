<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'first_name' => 'required',
            'last_name' => 'required',
            'gender' => 'required',
            'email' => 'required|email|unique:customers',
            'mobile_number' => 'required|unique:customers|numeric|digits:10',
            'date_of_birth' => 'required',
            'date_of_anniversary' => 'required',
            'address' => 'required',
            'city' => 'required',
            'pin_code' => 'required|numeric|digits:6',
            'job_type' => 'required',
            'commission_percentage' => 'required_if:job_type,BOTH|required_if:job_type,COMMISSION',
            'salary' => 'required_if:job_type,BOTH|required_if:job_type,SALARIED',
        ];
    }
}
