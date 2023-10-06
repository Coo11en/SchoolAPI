<?php

namespace App\Http\Controllers\Api\V0;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        try {
            $request->validate([
                'email' => 'email|required',
                'password' => 'required',
            ]);
            $credentials = request(['email', 'password']);
            // if no user
            if (!User::where('email', $request->email)->first()) {
                return ResponseFormatter::error([
                    'message' => 'User not found',
                ], 'Authentication Failed', 401);
            }
            // if password error
            if (!Auth::attempt(($credentials))) {
//                dd(Hash::make('12345'));
                return ResponseFormatter::error([
                    'message' => 'Password error',
                ], 'Authentication Failed', 401);
            }
            // if not match return error
            $user = User::where('email', $request->email)->first();
//            if (!Hash::check($request->password, $user->password, [])) {
//                throw new \Exception('Invalid Credentials');
//            }

            // if success
            $tokenResult = $user->createToken('authToken')->plainTextToken;
            return ResponseFormatter::success([
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user
            ], 'Authenticated');

        } catch (Exception $error) {
            return ResponseFormatter::error([
                'message' => 'Something went Wrong!',
                'error' => $error
            ], 'Authentication Failed', 500);
        }
    }

//    public function profile(Request $request)
//    {
//        return ResponseFormatter::success($request->user(), 'Data Profile User');
//    }

    public function logout(Request $request)
    {
        $token = $request->user()->currentAccessToken()->delete();
        return ResponseFormatter::success($token, 'Token Revoked');
    }

}
