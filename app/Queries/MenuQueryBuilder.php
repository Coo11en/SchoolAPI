<?php

namespace App\Queries;

use App\Models\Menu_basic;
use App\Models\MenuBasic;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;

class MenuQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return MenuBasic::query();
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
