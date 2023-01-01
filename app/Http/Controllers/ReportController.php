<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Response;

class ReportController extends Controller
{
    public function index(){
        return view('reports.index');
    }
    public function dailyreport(){
        return view('reports.daily');
    }
    public function dailyreportpost(Request $request){
        $records = Sale::with('saledetails.product')->whereDate("created_at", $request->date)->get();
        return Response()->json($records);
    }
    public function weekreport(){
        return view('reports.weekly');
    }
    public function weeklyreportpost(Request $request){
        $records = Sale::with('saledetails.product')
        ->whereDate("created_at",">=", $request->sdate)
        ->whereDate("created_at","<=", $request->edate)
        ->get();
        return Response()->json($records);
    }
}
