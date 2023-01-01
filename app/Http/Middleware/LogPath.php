<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\Logpath as path;
use Illuminate\Support\Facades\Auth;

class LogPath
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $p = new path();
        $p->path = $request->url();
        $p->user_id = Auth::check()?Auth::id():null;
        $p->save();
        
        
        // dd($request->url());
        return $next($request);
    }
}
