<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use App\Enums\NewsStatus;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class  News extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'news';

//    public $incrementing = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'author',
        'description',
        'text',
        'news_category_id',
        'album_id',
        'status',
        'pub_approve',
        'video'
    ];


    /* Relations */
    public function likes()
    {
        return $this->hasMany(Likes::class);
    }

    public function album(): BelongsTo
    {
        return $this->belongsTo(Album::class);
    }
////От куда это???
//    public function album() :BelongsTo
//    {
//        return $this->belongsTo(Albums::class);
//    }
////От куда это???
//    public function news_category() :BelongsTo
//    {
//        return $this->belongsTo(News_category::class, 'news_category_id');
//        return $this->belongsTo(NewsCategory::class);
//    }

    public function news_category():BelongsTo
    {
        return $this->belongsTo(NewsCategory::class, 'news_category_id');
    }

//    public function sources(): BelongsToMany
//    {
//        return $this->belongsToMany(Source::class, 'news_sources',
//            'news_id', 'source_id');
//    }



    /* Scopes's */
    public function scopeActive(Builder $query): void
    {
        $query->where('status', NewsStatus::ACTIVE->value);
    }
//    protected $casts = ['status' => \App\Enums\NewsStatus::class];
//
    public function scopeDraft(Builder $query): void
    {
        $query->where('status', NewsStatus::DRAFT->value);
    }
////
    public function scopeBlocked(Builder $query): void
    {
        $query->where('status', NewsStatus::BLOCKED->value);
    }
}
