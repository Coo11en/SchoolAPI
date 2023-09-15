<?php

use App\Http\Controllers\Api\Admin\AlbumsController;
use App\Http\Controllers\Api\Admin\ClassSchedulesController;
use App\Http\Controllers\Api\Admin\NewsController;
use App\Http\Controllers\Api\CallSchedulesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResources([
    'news' => NewsController::class,
    'class_schedules' => ClassSchedulesController::class,
    'albums' => AlbumsController::class,
]);
Route::get('/callSchedules', [CallSchedulesController::class, 'index']);
