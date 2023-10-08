<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProfileUserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $role = '';
        $result = null; ;
//        dd($user->name())

        if (!is_null($this->teachers)) {
            $role = 'Teacher';
            $result = [
                'profile' => new ProfileTeacherResource($this->teachers),
                'classroomsList' => ProfileClassroomResource::collection($this->teachers->classrooms)
            ] ;
        }
        if (!is_null($this->students)) {
            $role = 'Student';
            $result = $this->students;
        }
        if (!is_null($this->parents)) {
            $role = 'Parent';
            $result = ProfileStudentResource::collection($this->parents->students);
        }
        return [
            'email' => $this->email,
            'phone' => $this->phone,
            'name' => $this->name,
            'role' => $role,
            'info' => $result
        ];
    }
}
