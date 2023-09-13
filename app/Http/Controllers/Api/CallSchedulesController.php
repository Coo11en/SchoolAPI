<?php

namespace App\Http\Controllers\Api;

use     App\Http\Controllers\Controller;
use App\Models\Call_schedule;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CallSchedulesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $callsSort = Call_schedule::all()->sortBy('call_number');
        $arr = [];
        foreach ($callsSort as $call) {
            $arr[] = [
                'number' => $call->call_number,
                'start' => Carbon::parse($call->start_time)->format('H:i'),
                'end' => Carbon::parse($call->start_time)->addMinutes($call->lesson_time)->format('H:i')
            ];
        }
        return ['callSchedules' => $arr];
    }
}
