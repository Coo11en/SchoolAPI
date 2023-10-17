<?php

use App\Http\Controllers\Admin\AchievementCrudController;
use App\Http\Controllers\Admin\AlbumsCrudController;
use App\Http\Controllers\Admin\AppealCategoryCrudController;
use App\Http\Controllers\Admin\AppealCrudController;
use App\Http\Controllers\Admin\BannerCrudController;
use App\Http\Controllers\Admin\CabinetCrudController;
use App\Http\Controllers\Admin\CallScheduleCrudController;
use App\Http\Controllers\Admin\ChapterCrudController;
use App\Http\Controllers\Admin\ClassroomCrudController;
use App\Http\Controllers\Admin\DayCrudController;
use App\Http\Controllers\Admin\DocimageCrudController;
use App\Http\Controllers\Admin\DocsourceCrudController;
use App\Http\Controllers\Admin\MenuBasicCrudController;
use App\Http\Controllers\Admin\MenuItemCrudController;
use App\Http\Controllers\Admin\NewsCategoryCrudController;
use App\Http\Controllers\Admin\NewsCrudController;
use App\Http\Controllers\Admin\ParentsCrudController;
use App\Http\Controllers\Admin\PhotoCrudController;
use App\Http\Controllers\Admin\ScheduleCrudController;
use App\Http\Controllers\Admin\SectionCrudController;
use App\Http\Controllers\Admin\StudentCrudController;
use App\Http\Controllers\Admin\SubjectCrudController;
use App\Http\Controllers\Admin\TeacherCrudController;
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
    Route::crud('appeal', AppealCrudController::class);
    Route::crud('appeal-category', AppealCategoryCrudController::class);
    Route::crud('banner', BannerCrudController::class);
    Route::crud('chapter', ChapterCrudController::class);
    Route::crud('docimage', DocimageCrudController::class);
    Route::crud('docsource', DocsourceCrudController::class);
    Route::crud('parents', ParentsCrudController::class);
    Route::crud('section', SectionCrudController::class);
    Route::crud('student', StudentCrudController::class);
    Route::crud('cabinet', CabinetCrudController::class);
    Route::crud('classroom', ClassroomCrudController::class);
    Route::crud('achievement', AchievementCrudController::class);

}); // this should be the absolute last line of this file
