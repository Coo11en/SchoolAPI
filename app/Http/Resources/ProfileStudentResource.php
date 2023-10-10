<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProfileStudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'name' => $this->name.' '.$this->surname.' '.$this->patronymic,
            'classroom' => [
                'className' => $this->classroom->name,
                'classNumber' => $this->classroom->cabinet->number,
            ],
            'classroomTeacher' => [
                'FIO' => $this->classroom->teacher->surname.' '
                    .$this->classroom->teacher->name.' '
                    .$this->classroom->teacher->patronymic,
                'positions' => json_decode($this->classroom->teacher->job_title),
                'tel' => $this->classroom->teacher->user->phone,
                'email' => $this->classroom->teacher->user->email,
            ],
            'schedules' => new ProfileScheduleResource($this->classroom)
        ];
    }
}
