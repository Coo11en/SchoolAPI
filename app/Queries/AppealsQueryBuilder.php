<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Appeal;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;

class AppealsQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Appeal::query();
    }

    public function getAll(): Collection|LengthAwarePaginator
    {
        return $this->getModel()->get();
    }

    public function getAppeals($status, $appealCategory): Collection
    {
        if (!is_null($status) && !is_null($appealCategory)) {
            return $this->getModel()
                ->where('category_id', '=', $appealCategory)
                ->where('status', '=', $status )
                ->get();
        } elseif (!is_null($status)) {
            return $this->getModel()->where('status', '=', $status )->get();

        } elseif (!is_null($appealCategory)) {
            return $this->getModel()->where('category_id', '=', $appealCategory)->get();
        }
        return $this->getModel()->get();
    }

//    public function getAllPaginate(): LengthAwarePaginator
//    {
//        return $this->getModel()->with('categories')->paginate(15);
//    }
}
