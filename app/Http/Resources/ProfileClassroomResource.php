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
//        return ['listStudents' => $this->students];
        return [
            'className' => $this->name,
            'classNumber' => $this->cabinet->number,
            'listStudents' => $this->students->map(function ($item, $key) {
                    if (is_null($item->parent)) {
                        return [
                            'studentName' => $item->surname . ' ' . $item->name . ' ' . $item->patronymic,
                            'parents' => $item->parent
                        ];
                    } else {
                        return [
                            'studentName' => $item->surname . ' ' . $item->name . ' ' . $item->patronymic,
                            'parents' => $item->parent->map(function ($item, $key) {
                                return (object)[
                                    'parentName' => $item->surname . ' ' . $item->name . ' ' . $item->patronymic,
                                    'parentPhone' => $item->user->phone
                                ];
                            })
                        ];
                    }
            })
        ];
    }
}
