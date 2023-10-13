<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Support\Facades\Route;

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => null,
], function () { // custom admin routes
    Route::crud('news', NewsCrudController::class);
    Route::crud('albums', AlbumsCrudController::class);
    Route::crud('news-category', NewsCategoryCrudController::class);
    Route::crud('photo', PhotoCrudController::class);
    Route::crud('teacher', TeacherCrudController::class);
    Route::crud('menu-basic', MenuBasicCrudController::class);
    Route::crud('menu-item', MenuItemCrudController::class);
    Route::crud('call-schedule', CallScheduleCrudController::class);
    Route::crud('subject', SubjectCrudController::class);
    Route::crud('day', DayCrudController::class);
    Route::crud('schedule', ScheduleCrudController::class);
}); // this should be the absolute last line of this file
