<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProfileTeacherResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'positions' => json_decode($this->job_title),
            'speciality' => $this->speciality,
            'education' => $this->education,
            'totalExperience' => $this->totalExperience,
            'generalTeachingExperience' => $this->generalTeachingExperience,
        ];
    }
}
