<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Arr;

class DayResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {

        $schedules = ScheduleResource::collection($this->schedules);
        $resultArr = $schedules[0] ;

        return [
            'dayName' => $this->name,
            'lessons' => $resultArr
        ];
    }
}
