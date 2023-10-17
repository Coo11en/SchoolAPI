<?php

declare(strict_types=1);

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TeachersResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $user = new UserResource($this->users);
        return [
            'name' => $this->surname.' '.$this->name.' '.$this->patronymic,
            'post' => implode(',', json_decode($this->job_title, true)),
            'speciality' => $this->speciality,
            'education' => $this->education,
            'totalExperience' => $this->totalExperience,
            'generalTeachingExperience' => $this->generalTeachingExperience,
            'tel' => $user->resource->phone,
            'email' => $user->resource->email,
            'photo' => $user->avatar,
            'qualification' => $this->qualification,
            'isAdministration' => boolval($this->isAdministration),
        ];
    }
}
