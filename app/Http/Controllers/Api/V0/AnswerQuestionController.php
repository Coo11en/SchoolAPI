<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Models\Appeal;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AnswerQuestionController extends Controller
{
    public function store(Request $request)
    {
        if(Appeal::all()->find($request->input('id')) !== null) {
            Appeal::all()->firstOrFail('id', '=', $request->input('id'))->update(["response" => $request->input('text'), "status" => true, "date_completion" => now()]);
            return response()->json([
                'message' => 'Ответ на вопрос записан.',
            ]);
        } else {
            return response()->json([
                'message' => 'Ошибка в номере вопроса',
            ]);
        }
    }
}
