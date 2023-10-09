<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class ApiToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->hasHeader('Authorization')) {
            $header = $request->header('Authorization', '');
        } else {
            return response()->json('Header authorization has not been found');
        }
        if (Str::startsWith($header, 'Bearer')) {
            $token = Str::substr($header, 6);
            if ($token == 'null') {
                return response()->json('bearer token is null');
            }
        } else {
            return response()->json('bearer token has not been found');
        }

        list($id,$token) = explode('|', $token, 2);

        $hashedTokens = DB::table('personal_access_tokens')
            ->select('token')
            ->where('id', '=', $id)
            ->get();
        if (count($hashedTokens) == 0) {
            return response()->json('Token has no validation');
        }
        $hashedToken = $hashedTokens[0]->token;

        $tokensMatch = hash_equals($hashedToken , hash('sha256', $token) );
        if (!$tokensMatch) {
            return response()->json('Token is wrong');
        }
        $userId = DB::table('personal_access_tokens')
            ->select('tokenable_id')
            ->where('id', '=', $id)
            ->get();

        $user = User::findOrFail($userId[0]->tokenable_id);
        $request->merge(['user' => $user ]);
        $request->setUserResolver(function () use ($user) {
            return $user;
        });
        return $next($request);
    }
}
