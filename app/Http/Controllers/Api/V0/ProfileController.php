<?php

namespace App\Http\Controllers\Api\V0;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProfileUserResource;
use App\Models\User;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $id = $request->get('id');
        if ($id) {
            $user = User::find($id);
            if (is_null($user)) {
                return ResponseFormatter::error(
                    'User with id = ' . $id . ' has no been found',
                    'Profile has not been received',
                    404
                );
            }
            return new ProfileUserResource($user);

        }
        return ResponseFormatter::error('Has no id parameter',
            'Profile has not been received',
            404
        );
    }
}
