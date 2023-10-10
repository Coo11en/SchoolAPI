<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProfileClassroomResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'className' => $this->name,
            'classNumber' => $this->cabinet->number,
            'listStudents' => $this->students->map(function ($item, $key) {
                return [
                    $item->surname.' '.$item->name.' '.$item->patronymic,
                    $item->parents->map(function ($item, $key){
                        return [
                            $item->surname.' '.$item->name.' '.$item->patronymic,
                            $item->user->phone
                        ];
                    })
                ];
            })
        ];
    }
}
