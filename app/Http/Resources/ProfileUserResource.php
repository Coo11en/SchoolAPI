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
//        $role = '';
        $result =[];
//        dd($user->name())
        foreach ($this->roles as $role) {
            $result[] = $this->getProfileByRole($role);
        }
//        if (!is_null($this->teachers)) {
//            $role = 'Teacher';
//            $result = [
//                'profile' => new ProfileTeacherResource($this->teachers),
//                'classroomsList' => ProfileClassroomResource::collection($this->teachers->classrooms)
//            ] ;
//        }
//        if (!is_null($this->students)) {
//            $role = 'Student';
//            $result = $this->students;
//        }
//        if (!is_null($this->parents)) {
//            $role = 'Parent';
//            $result = ProfileStudentResource::collection($this->parents->students);
//        }
        return [
            'email' => $this->email,
            'phone' => $this->phone,
            'name' => $this->name,
//            'role' => $this->roles->first()->name,
            'info' => $result
        ];
    }
    public function getProfileByRole($roleName)
    {
        switch($roleName->name) {
            case 'Учитель':
                return [
                    'role' => $roleName->name,
                    'profile' => new ProfileTeacherResource($this->teachers),
                    'classroomsList' => ProfileClassroomResource::collection($this->teachers->classrooms)
                ];
            case 'Студент' :
                return [
                    'role' => $roleName->name,
                    'profile' => $this->students,
                ];
            case 'Родитель' :
                return [
                    'role' => $roleName->name,
                    'profile' =>
//                        (ProfileStudentResource::collection($this->parents->students)) ?
                            ProfileStudentResource::collection($this->parents->students)
//$this->parents->students
//                            : null,
                ];
        }
    }
}
