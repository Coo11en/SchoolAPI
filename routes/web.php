<?php

//use App\Http\Controllers\HomeController;
//use App\Http\Controllers\NewsController;
//use App\Http\Controllers\ScheduleController;
//use App\Http\Controllers\Admin\ScheduleController as AdminScheduleController;
//use App\Http\Controllers\Admin\NewsController as AdminNewsController;
//use App\Http\Controllers\Admin\IndexController as AdminIndexController;
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

Route::controller(NewsController::class)->group(function () {
    Route::get('/news', 'index')
        ->name('news.index');
    Route::get('/news/{news}',  'show')
        ->where('news', '\d+')
        ->name('news.show');
});

Route::controller(ScheduleController::class)->group(function () {
    Route::get('/schedule', 'index')
        ->name('schedule.index');
});

Route::controller(HomeController::class)->group(function () {
    Route::get('/', 'index')
        ->name('index');
});

// Admin
Route::group([
    'prefix' => 'admin',
    'as' => 'admin.',
//    'middleware' => 'check.admin',
], static function () {
    Route::get('/', Admin\IndexController::class)
        ->name('index');

    Route::resource('/news', Admin\NewsController::class);
    Route::resource('/schedule', Admin\ScheduleController::class);
});

