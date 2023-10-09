<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class News_category extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'news_categories';

    //public $incrementing = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'description'
    ];

    /* Relations
    public function news(): BelongsTo
    {
        return $this->belongsTo(News::class);
    }*/
//    public function news()
//    {
//        return $this->hasMany(News::class, 'news_category_id', 'id');
//    }

}
