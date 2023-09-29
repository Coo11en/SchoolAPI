<?php

namespace App\Queries;

use App\Models\Menu_basic;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class MenuQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Menu_basic::query();
    }
    public function getMenuByID($date): Collection
    {

        return $this->getModel()->whereDay('date', '=', $date)->get();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }

}
