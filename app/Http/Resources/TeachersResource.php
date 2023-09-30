<?php

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
        $photos = new PhotoResource($this->photos->first());
        $users = new UserResource($this->users);

        return [
            'name' => $this->surname.' '.$this->name.' '.$this->patronymic,
            'post' => json_decode($this->job_title),
            'speciality' => $this->speciality,
            'education' => $this->education,
            'totalExperience' => $this->totalExperience,
            'generalTeachingExperience' => $this->generalTeachingExperience,
            'tel' => $users->resource->phone,
            'email' => $users->resource->email,
            'photo' => $photos->resource->img,
            'qualification' => $this->qualification,
            'isAdministration' => boolval($this->isAdministration),
        ];
    }
}
