<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\Admin\ScheduleController as AdminScheduleController;
use App\Http\Controllers\Admin\NewsController as AdminNewsController;
use App\Http\Controllers\Admin\IndexController as AdminIndexController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [HomeController::class, 'index'])
    ->name('index');
Route::get('/news', [NewsController::class, 'index'])
    ->name('news.index');
Route::get('/news/{news}', [NewsController::class, 'show'])
    ->where('news', '\d+')
    ->name('news.show');
Route::get('/schedule', [ScheduleController::class, 'index'])
    ->name('schedule.index');
//Route::get('admin/schedule/edit', [AdminScheduleController::class, 'edit'])
//    ->name('admin.schedule.edit');

// Admin
Route::group([
    'prefix' => 'admin',
    'as' => 'admin.',
//    'middleware' => 'check.admin',
], static function () {
    Route::get('/', AdminIndexController::class)
        ->name('index');
//    Route::resource('/categories', AdminCategoriesController::class);
    Route::resource('/news', AdminNewsController::class);

    Route::resource('/schedule', AdminScheduleController::class);

//    Route::resource('/orders', AdminOrdersController::class);
//    Route::resource('/users', AdminUsersController::class);
});

