<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customers = Customer::paginate(05);
       return view('customer.index')->with('customer', $customers);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('customer.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCustomerRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => ['required', 'unique:customers', 'max:30'],
            'email' => ['required','unique:customers'],
            'phone' => ['required','unique:customers', 'min:11'],
            'address' => ['required'],
            'status' => ['required'],
        ]);


        $cust = new Customer();
        $cust->name = $request->name;
        $cust->email = $request->email;
        $cust->phone = $request->phone;
        $cust->address = $request->address;
        $cust->option1 = $request->option1;
        $cust->option2 = $request->option2;
        $cust->option3 = $request->option3;
        $cust->status = $request->status;
        if($cust->save()){
            return redirect('customer')->with('success','Customer Create Successfull');
        }else{
            return redirect()->back()->withErrors(['error'=> 'Error Occured']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */
    public function show(Customer $customer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */
    public function edit(Customer $customer)
    {
        return view('customer.edit', compact("customer"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCustomerRequest  $request
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Customer $customer)
    {
        {
            $validatedData = $request->validate([
                'name' => ['required', 'max:30'],
                'email' => ['required'],
                'phone' => ['required', 'min:11'],
                'address' => ['required'],
                // 'status' => ['required'],
            ]);
            $customer->name = $request->name;
            $customer->email = $request->email;
            $customer->phone = $request->phone;
            $customer->address = $request->address;
            $customer->option1 = $request->option1;
            $customer->option2 = $request->option2;
            $customer->option3 = $request->option3;
            $customer->status = 1;
            if($customer->save()){
                return redirect('customer')->with('success','Customer Updated Successfull');
                echo "Test";
            }else{
                return redirect()->back()->withErrors(['error'=> 'Error Occured']);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Customer $customer)
    {
        if(Customer::destroy($customer->id)){
            return redirect('customer')->with('warning','customer Deleted Successfull');
        }else{
            return redirect('customer')->with('error','Could not delete');
        }
    }
}
