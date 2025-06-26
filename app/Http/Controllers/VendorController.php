<?php

namespace App\Http\Controllers;

use App\Models\Vendor;
use Illuminate\Http\Request;


class VendorController extends Controller
{
    public function index()
    {
        $vendors = Vendor::orderBy('id','desc')->paginate(10);
        return view('pages.vendors.index', compact('vendors'));
    }

    public function create()
    {

        return view('pages.vendors.create', [
            'mode' => 'create',
            'vendor' => new Vendor(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Vendor::create($data);
        return redirect()->route('vendors.index')->with('success', 'Successfully created!');
    }

    public function show(Vendor $vendor)
    {
        return view('pages.vendors.view', compact('vendor'));
    }

    public function edit(Vendor $vendor)
    {

        return view('pages.vendors.edit', [
            'mode' => 'edit',
            'vendor' => $vendor,

        ]);
    }

    public function update(Request $request, Vendor $vendor)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $vendor->update($data);
        return redirect()->route('vendors.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Vendor $vendor)
    {
        $vendor->delete();
        return redirect()->route('vendors.index')->with('success', 'Successfully deleted!');
    }
}