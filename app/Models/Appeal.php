<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appeal extends Model
{
    use HasFactory;

    protected  $table = 'appeals';

    public $incrementing = false;

    protected $fillable = [
        'name',
        'email',
        'description',
        'status',
        'response',
        'category_id',
        'top_questions',
    ];

    public function categories_appeals()
    {
        return $this->belongsTo(Categories_appeal::class);
    }

}
