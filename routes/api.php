<?php

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
    'class-schedules' => ClassSchedulesController::class,
    'albums' => AlbumsController::class,
]);

Route::controller(CallSchedulesController::class)->group(function () {
    Route::get('/call-schedules', 'index');
});

Route::controller(CabinetsController::class)->group(function () {
    Route::get('/cabinets', 'index');
    Route::get('/cabinets/{id}', 'show');
});

