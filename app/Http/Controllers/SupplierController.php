<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $suppliers= Supplier::paginate(05);
       return view('supplier.index')->with('supplier',$suppliers);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('supplier.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSupplierRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'unique:suppliers', 'max:30'],
            'email' => ['required','unique:suppliers'],
            'phone' => ['required','unique:suppliers', 'min:11'],
            'address' => ['required'],
            'status' => ['required'],
        ]);


        $sup = new Supplier();
        $sup->name = $request->name;
        $sup->email = $request->email;
        $sup->phone = $request->phone;
        $sup->address = $request->address;
        $sup->option1 = $request->option1;
        $sup->option2 = $request->option2;
        $sup->option3 = $request->option3;
        $sup->status = $request->status;
        if($sup->save()){
            return redirect('supplier')->with('success','Supplier Create Successfull');
        }else{
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function show(Supplier $supplier)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function edit(Supplier $supplier)
    {
        return view('supplier.edit', compact("supplier"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSupplierRequest  $request
     * @param  \App\Models\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Supplier $supplier)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'max:30'],
            'email' => ['required'],
            'phone' => ['required', 'min:11'],
            'address' => ['required'],
            // 'status' => ['required'],
        ]);
        $supplier->name = $request->name;
        $supplier->email = $request->email;
        $supplier->phone = $request->phone;
        $supplier->address = $request->address;
        $supplier->option1 = $request->option1;
        $supplier->option2 = $request->option2;
        $supplier->option3 = $request->option3;
        $supplier->status = $request->status;
        if($supplier->save()){
            return redirect('supplier')->with('success','Supplier Updated Successfull');
            echo "Test";
        }else{
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function destroy(Supplier $supplier)
    {
        if(Supplier::destroy($supplier->id)){
            return redirect('supplier')->with('warning','Suppliers Delete Successfull');
        }else{
            return redirect('supplier')->with('error','Could not delete');
        }
    }
}
