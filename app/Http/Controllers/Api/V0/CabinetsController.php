<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\CabinetResource;
use App\Models\Cabinet;
use App\Queries\CabinetQueryBuilder;
use App\Queries\QueryBuilder;
use Illuminate\Http\Request;

class CabinetsController extends Controller
{
    protected QueryBuilder $cabinetQueryBuilder;
    public function __construct(
        CabinetQueryBuilder $cabinetQueryBuilder,
    )
    {
        $this->cabinetQueryBuilder = $cabinetQueryBuilder;
    }
    public function index()
    {
        return CabinetResource::collection($this->cabinetQueryBuilder->getAlbumsByStatus());
    }
    public function show(int $id)
    {
        return new CabinetResource(Cabinet::findOrFail($id));
    }
}
