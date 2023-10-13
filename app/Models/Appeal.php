<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appeal extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'appeals';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'email',
        'question',
        'status',
        'response',
        'category_id',
        'top_questions',
        'date_completion',
    ];

    public function appealsCategories()
    {
        return $this->belongsTo(AppealCategory::class);
    }

}
