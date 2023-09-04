<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class ScheduleController extends Controller
{
    public function index (): View
    {


//        dd($this->getClasses(), $this->getSchedule());
        return view('schedule.index', [
            'schedule' => $this->getSchedule(),
            'classes' => $this->getClasses()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(): View
    {
        return view('schedule.edit', [
            'schedule' => $this->getSchedule(),
            'classes' => $this->getClasses()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }
}
