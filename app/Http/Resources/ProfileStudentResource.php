<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;

class ProfileStudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $classroom = $this->classroom;
        $teacher = $classroom->teacher;
        $user = $teacher->user;
        $avatar = $this->user->avatar;
        return [
            'name' => $this->surname.' '.$this->name.' '.$this->patronymic,

            'imgSrc' => (!empty($avatar))
                        ? Storage::url($avatar)
                        : false,

            'classroom' => [
                'className' => $classroom->name,
                'classNumber' => $classroom->cabinet->number,
            ],
            'classroomTeacher' => [
                'FIO' => $teacher->surname.' '
                    .$teacher->name.' '
                    .$teacher->patronymic,
                'positions' => json_decode($teacher->job_title),
                'tel' => $user->phone,
                'email' => $user->email,
            ],
            'days' => new ProfileScheduleResource($classroom)
        ];
    }
}
