<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;


class SupplierController extends Controller
{
    public function index()
    {
        $suppliers = Supplier::orderBy('id','desc')->paginate(10);
        return view('pages.suppliers.index', compact('suppliers'));
    }

    public function create()
    {

        return view('pages.suppliers.create', [
            'mode' => 'create',
            'supplier' => new Supplier(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Supplier::create($data);
        return redirect()->route('suppliers.index')->with('success', 'Successfully created!');
    }

    public function show(Supplier $supplier)
    {
        return view('pages.suppliers.view', compact('supplier'));
    }

    public function edit(Supplier $supplier)
    {

        return view('pages.suppliers.edit', [
            'mode' => 'edit',
            'supplier' => $supplier,

        ]);
    }

    public function update(Request $request, Supplier $supplier)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $supplier->update($data);
        return redirect()->route('suppliers.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Supplier $supplier)
    {
        $supplier->delete();
        return redirect()->route('suppliers.index')->with('success', 'Successfully deleted!');
    }
}