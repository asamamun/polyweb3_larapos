<?php

namespace App\Http\Controllers;

use App\Models\Logpath;
use Illuminate\Http\Request;

class LogpathController extends Controller
{
   public function showlogs(){
    // $alllogs = Logpath::all();
    $alllogs = Logpath::paginate(5);
    return view('logs.alllogs')->with("logs", $alllogs);
   }
}
