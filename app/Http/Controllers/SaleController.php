<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use App\Http\Requests\StoreSaleRequest;
use App\Http\Requests\UpdateSaleRequest;
use App\Models\Product;
use App\Models\Saledetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SaleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("sale.index");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSaleRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSaleRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function show(Sale $sale)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function edit(Sale $sale)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSaleRequest  $request
     * @param  \App\Models\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSaleRequest $request, Sale $sale)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sale  $sale
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sale $sale)
    {
        //
    }

    public function checkout(Request $request){
        //return response()->json($request->all());
        $s = new Sale();
        $s->user_id = $request->userid;
        $s->customer_id = $request->customer;
        $s->discount = $request->discount;
        $s->total = $request->total;
        $s->comment = $request->comment;
        $s->payment = $request->payment;
        $s->status = $request->status;
        if($s->save()){
            $ids = $request->ids;
            $qtys = $request->qtys;
                for($i=0;$i<count($ids);$i++){
                    $p = Product::find($ids[$i]);
                    $sd = new Saledetail();
                    $sd->product_id = $ids[$i];
                    $sd->quantity = $qtys[$i];
                    $sd->price = $p->saleprice;
                    $sd->discount = $p->discount;
                    $s->saledetails()->save($sd);
                    //deduct quantity from product table
                }
        }
        return response()->json(['saleid'=>$s->id]);
    }

    public function invoice($id){
        $info = Sale::with(['saledetails.product','user','customer'])->find($id);
        // dd($info);
        return view("invoice.invoice")->with("info",$info);
    }
}
