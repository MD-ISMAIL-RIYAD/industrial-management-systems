<?php

namespace App\Http\Controllers;

use App\Models\BomRowMaterial;
use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Bom;
use App\Models\Uom;


class BomRowMaterialController extends Controller
{
    public function index()
    {
        $bom_row_materials = BomRowMaterial::orderBy('id','desc')->paginate(10);
        return view('pages.bom_row_materials.index', compact('bom_row_materials'));
    }

    public function create()
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bom_row_materials.create', [
            'mode' => 'create',
            'bomRowMaterial' => new BomRowMaterial(),
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
        BomRowMaterial::create($data);
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully created!');
    }

    public function show(BomRowMaterial $bomRowMaterial)
    {
        return view('pages.bom_row_materials.view', compact('bomRowMaterial'));
    }

    public function edit(BomRowMaterial $bomRowMaterial)
    {
        $items = \App\Models\Item::all();
        $boms = \App\Models\Bom::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.bom_row_materials.edit', [
            'mode' => 'edit',
            'bomRowMaterial' => $bomRowMaterial,
            'items' => $items,
            'boms' => $boms,
            'uoms' => $uoms,

        ]);
    }

    public function update(Request $request, BomRowMaterial $bomRowMaterial)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $bomRowMaterial->update($data);
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully updated!');
    }

    public function destroy(BomRowMaterial $bomRowMaterial)
    {
        $bomRowMaterial->delete();
        return redirect()->route('bom_row_materials.index')->with('success', 'Successfully deleted!');
    }
}