<?php

namespace App\Providers;

use App\Queries\AlbumsQueryBuilder;
use App\Queries\AppealsQueryBuilder;
use App\Queries\CategoriesQueryBuilder;
use App\Queries\ChapterQueryBuilder;
use App\Queries\MenuQueryBuilder;
use App\Queries\NewsQueryBuilder;
use App\Queries\QueryBuilder;
use App\Queries\SectionQueryBuilder;
use App\Services\AvatarUploadService;
use App\Services\Contracts\Upload;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(QueryBuilder::class, NewsQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, AlbumsQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, AppealsQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, CategoriesQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, ChapterQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, MenuQueryBuilder::class);
        $this->app->bind(QueryBuilder::class, SectionQueryBuilder::class);

        // Services
        $this->app->bind(Upload::class, AvatarUploadService::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
