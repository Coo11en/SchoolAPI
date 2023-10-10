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
        $result =[];
        $roles = $this->roles;
        foreach ($roles as $role) {
            $result[] = $this->getProfileByRole($role);
        }
        $roles = RoleResource::collection($roles);

        return [
            'email' => $this->email,
            'phone' => $this->phone,
            'name' => $this->name,
            'isTeacher' => $roles->map(function ($item, $key) {
                return $item->name;
            })->contains('Учитель'),
            'isParent' => $roles->map(function ($item, $key) {
                return $item->name;
            })->contains('Родитель'),
            'isStudent' => $roles->map(function ($item, $key) {
                return $item->name;
            })->contains('Студент'),
            'info' => $result
        ];
    }
    public function getProfileByRole($roleName)
    {
        switch($roleName->name) {
            case 'Учитель':
                return [
                    'role' => $roleName->name,
                    'profile' => new ProfileTeacherResource($this->teacher),
                    'listClassrooms' => ProfileClassroomResource::collection($this->teacher->classrooms)
                ];
            case 'Студент' :
                return [
                    'role' => $roleName->name,
                    'nameTeacher' => $this->student->classroom->teacher->surname.' '
                        .$this->student->classroom->teacher->name.' '
                        .$this->student->classroom->teacher->patronymic,
                    'classroomNumber' => $this->student->classroom->cabinet->number,
                    'classroomName' => $this->student->classroom->name,
                    'listClassmates' => $this->student->classroom->students->map(function ($item, $key){
                        return $item->surname.' '.$item->name.' '.$item->patronymic;
                    }),
                    'schedules' => new ProfileScheduleResource($this->student->classroom)
                ];
            case 'Родитель' :
                return [
                    'role' => $roleName->name,
                    'listStudents' =>
//                        (ProfileStudentResource::collection($this->parents->students)) ?
                            ProfileStudentResource::collection($this->parent->students)
//                            : null,
                ];
        }
    }
}
