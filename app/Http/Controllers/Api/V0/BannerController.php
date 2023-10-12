<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\BannerResource;
use App\Models\Banner;
use App\Queries\BannerQueryBuilder;
use App\Queries\QueryBuilder;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class BannerController extends Controller
{
    protected QueryBuilder $bannerQueryBuilder;

    public function __construct(BannerQueryBuilder $bannerQueryBuilder)
    {
        $this->bannerQueryBuilder = $bannerQueryBuilder;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(): AnonymousResourceCollection
    {
        return BannerResource::collection(Banner::all());
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug): AnonymousResourceCollection
    {
        if(!BannerResource::collection($this->bannerQueryBuilder->getBannerBySlug($slug))->count()){
            abort(404);
        }
        return BannerResource::collection($this->bannerQueryBuilder->getBannerBySlug($slug));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
