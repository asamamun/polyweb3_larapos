<?php

namespace App\Http\Controllers;

use App\Models\Catagory;
use App\Models\Product;
use App\Models\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products= Product::paginate(5);
        return view('product.index')->with('product',$products);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // dd(Storage::path('products/zljxzhch73YIwK9X247jYmmJT9DU5phQNrC98Ssj.jpg'));
        $cat = Catagory::pluck('name', 'id');
        $supp = Supplier::pluck('name', 'id');
        //dd($cat);
        return view('product.add')
        ->with('catagory',$cat)
        ->with('supplier',$supp);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProductRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $validatedData = $request->validate([
            'name' => ['required', 'unique:products', 'max:30'],
            'description' => ['required', 'min:20'],
            'catagory_id' => ['required'],
            'supplier_id' => ['required'],
            'unitprice' => ['required'],
            'saleprice' => ['required'],
            'unit' => ['required'],
            'unitvalue' => ['required'],
            'quantity' => ['required'],
            'weight' => ['required'],
            'discount' => ['required'],
            'status' => ['required'],
        ]);


        $pro = new Product();
        $pro->name = $request->name;
        $pro->description = $request->description;
        $pro->catagory_id = $request->catagory_id;
        $pro->supplier_id = $request->supplier_id;
        $pro->unitprice = $request->unitprice;
        $pro->saleprice = $request->saleprice;
        $pro->unit = $request->unit;
        $pro->unitvalue = $request->unitvalue;
        $pro->quantity = $request->quantity;
        $pro->weight = $request->weight;
        $pro->discount = $request->discount;
        $pro->option1 = $request->option1;
        $pro->option2 = $request->option2;
        $pro->option3 = $request->option3;
        $pro->option4 = $request->option4;
        $pro->option5 = $request->option5;
        $pro->status = $request->status;
        
        //image upload
        $path = $request->file('image')->store('products');
        // dd($path);
        $pro->image = $path;
        
        if($pro->save()){
            //compress image start
            $p = Storage::path($path);
            $img = Image::make($p);
            $img->resize(800, null, function ($constraint) {
                $constraint->aspectRatio();
                $constraint->upsize();
            });
            $img->save($p, 60, 'jpg');
            //compress image end
            return redirect('product')->with('success','Product Create Successfuly');
        }else{   
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
          
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('product.edit', compact("product"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProductRequest  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    { 
         $validatedData = $request->validate([
        'name' => ['required', 'max:30'],
        'description' => ['required', 'min:20'],
        'catagory_id' => ['required'],
        'supplier_id' => ['required'],
        'unitprice' => ['required'],
        'saleprice' => ['required'],
        'unit' => ['required'],
        'unitvalue' => ['required'],
        'quantity' => ['required'],
        'weight' => ['required'],
        'discount' => ['required'],
        'status' => ['required'],
    ]);
    $product->name = $request->name;
    $product->description = $request->description;
    $product->catagory_id = $request->catagory_id;
    $product->supplier_id = $request->supplier_id;
    $product->saleprice = $request->saleprice;
    $product->unit = $request->unit;
    $product->unitvalue = $request->unitvalue;
    $product->quantity = $request->quantity;
    $product->weight = $request->weight;
    $product->discount = $request->discount;
    $product->option1 = $request->option1;
    $product->option2 = $request->option2;
    $product->option3 = $request->option3;
    $product->option4 = $request->option4;
    $product->option5 = $request->option5;
    $product->status = $request->status;
    if($product->save()){
        return redirect('product')->with('success','Product Updated Successfull');
        echo "Test";
    }else{
        return redirect()->back()->withErrors(['error'=> 'Error Occured']);
    }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        if(Product::destroy($product->id)){
            return redirect('product')->with('warning','Products Delete Successfull');
        }else{
            return redirect('product')->with('error','Could not delete');
        }
    }
    //getproducts
    public function getproducts($str){
        $sp = Product::select('name as label','id as value','description','saleprice','discount','image')
        ->where("name","LIKE","%{$str}%")
        ->get();
        return response()->json($sp);
    }
}
