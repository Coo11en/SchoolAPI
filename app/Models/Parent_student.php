<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Parent_student extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'parent_student';
    //protected $fillable = [
    //'parent_id',
    //'student_id',
    //];

//    public function parents()
//    {
//        return $this->belongsTo(Parents::class);
//    }
//
//    public function students()
//    {
//        return $this->belongsTo(Student::class);
//    }
}
