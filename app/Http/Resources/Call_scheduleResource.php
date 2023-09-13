<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Call_scheduleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'call_namber' => $this->call_number,
            'start_time' => $this->start_time,
            'lesson_time' => $this->lesson_time,
            'subjects' => $this->subjects
        ];
    }
}
