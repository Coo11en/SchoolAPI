<?php

declare(strict_types=1);

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
        $call_schedule = new Call_scheduleResource($this->callSchedule);
        return [
            'nameSubject' => new SubjectResource($this->subject),
            'callNumber' => $call_schedule->call_number

        ];
    }
}
