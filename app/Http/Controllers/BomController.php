<?php

namespace App\Http\Controllers;

use App\Models\Bom;
use Illuminate\Http\Request;
use App\Models\Product;


class BomController extends Controller
{
    public function index()
    {
        $boms = Bom::orderBy('id','desc')->paginate(10);
        return view('pages.boms.index', compact('boms'));
    }

    public function create()
    {
        $products = \App\Models\Product::all();

        return view('pages.boms.create', [
            'mode' => 'create',
            'bom' => new Bom(),
            'products' => $products,

        ]);
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