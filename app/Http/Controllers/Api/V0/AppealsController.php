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
    public function index(bool $status = null,  int $appealCategory = null)
    {
        if (request()->has('status')) {
            $status = request()->get('status');
        }
        if (request()->has('appealCategory')) {
            $appealCategory = request()->get('appealCategory');
        }
        return AppealResource::collection($this->appealsQueryBuilder->getAppeals($status, $appealCategory));
    }
}
