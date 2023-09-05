<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class LessonResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $array = [
            $this->lesson1,
            $this->lesson2,
            $this->lesson3,
            $this->lesson4,
            $this->lesson5,
            $this->lesson6,
        ];

        return    array_diff($array, array(''));
    }
}
