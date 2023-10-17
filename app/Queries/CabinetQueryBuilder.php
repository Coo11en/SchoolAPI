<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Cabinet;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;


class CabinetQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Cabinet::query();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }

    public function getAlbumsByStatus(): Collection
    {
        return $this->getModel()
            ->where('images', '!=', '{}')->get();
    }

}
