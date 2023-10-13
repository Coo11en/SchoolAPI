<?php

declare(strict_types=1);

namespace App\Http\Resources;

use App\Models\Parents;
use App\Models\Roles;
use App\Models\Student;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;
use function PHPUnit\Framework\isEmpty;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $result = [
            'id' => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
        ];
        $avatar = $this->avatar;
        (!is_null($avatar)) ?
            $result['avatar'] = Storage::url($avatar)
            : $result['avatar'] = '';

        if ($this->roles->isNotEmpty()) {

            $role = $this->roles->first();
//                return [$role];
            switch ($role->name) {
                case 'Учитель' :
                    $teacher = Teacher::all()
                        ->where('user_id', '=', $role->pivot['model_id'])
                        ->first();
                    if (!is_null($teacher)){
                    $result['FIO'] = $teacher->first()->surname . ' ' . $teacher->first()->name;
                    } else {
                        $result['FIO'] = 'Пользователь не имеет профил учитель';
                    }
                    break;
                case 'Студент' :
                    $student = Student::all()
                        ->where('user_id', '=', $role->pivot['model_id'])
                        ->first();
                    if (!is_null($student)) {
                        $result['FIO'] = $student->first()->surname . ' ' . $student->first()->name;
                    } else {
                        $result['FIO'] = 'Пользователь не имеет профиля студент';
                    }
                    break;
                case 'Родитель' :
                    $parent = Parents::all()
                        ->where('user_id', '=', $role->pivot['model_id'])
                        ->first();
                    if (!is_null($parent)) {
                        $result['FIO'] = $parent->first()->surname . ' ' . $parent->first()->name;
                     } else {
                        $result['FIO'] = 'Пользователь не имеет профиля родитель';
                    }
                    break;
                case 'admin' :
                        $result['FIO'] = $this->name;
                    break;
            }
        } else {
            $result['FIO'] = 'User не имеет роли';
        }
        return $result;
    }

}
