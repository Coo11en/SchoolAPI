<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Likes extends Model
{
    use HasFactory;

    protected $table = 'likes';

//    public $incrementing = false;

    protected $fillable = [
        'news_id',
        'user_id',
        'liked',
    ];

    public function news():BelongsTo
    {
        return $this->belongsTo(News::class);
    }

}
