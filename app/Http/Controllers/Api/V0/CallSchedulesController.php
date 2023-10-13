<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Models\CallSchedule;
use Carbon\Carbon;
use JetBrains\PhpStorm\ArrayShape;

class CallSchedulesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    #[ArrayShape(['callSchedules' => "array"])]
    public function index(): array
    {
        return ['callSchedules' =>   CallSchedule::all()->sortBy('call_number')->map(function ($item){
            return (object)[
                'number' => $item->call_number,
                'start' => Carbon::parse($item->start_time)->format('H:i'),
                'end' => Carbon::parse($item->start_time)->addMinutes($item->lesson_time)->format('H:i')
            ];
        })->flatten()->all()];
    }

}
