<?php

declare(strict_types=1);

namespace App\Http\Requests\Chapters;

use App\Enums\NewsStatus;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Enum;

class Update extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
    public function rules(): array
    {
        return [
            'slug' => ['required', 'string', 'max:50'],
            'chapterTitle' => ['required', 'string', 'max:255'],
            'status' => ['required', new Enum(NewsStatus::class)]
        ];
    }
}
