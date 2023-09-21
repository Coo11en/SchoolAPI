<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\AlbumResource;
use App\Models\Album;
use App\Queries\AlbumsQueryBuilder;
use App\Queries\QueryBuilder;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class AlbumsController extends Controller
{
    protected QueryBuilder $albumsQueryBuilder;
    public function __construct(
        AlbumsQueryBuilder $albumsQueryBuilder,
    )
    {
        $this->albumsQueryBuilder = $albumsQueryBuilder;
    }
    /**
     * Display a listing of the resource.
     */
    public function index(): AnonymousResourceCollection
    {
        return AlbumResource::collection(Album::all());
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
    public function show(string $nameEng): AnonymousResourceCollection
    {
        return AlbumResource::collection($this->albumsQueryBuilder->getAlbumByNameEng($nameEng));
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
