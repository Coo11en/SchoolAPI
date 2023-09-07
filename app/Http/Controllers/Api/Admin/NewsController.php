<?php

declare(strict_types=1);

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\News\Store;
use App\Http\Requests\News\Update;
use App\Http\Resources\NewsResource;
use App\Models\News;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Response;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use JetBrains\PhpStorm\Pure;

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
    public function store(Store $request): NewsResource
    {
        $createdNews = News::create($request->validated());

        return new NewsResource($createdNews);
    }

    /**
     * Display the specified resource.
     */
    #[Pure] public function show(News $news): NewsResource
    {
      return new NewsResource($news);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Update $request, News $news): NewsResource
    {
        $news->update($request->validated());

        return new NewsResource($news);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(News $news): \Illuminate\Foundation\Application|Response|Application|ResponseFactory
    {
        $news->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
