<?php

namespace App\Http\Controllers;

use App\Models\Manufacturer;
use Illuminate\Http\Request;


class ManufacturerController extends Controller
{
    public function index()
    {
        $manufacturers = Manufacturer::orderBy('id','desc')->paginate(10);
        return view('pages.manufacturers.index', compact('manufacturers'));
    }

    public function create()
    {

        return view('pages.manufacturers.create', [
            'mode' => 'create',
            'manufacturer' => new Manufacturer(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Manufacturer::create($data);
        return redirect()->route('manufacturers.index')->with('success', 'Successfully created!');
    }

    public function show(Manufacturer $manufacturer)
    {
        return view('pages.manufacturers.view', compact('manufacturer'));
    }

    public function edit(Manufacturer $manufacturer)
    {

        return view('pages.manufacturers.edit', [
            'mode' => 'edit',
            'manufacturer' => $manufacturer,

        ]);
    }

    public function update(Request $request, Manufacturer $manufacturer)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $manufacturer->update($data);
        return redirect()->route('manufacturers.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Manufacturer $manufacturer)
    {
        $manufacturer->delete();
        return redirect()->route('manufacturers.index')->with('success', 'Successfully deleted!');
    }
}