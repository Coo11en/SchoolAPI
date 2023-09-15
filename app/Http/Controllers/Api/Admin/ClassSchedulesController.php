<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\ClassroomResource;
use App\Http\Resources\DayResource;
use App\Models\Classroom;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

class ClassSchedulesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
// Приведение json к требуемому виду
        $classrooms = ClassroomResource::collection(Classroom::all());
//        dd($classrooms->all());
//Перевод коллекции в массив
        $arrClassrooms = json_decode($classrooms->toJson(), true);
        $classSchedules = [];
        foreach ($arrClassrooms as $classroom) {
            $dayLessons = [];
            foreach ($classroom['days'] as $item) {
                $lessons = array_values(Arr::sort($item['schedules'], function (array $value) {
                    return $value['callNumber'];
                }));
                $arrLessons = [];
                foreach ($lessons as $lesson) {
                    $arrLessons[] = $lesson['nameSubject'][0];
                }
                $dayLessons[] = (object)[
                    'dayName' => $item['dayName'],
                    'lessons' => $arrLessons
                ];
            }

            $classSchedules[] = [
                'classId' => $classroom['classId'],
                'className' => $classroom['className'],
                'days' => $dayLessons
//                'days' => ClassroomResource::collection(Classroom::all())
            ];
        }

        return $classSchedules;
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
// Приведение json к требуемому виду
        $classroom = new ClassroomResource(Classroom::findOrFail($id));
//Перевод коллекции в массив
        $arrClassroom = json_decode($classroom->toJson(), true);
        $classSchedules = [];

        $dayLessons = [];
        foreach ($arrClassroom['days'] as $item) {
            $lessons = array_values(Arr::sort($item['schedules'], function (array $value) {
                return $value['callNumber'];
            }));
            $arrLessons = [];
            foreach ($lessons as $lesson) {
                $arrLessons[] = $lesson['nameSubject'][0];
            }
            $dayLessons[] = (object)[
                'dayName' => $item['dayName'],
                'lessons' => $arrLessons
            ];
        }

        $classSchedules[] = [
            'classId' => $arrClassroom['classId'],
            'className' => $arrClassroom['className'],
            'days' => $dayLessons
        ];

        return $classSchedules;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
