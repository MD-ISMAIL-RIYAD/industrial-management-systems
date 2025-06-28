<?php

namespace App\Http\Controllers;

use App\Models\Warehouse;
use Illuminate\Http\Request;


class WarehouseController extends Controller
{
    public function index()
    {
        $warehouses = Warehouse::orderBy('id','desc')->paginate(10);
        return view('pages.warehouses.index', compact('warehouses'));
    }

    public function create()
    {

        return view('pages.warehouses.create', [
            'mode' => 'create',
            'warehouse' => new Warehouse(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Warehouse::create($data);
        return redirect()->route('warehouses.index')->with('success', 'Successfully created!');
    }

    public function show(Warehouse $warehouse)
    {
        return view('pages.warehouses.view', compact('warehouse'));
    }

    public function edit(Warehouse $warehouse)
    {

        return view('pages.warehouses.edit', [
            'mode' => 'edit',
            'warehouse' => $warehouse,

        ]);
    }

    public function update(Request $request, Warehouse $warehouse)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $warehouse->update($data);
        return redirect()->route('warehouses.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Warehouse $warehouse)
    {
        $warehouse->delete();
        return redirect()->route('warehouses.index')->with('success', 'Successfully deleted!');
    }
}