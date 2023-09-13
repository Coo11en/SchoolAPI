<?php

namespace App\Http\Resources;

use App\Models\Call_schedule;
use App\Models\Subject;
use Carbon\Carbon;
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
        $lesson = SubjectResource::collection($this->subjects);
        $schedules = ScheduleResource::collection($this->schedules);
        $daySchedules = [];
        foreach ($schedules as $schedule) {
            $daySchedules[] = [
                Call_schedule::find($schedule->call_schedule_id)->get(),
                Subject::find($schedule->subject_id)->get()
            ];
        }


        return [
            'dayName' => $this->name,
//            'schedules' => $schedules
//            'lessons' => $resultArr
//                'lessons' => $this->subjects,
//            'subj' => $this->call_schedules
//                     'lessons' => $lesson,
            'callSchedules' => $arr
//            'call_schedules' => Call_scheduleResource::collection($this->call_schedules)
        ];
    }
}
