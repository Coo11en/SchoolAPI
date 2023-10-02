<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Chapter;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class ChapterQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Chapter::query();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }

    public function getChapterBySlug(string $slug): Collection
    {
        return $this->getModel()->where('slug', '=', $slug)->get();
    }
}
