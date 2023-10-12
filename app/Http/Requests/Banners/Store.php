<?php

namespace App\Http\Requests\Banners;

use Illuminate\Foundation\Http\FormRequest;

class Store extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'slug' => ['required', 'string', 'max:50'],
            'bannerTitle' => ['required', 'string', 'max:255'],
            'img' => ['required', 'string', 'max:255'],
            'ref' => ['required', 'string', 'max:255']
        ];
    }
}
