<?php

namespace App\Http\Controllers;

use App\Models\Catagory;
use App\Models\Product;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function index(){
        $cats = Catagory::all();
        $products = Product::with('catagory')->paginate(8);
        return view("front")->with('products', $products)->with('cats', $cats);
    }
    public function catproducts($id){
        $allCat = Catagory::all();
        $cat = Catagory::find($id);
        // dd($cat);
        $products = Product::where('catagory_id',$id)->with('catagory')->paginate(8);
        return view("frontcatproducts")->with('products', $products)->with('cat',$cat)->with('cat', $allCat);
    }
}
