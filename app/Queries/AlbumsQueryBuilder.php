<?php

declare(strict_types=1);

namespace App\Queries;

use App\Models\Album;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;


class AlbumsQueryBuilder extends QueryBuilder
{
    public function getModel(): Builder
    {
        return Album::query();
    }
    public function getAlbumByNameEng(string $nameEng): Collection
    {
//        dd(Album::all()->where('nameEng', '=', $nameEng));

        return $this->getModel()->where('nameEng', '=', $nameEng)->get();
    }

    public function getAll(): Collection
    {
        return $this->getModel()->get();
    }

//    public function getAllPaginate(): LengthAwarePaginator
//    {
//        return $this->getModel()->with('categories')->paginate(15);
//    }
}
