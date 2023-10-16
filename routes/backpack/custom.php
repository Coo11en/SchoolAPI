<?php

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
    Route::crud('news', App\Http\Controllers\Admin\NewsCrudController::class);
    Route::crud('albums', App\Http\Controllers\Admin\AlbumsCrudController::class);
    Route::crud('news-category', App\Http\Controllers\Admin\NewsCategoryCrudController::class);
    Route::crud('photo', App\Http\Controllers\Admin\PhotoCrudController::class);
    Route::crud('teacher', App\Http\Controllers\Admin\TeacherCrudController::class);
    Route::crud('menu-basic', App\Http\Controllers\Admin\MenuBasicCrudController::class);
    Route::crud('menu-item', App\Http\Controllers\Admin\MenuItemCrudController::class);
    Route::crud('student', App\Http\Controllers\Admin\StudentCrudController::class);
    Route::crud('classroom', App\Http\Controllers\Admin\ClassroomCrudController::class);
    Route::crud('cabinet', App\Http\Controllers\Admin\CabinetCrudController::class);
    Route::crud('achievement', App\Http\Controllers\Admin\AchievementCrudController::class);
}); // this should be the absolute last line of this file
