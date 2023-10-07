<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\AppealResource;
use App\Http\Resources\CabinetResource;
use App\Models\Appeal;
use App\Queries\AppealsQueryBuilder;
use App\Queries\QueryBuilder;
use Illuminate\Http\Request;

class AppealsController extends Controller
{
    protected QueryBuilder $appealsQueryBuilder;
    public function __construct(
        AppealsQueryBuilder $albumsQueryBuilder,
    )
    {
        $this->appealsQueryBuilder = $albumsQueryBuilder;
    }
    public function index()
    {
        //проверка запроса на параметры status и appealCategory
        $status = (request()->has('status')) ? request()->get('status'): null;
        $appealCategory = (request()->has('appealCategory')) ? request()->get('appealCategory') : null;

        return AppealResource::collection($this->appealsQueryBuilder->getAppeals($status, $appealCategory));
    }
}
