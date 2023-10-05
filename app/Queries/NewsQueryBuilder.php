<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\News;
use App\Enums\NewsStatus;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;


class NewsQueryBuilder extends QueryBuilder
{

    public function getModel(): Builder
    {
        return News::query();
    }

    public function getActiveNews(): Collection
    {
        return $this->getModel()->active()->get();
    }

    public function getActiveNewsPaginate(): LengthAwarePaginator
    {
        return $this->getModel()->active()->orderBy('created_at', 'desc')->paginate(5);
    }

    public function getLastLimitNews(int $limit)
    {
        return $this->getModel()->active()->orderBy('created_at', 'desc')->limit($limit)->get();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
//        return $this->getModel()->with('categories')->get();
    }
}
