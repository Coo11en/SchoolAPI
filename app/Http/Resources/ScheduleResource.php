<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ScheduleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
//        $array = [
//
//        ];
//
//        return    array_diff($array, array(''));
        return [
            'subject_id' => $this->subject_id,
            'call_schedule_id' => $this->call_schedule_id
        ];
    }
}
