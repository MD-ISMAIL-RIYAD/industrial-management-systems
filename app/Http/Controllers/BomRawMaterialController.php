<?php

namespace App\Http\Controllers;

use App\Models\BomRawMaterial;
use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Bom;
use App\Models\Uom;


class BomRawMaterialController extends Controller
{
    public function index()
    {
        $bom_raw_materials = BomRawMaterial::orderBy('id','desc')->paginate(10);
        return view('pages.bom_raw_materials.index', compact('bom_raw_materials'));
    }

    public function create()
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bom_raw_materials.create', [
            'mode' => 'create',
            'bomRawMaterial' => new BomRawMaterial(),
            'items' => $items,
            'boms' => $boms,
            'uoms' => $uoms,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        BomRawMaterial::create($data);
        return redirect()->route('bom_raw_materials.index')->with('success', 'Successfully created!');
    }

    public function show(BomRawMaterial $bomRawMaterial)
    {
        return view('pages.bom_raw_materials.view', compact('bomRawMaterial'));
    }

    public function edit(BomRawMaterial $bomRawMaterial)
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bom_raw_materials.edit', [
            'mode' => 'edit',
            'bomRawMaterial' => $bomRawMaterial,
            'items' => $items,
            'boms' => $boms,
            'uoms' => $uoms,

        ]);
    }

    public function update(Request $request, BomRawMaterial $bomRawMaterial)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $bomRawMaterial->update($data);
        return redirect()->route('bom_raw_materials.index')->with('success', 'Successfully updated!');
    }

    public function destroy(BomRawMaterial $bomRawMaterial)
    {
        $bomRawMaterial->delete();
        return redirect()->route('bom_raw_materials.index')->with('success', 'Successfully deleted!');
    }
}