<?php

declare(strict_types=1);

namespace App\Http\Resources;

use App\Models\Day;
use App\Models\Subject;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProfileScheduleResource extends JsonResource
{

    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
// подготовка итогового массыва расписаний
        $schedules = $this->schedules->map(function ($item){
            return (object)[
                'week_day' => Day::find($item->day_id)->name,
                'call_schedule_id' =>$item->call_schedule_id,
                'name_subject' => Subject::find($item->subject_id)->name_subject
            ];
        });
// приведение массива расписаний к виду, заявленному фронтом
        $frontViewArr = [];
        foreach ($schedules as $item) {
            $frontViewArr[$item->week_day][$item->call_schedule_id] = $item->name_subject;
        }
        $finalView = [];
        foreach ($frontViewArr as $key => $item) {
            $finalView[] = [
                'dayName' => $key,
                'lessons' => $item
            ];
        }
        return $finalView;
    }
}
