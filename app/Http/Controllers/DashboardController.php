<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Purchasedetail;
use App\Models\Sale;
use App\Models\Saledetail;
use App\Models\Supplier;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
   public function index(){
    $totalProducts = Product::all()->count();
    $totalCustomers = Customer::all()->count();
    $totalSuppliers = Supplier::all()->count();
    $totalSale = Sale::sum('total');
    $totalPurchase = Purchase::sum('total');
    $totalItemsSold = Saledetail::sum('quantity');
    $totalItemsPurchased = Purchasedetail::sum('quantity');
/*     $salesData = Sale::whereBetween('created_at', [Carbon::createFromDate(2022, 12, 1), Carbon::createFromDate(2023, 1,3)])
->selectRaw('YEAR(created_at) cyear,DAYOFMONTH(created_at) monthDay,count(*), sum(total)')
->groupBy('cyear')
->groupBy('monthDay')
->get(); */
$sy = date("Y",strtotime("last month")); 
$sm = date("m",strtotime("last month")); 
$sd = date("d",strtotime("last month")); 
    $salesData = Sale::whereBetween('created_at', [Carbon::createFromDate($sy, $sm, $sd), Carbon::createFromDate(date("Y"), date("m"),date("d"))])
->selectRaw('YEAR(created_at) cyear,DAYOFMONTH(created_at) monthDay,sum(total) as total')
->groupBy('cyear')
->groupBy('monthDay')
->get();
// dd($salesData);
$salesDataArr = [];
foreach($salesData as $s){
    $salesDataArr[$s['monthDay']] = $s['total'];
} 
// dd($salesDataArr);
    //dd($totalSale);
    return view("dashboard")->with(compact(
        'totalProducts',
        'totalCustomers',
        'totalSuppliers',
        'totalSale',
        'totalPurchase',
        'totalItemsSold',
        'totalItemsPurchased',
        'salesDataArr'
    ));
   }
}
