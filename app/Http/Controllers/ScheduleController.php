<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class ScheduleController extends Controller
{
    public function index (): View
    {
//        dd($this->getSchedule());
        return view('schedule.index', [
            'schedule' => $this->getSchedule(),
        ]);
    }

    public function update () {

    }
}
