<?php

namespace App\Http\Controllers\Api\V0;

use App\Http\Controllers\Controller;
use App\Http\Resources\CabinetResource;
use App\Models\Cabinet;
use Illuminate\Http\Request;

class CabinetsController extends Controller
{
    public function index()
    {
        return CabinetResource::collection(Cabinet::all());
    }
    public function show(int $id)
    {
        return new CabinetResource(Cabinet::findOrFail($id));
    }
}
