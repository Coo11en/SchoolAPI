<?php

declare(strict_types=1);

namespace App\Models;

//use App\Enums\NewsStatus;
//use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
//use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class  News extends Model
{
    use HasFactory;

    protected $table = 'news';

    public $incrementing = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'author',
        'description',
//        'news_category_id',
//        'album_id',
        'status',
    ];

    public function likes()
    {
        return $this->hasMany(Likes::class);
    }

    public function albums()
    {
        return $this->hasOne(Album::class);
    }

    public function news_categories():BelongsTo
    {
        return $this->belongsTo(News_categories::class, 'news_categories_id');
    }

    /* Relations */
//, 'news_categories_id    public function categories(): BelongsToMany
//    {
//        return $this->belongsToMany(Category::class, 'category_has_news',
//            'news_id', 'category_id');
//    }

//    public function sources(): BelongsToMany
//    {
//        return $this->belongsToMany(Source::class, 'news_sources',
//            'news_id', 'source_id');
//    }



    /* Scopes's */
//    public function scopeActive(Builder $query): void
//    {
//        $query->where('status', NewsStatus::ACTIVE->value);
//    }
//
//    public function scopeDraft(Builder $query): void
//    {
//        $query->where('status', NewsStatus::DRAFT->value);
//    }
//
//    public function scopeBlocked(Builder $query): void
//    {
//        $query->where('status', NewsStatus::BLOCKED->value);
//    }
}
