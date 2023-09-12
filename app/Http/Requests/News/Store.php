<?php

declare(strict_types=1);

namespace App\Http\Requests\News;

use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;
use App\Enums\NewsStatus;
use Illuminate\Validation\Rules\Enum;
use JetBrains\PhpStorm\ArrayShape;

class Store extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<ValidationRule|array|string>
     */
    #[ArrayShape([
        'news_categories' => "string[]",
        'news_categories.*' => "string[]",
        'title' => "string[]",
        'author' => "string[]",
        'image' => "string[]",
        'description' => "string[]"
    ])] public function rules(): ValidationRule|array|string
    {
        return [
            'news_categories' => ['required', 'array'],
            'news_categories.*' => ['exists:categories,id'],
            'title' => ['required', 'string', 'min:7', 'max:200'],
            'author' => ['nullable', 'string', 'min:2', 'max:50'],
            'image' => ['sometimes'],
            'status' => ['required', new Enum(NewsStatus::class)],
            'description' => ['nullable', 'string', 'max:3000'],
//            'sources' => ['nullable', 'array'],
//            'sources.*' => ['exists:sources,id'],
        ];
    }

    public function getCategories(): array
    {
        return $this->validated('news_categories');
    }

//    public function getSources(): array
//    {
//        return $this->validated('sources');
//    }

    #[ArrayShape([
        'categories' => "string",
        'title' => "string",
        'author' => "string",
        'image' => "string",
        'status' => "string",
        'description' => "string",
        'sources' => "string"
    ])] public function attributes(): array
    {
        return [
            'categories' => 'Категория',
            'title' => 'Наименование',
            'author' => 'Автор',
            'image' => 'Изображение',
            'status' => 'Статус',
            'description' => 'Описание',
            'sources' => 'Источник новости',
        ];
    }
}
