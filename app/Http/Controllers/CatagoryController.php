<?php

namespace App\Http\Controllers;

use App\Models\catagory;
use Illuminate\Http\Request;
use Spatie\FlareClient\View;

class CatagoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(catagory::all());
        $catagories = Catagory::paginate(05);
       return view('catagory.index')->with('catagory', $catagories);
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('catagory.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return view('catagory.add');
        // dd($request);

        $validatedData = $request->validate([
            'name' => ['required', 'unique:catagories', 'max:30'],
            'description' => ['required', 'min:10'],
            'icon' => ['required', 'min:3'],
        ]);

        $cat = new Catagory();
        $cat->name = $request->name;
        $cat->description = $request->description;
        $cat->icon = $request->icon;
        if($cat->save()){
            return redirect('catagory')->with('success','Catagory Create Successfull');
        }else{
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Catagory  $catagory
     * @return \Illuminate\Http\Response
     */
    public function show(Catagory $catagory)
    {
        // echo "Hello show";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Catagory  $catagory
     * @return \Illuminate\Http\Response
     */
    public function edit(Catagory $catagory)
    {
        return view('catagory.edit', compact("catagory"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Catagory  $catagory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Catagory $catagory)
    {
        // echo "update called";
        // dd($catagory);
        // dd($request);
        $validatedData = $request->validate([
            'name' => ['required','max:30'],
            'description' => ['required', 'min:10'],
            'icon' => ['required', 'min:3'],
        ]);

        $catagory->name = $request->name;
        $catagory->description = $request->description;
        $catagory->icon = $request->icon;
        if($catagory->save()){
            return redirect('catagory')->with('success','Catagory Updated Successfull');
        }else{
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Catagory  $catagory
     * @return \Illuminate\Http\Response
     */
    public function destroy(Catagory $catagory)
    {
        // $catagory->delete();
        // dd($catagory);
        if(Catagory::destroy($catagory->id)){
            return redirect('catagory')->with('warning','Catagory Deleted Successfull');
        }else{
            return redirect('catagory')->with('error','Could not delete');
        }
    }
}
