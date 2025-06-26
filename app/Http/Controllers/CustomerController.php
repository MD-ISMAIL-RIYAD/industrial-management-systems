<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;


class CustomerController extends Controller
{
    public function index()
    {
        $customers = Customer::orderBy('id','desc')->paginate(10);
        return view('pages.customers.index', compact('customers'));
    }

    public function create()
    {

        return view('pages.customers.create', [
            'mode' => 'create',
            'customer' => new Customer(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Customer::create($data);
        return redirect()->route('customers.index')->with('success', 'Successfully created!');
    }

    public function show(Customer $customer)
    {
        return view('pages.customers.view', compact('customer'));
    }

    public function edit(Customer $customer)
    {

        return view('pages.customers.edit', [
            'mode' => 'edit',
            'customer' => $customer,

        ]);
    }

    public function update(Request $request, Customer $customer)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $customer->update($data);
        return redirect()->route('customers.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Customer $customer)
    {
        $customer->delete();
        return redirect()->route('customers.index')->with('success', 'Successfully deleted!');
    }
}