<?php

use Lagoon\Reef\app\Http\Controllers\Auth\ForgotPasswordController;
use Lagoon\Reef\app\Http\Controllers\Auth\LoginController;
use Lagoon\Reef\app\Http\Controllers\Auth\RegisterController;
use Lagoon\Reef\app\Http\Controllers\Auth\ResetPasswordController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Auth\Login Routes
|--------------------------------------------------------------------------
|
| Тут определены маршруты для авторизации и восстановления паролей
| Пожалуйста не вносите изменений в этот файл. Если эти маршруты
| не нужны в проекте - просто уберите include_once этого файла
| из файла web.php
|
*/

Route::group(
    [
        'namespace'  => '',
        'middleware' => config('backpack.base.web_middleware', 'web'),
        'prefix'     => config('backpack.base.route_prefix'),
    ],
    function () {

        Route::get('login', [LoginController::class, 'showLoginForm'])->name('backpack.auth.login');
        Route::post('login', [LoginController::class, 'login']);
        Route::any('logout', [LoginController::class, 'logout'])->name('backpack.auth.logout');

        // Работают только для local окружения (APP_ENV)
        Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('backpack.auth.register');
        Route::post('register', [RegisterController::class, 'register']);

        Route::get('password/reset', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('backpack.auth.password.reset');
        Route::post('password/reset', [ResetPasswordController::class, 'reset']);
        Route::get('password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('backpack.auth.password.reset.token');
        Route::post('password/email', [ForgotPasswordController::class, 'sendResetLinkEmail'])
            ->name('backpack.auth.password.email')
            ->middleware('backpack.throttle.password.recovery:'.config('backpack.base.password_recovery_throttle_access'));




    });
