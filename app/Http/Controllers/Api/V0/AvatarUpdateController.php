<?php

namespace App\Http\Controllers\Api\V0;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Http\Requests\Users\AvatarUpdate;
use App\Models\User;
use App\Services\Contracts\Upload;
use Illuminate\Http\JsonResponse;

class AvatarUpdateController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(AvatarUpdate $request, User $user, Upload $upload): JsonResponse
    {
        if(!$request->hasFile('image')) {
            return response()->json(['upload_file_not_found'], 400);
        }
        $file = $request->file('image');
        if(!$file->isValid()) {
            return response()->json(['invalid_file_upload'], 400);
        }

        $data = $request->validated();

        $user = User::findOrFail($request->get('id'));

        $user = $user->fill($data);

        if ($request->hasFile('image')) {
            $user['avatar'] = $upload->create($request->file('image'));
        }

        if ($user->save()) {
            return ResponseFormatter::success(['message' => 'User has been updated'], 'Update Success');
        }
        return ResponseFormatter::error([
            'message' => 'User has not been updated',
        ], 'Update Failed', 500);
    }
}
