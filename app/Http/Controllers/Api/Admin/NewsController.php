<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\News\Store;
use App\Http\Resources\NewsResource;
use App\Models\News;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): AnonymousResourceCollection
    {
        return NewsResource::collection(News::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Store $request)
    {
        $createdNews = News::create($request->validated());

        return new NewsResource($createdNews);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id): NewsResource
    {
      return new NewsResource(News::findOrFail($id));
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
