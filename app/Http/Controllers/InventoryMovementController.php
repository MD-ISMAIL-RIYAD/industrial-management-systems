<?php

namespace App\Http\Controllers;

use App\Models\InventoryMovement;
use Illuminate\Http\Request;


class InventoryMovementController extends Controller
{
    public function index()
    {
        $bom_row_materials = InventoryMovement::orderBy('id','desc')->paginate(10);
        return view('pages.bom_row_materials.index', compact('bom_row_materials'));
    }

    public function create()
    {

        return view('pages.bom_row_materials.create', [
            'mode' => 'create',
            'inventoryMovement' => new InventoryMovement(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        InventoryMovement::create($data);
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully created!');
    }

    public function show(InventoryMovement $inventoryMovement)
    {
        return view('pages.bom_row_materials.view', compact('inventoryMovement'));
    }

    public function edit(InventoryMovement $inventoryMovement)
    {

        return view('pages.bom_row_materials.edit', [
            'mode' => 'edit',
            'inventoryMovement' => $inventoryMovement,

        ]);
    }

    public function update(Request $request, InventoryMovement $inventoryMovement)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $inventoryMovement->update($data);
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully updated!');
    }

    public function destroy(InventoryMovement $inventoryMovement)
    {
        $inventoryMovement->delete();
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully deleted!');
    }
}