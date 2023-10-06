<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appeal extends Model
{
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
    ];

    public function appealsCategories()
    {
        return $this->belongsTo(Appeals_category::class);
    }

}
