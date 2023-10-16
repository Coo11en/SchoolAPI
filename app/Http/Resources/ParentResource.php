<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;

class ParentResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // $fio = $this->surname . ' ' . $this->name . ' ' .  $this->patronymic;
        return [
            $this->user_id,
            $this->name,
            $this->surname,
            $this->patronymic,
            //'FIO' => $fio
        ];
    }
}
