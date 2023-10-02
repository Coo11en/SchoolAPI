<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class QuestionDirectir extends Controller
{
    public function index(Request $req)
    {
        //dd($req);
        //$q = $req->all();
        //dump($q);
//        $req->validate([
//            "name" => 'json|required|unique:posts|max:255',
//            "email" => 'required',
//            "question" => 'required',
//        ]);
//        dd('dom');
        $data = json_decode($req->all(), true);
        $rules = [
            'name' => 'required', //Must be a number and length of value is 8
            'email' => 'required',
            'question' => 'required',
        ];
        $validator = Validator::make($data, $rules);
return $validator;
    }
}
