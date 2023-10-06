<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\ChapterResource;
use App\Models\Chapter;
use App\Queries\ChapterQueryBuilder;
use App\Queries\QueryBuilder;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class ChapterController extends Controller
{

    protected QueryBuilder $chapterQueryBuilder;

    public function __construct(ChapterQueryBuilder $chapterQueryBuilder)
    {
        $this->chapterQueryBuilder = $chapterQueryBuilder;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(): AnonymousResourceCollection
    {
        //dd(ChapterResource::collection(Chapter::all()));
        return ChapterResource::collection(Chapter::all());
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
        //return new ChapterResource($chapter);
        if(!ChapterResource::collection($this->chapterQueryBuilder->getChapterBySlug($slug))->count()){
            abort(404);
        }

        return ChapterResource::collection($this->chapterQueryBuilder->getChapterBySlug($slug));
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
