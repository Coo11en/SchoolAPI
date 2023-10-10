<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Banner;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class BannerQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Banner::query();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }

    public function getBannerBySlug(string $slug): Collection
    {
        return $this->getModel()->where('slug', '=', $slug)->get();
    }
}
