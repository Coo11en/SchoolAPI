<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;

class ScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.schedule.index', [
            'schedule' => $this->getSchedule(),
            'classes' => $this->getClasses()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $class): View
    {
        $arrayUserData = $this->getSchedule();
        $schedule[$class] = $arrayUserData[$class];
//            dd($schedule);

        return view('admin.schedule.edit', [
            'schedule' => $schedule,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $schedule)
    {
        $array = $this->getSchedule();
        foreach ($_POST as $key => $item) {

            if ( ($key != "_token") && ($key != "_method")) {

                list($day, $lesson,) = explode(':', $key);
                if($item != null) {
                        $array[$schedule][$day][$lesson] = $item;
                }
            }
        }
//        dd($array, $schedule);
        $jsonUserData = json_encode($array);
//        dd($jsonUserData, $schedule);

        Storage::disk('local')->put('schedule.json', $jsonUserData);
        return  redirect()->route('admin.schedule.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
