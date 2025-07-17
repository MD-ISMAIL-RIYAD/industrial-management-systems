<?php

namespace App\Http\Controllers;

use App\Models\Bom;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Stock;
use App\Models\Unit;

class BomController extends Controller
{
    public function index()
    {
        $boms = Bom::orderBy('id','desc')->paginate(10);
        return view('pages.boms.index', compact('boms'));
    }

    public function create()
    {
        {
        $statuses = \App\Models\Status::all();
        $raw_materials=Stock::where('product_type','Raw Materials')
                    ->where('qty', '>',0)
                    ->select('product_id','product_name')
                    ->get();
        $boms=Bom::all();
        $bomId=$boms->max('bom_no');
        $newBomId='#BOM-'. str_pad($bomId+1,5,'0', STR_PAD_LEFT);
        $units= Unit::all();




        return view('pages.boms.create', [
            'mode' => 'create',
            'statuses' => $statuses,
            'raw_materials' => $raw_materials,
            'newBomId'=>$newBomId,
            'units'=>$units,

        ]);
    }
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Bom::create($data);
        return redirect()->route('boms.index')->with('success', 'Successfully created!');
    }

    public function show(Bom $bom)
    {
        return view('pages.boms.view', compact('bom'));
    }

    public function edit(Bom $bom)
    {
        $products = \App\Models\Product::all();

        return view('pages.boms.edit', [
            'mode' => 'edit',
            'bom' => $bom,
            'products' => $products,

        ]);
    }

    public function update(Request $request, Bom $bom)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $bom->update($data);
        return redirect()->route('boms.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Bom $bom)
    {
        $bom->delete();
        return redirect()->route('boms.index')->with('success', 'Successfully deleted!');
    }
}