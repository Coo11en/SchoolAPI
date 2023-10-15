<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;

class StudentResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            $this->user_id,
            $this->name,
            $this->surname,
            $this->patronymic,
            $this->classroom_id
        ];
    }
}
