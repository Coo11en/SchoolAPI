<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Console Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of your Closure based console
| commands. Each Closure is bound to a command instance allowing a
| simple approach to interacting with each command's IO methods.
|
*/

Artisan::command('test2', function () {
    $cabinet = \App\Models\Cabinet::find(5);
    dd($cabinet->toArray());
})->purpose('Display an inspiring quote');

Artisan::command('test', function () {
    dd(DIRECTORY_SEPARATOR); //"\"
})->purpose('Display an inspiring quote');
