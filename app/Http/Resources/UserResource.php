<?php

namespace App\Http\Resources;

use App\Models\Parents;
use App\Models\Student;
use App\Models\Teacher;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $fio = '';
        switch($this->roles->first()->name) {
            case 'Учитель' :
                (empty(Teacher::find($this->id)) == 0) ?
                $fio = $this->teacher->first()->surname.' '.$this->teacher->first()->name
                : $fio='';
                break;
            case 'Студент' :
                (empty(Student::find($this->id)) == 0) ?
                $fio = $this->student->first()->surname.' '.$this->student->first()->name
                    : $fio='';
                break;
            case 'Родитель' :
                (empty(Parents::find($this->id)) == 0) ?
                $fio = $this->parent->first()->surname.' '.$this->parent->first()->name
                  : $fio='';
                break;
        };
        return [
            'id' => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'avatar' => $this->avatar,
            'FIO' => $fio
        ];
    }
}
