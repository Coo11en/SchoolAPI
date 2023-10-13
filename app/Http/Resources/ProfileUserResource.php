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
                $teacher = $this->teacher;
                return [
                    'role' => $roleName->name,
                    'profile' => new ProfileTeacherResource($teacher),
                    'listClassrooms' => ProfileClassroomResource::collection($teacher->classrooms)
                ];
            case 'Студент' :
                $classroom = $this->student->classroom;
                $teacher = $classroom->teacher;
                return [
                    'role' => $roleName->name,
                    'nameTeacher' => $teacher->surname.' '
                        .$teacher->name.' '
                        .$teacher->patronymic,
                    'classroomNumber' => $classroom->cabinet->number,
                    'classroomName' => $classroom->name,
                    'listClassmates' => $classroom->students->map(function ($item, $key){
                        return $item->surname.' '.$item->name.' '.$item->patronymic;
                    }),
                    'days' => new ProfileScheduleResource($classroom)
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
