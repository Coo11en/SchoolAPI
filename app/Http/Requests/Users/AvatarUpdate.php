<?php

declare(strict_types=1);

namespace App\Http\Requests\Users;

use Illuminate\Foundation\Http\FormRequest;

class AvatarUpdate extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => ['nullable', 'string', 'max:50'],
            'email' => ['nullable', 'string', 'max:250', 'unique:users,email'],
            'image' => ['sometimes', 'image', 'mimes:jpg,bmp,png'],
            'password' => ['nullable'],
            'password-confirm' => ['nullable'],
        ];
    }

    public function messages(): array
    {
        return [
            'required' => 'Нужно заполнить поле :attribute',
        ];
    }

    public function attributes(): array
    {
        return [
            'name' => 'ФИО',
            'email' => 'Электронный адрес',
            'image' => 'Изображение',
            'password' => 'Пароль',
            'password-confirm' => 'Повторение пароля',
        ];
    }
}
