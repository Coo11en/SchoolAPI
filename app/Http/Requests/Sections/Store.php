<?php

declare(strict_types=1);

namespace App\Http\Requests\Sections;

use App\Enums\NewsStatus;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Enum;

class Store extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'sectionTitle' => ['required', 'string', 'min:3', 'max:255'],
            'sectionText' => ['required', 'text'],
            'sequence' => ['integer'],
            'status' => ['required', new Enum(NewsStatus::class)]
        ];
    }
}
