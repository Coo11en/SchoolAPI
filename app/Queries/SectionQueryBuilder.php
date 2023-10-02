<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Section;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class SectionQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Section::query();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }
}
