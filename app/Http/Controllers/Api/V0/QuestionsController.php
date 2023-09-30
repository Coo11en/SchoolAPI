<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\QuestionsResource;
use App\Models\Appeal;
use Illuminate\Http\Request;

class QuestionsController extends Controller
{
    public function index()
    {
        $questions = QuestionsResource::collection(Appeal::all()->where('top_questions', '=', true ));
        $i = 1;
        foreach ($questions as $value) {
            $value->resource->id = $i++;
        }
        //dd($q);
        return $questions;
    }
}
