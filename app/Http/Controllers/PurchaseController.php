<?php

namespace App\Http\Controllers;

use App\Models\Purchase;
use App\Http\Requests\StorePurchaseRequest;
use App\Http\Requests\UpdatePurchaseRequest;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Catagory;
use App\Models\Purchasedetail;

class PurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $cat = Catagory::pluck('name', 'id');
        return view('purchase.index');

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
     * @param  \App\Http\Requests\StorePurchaseRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePurchaseRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function show(Purchase $purchase)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function edit(Purchase $purchase)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePurchaseRequest  $request
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePurchaseRequest $request, Purchase $purchase)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function destroy(Purchase $purchase)
    {
        //
    }
    public function checkout(Request $request){
        //return response()->json($request->all());
        $s = new Purchase();
        $s->user_id = $request->userid;
        $s->supplier_id = $request->supplier;
        $s->discount = $request->discount;
        $s->total = $request->total;
        $s->comment = $request->comment;
        $s->payment = $request->payment;
        $s->status = "c";
        if($request->payment == 'bKash'){
        $s->trxid = $request->trxid;
        }
        // $s->status = $request->status;
        if($s->save()){
            $ids = $request->ids;
            $qtys = $request->qtys;
                for($i=0;$i<count($ids);$i++){
                    $p = Product::find($ids[$i]);
                    $pd = new Purchasedetail();
                    $pd->product_id = $ids[$i];
                    $pd->quantity = $qtys[$i];
                    $pd->price = $p->saleprice;
                    $pd->discount = $p->discount;
                    $s->purchasedetails()->save($pd);
                    //deduct quantity from product table
                }
        }
        return response()->json(['purchase'=>$s->id]);
    }
    public function invoice($id){
        $info = Purchase::with(['purchasedetails.product','user','supplier'])->find($id);
        // dd($info);
        if($info) return view("invoice.pinvoice")->with("info",$info);
        else return view('404');
    }
}
