<?php
/* The above class is a middleware in PHP Laravel framework that ensures the user is an artisan before
allowing access to certain routes. */

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

/**
 * Middleware to redirect the user if their cart is empty.
 */
class EnsureUserIsArtisan
{
    /**
     * Handle an incoming request.
     *
     * @param Request $request
     * @param Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::check() && Auth::user()->isArtisan) {
            return $next($request);
        }

        return response()->json(['message' => 'Unauthorized action'], 403);
    }
}
