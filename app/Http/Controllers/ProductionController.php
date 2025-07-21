<?php

namespace App\Http\Controllers;

use App\Models\Production;
use Illuminate\Http\Request;
use App\Models\Bom;
use App\Models\Warehouse;
use App\Models\Section;


class ProductionController extends Controller
{
    public function index()
    {
        $productions = Production::orderBy('id','desc')->paginate(10);
        return view('pages.productions.index', compact('productions'));
    }

    public function create()
    {
        $boms = \App\Models\Bom::all();
        $warehouses = \App\Models\Warehouse::all();
        $sections = \App\Models\Section::all();

        return view('pages.productions.create', [
            'mode' => 'create',
            'production' => new Production(),
            'boms' => $boms,
            'warehouses' => $warehouses,
            'sections' => $sections,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Production::create($data);
        return redirect()->route('productions.index')->with('success', 'Successfully created!');
    }

    public function show(Production $production)
    {
        return view('pages.productions.view', compact('production'));
    }

    public function edit(Production $production)
    {
        $boms = \App\Models\Bom::all();
        $warehouses = \App\Models\Warehouse::all();
        $sections = \App\Models\Section::all();

        return view('pages.productions.edit', [
            'mode' => 'edit',
            'production' => $production,
            'boms' => $boms,
            'warehouses' => $warehouses,
            'sections' => $sections,

        ]);
    }

    public function update(Request $request, Production $production)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $production->update($data);
        return redirect()->route('productions.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Production $production)
    {
        $production->delete();
        return redirect()->route('productions.index')->with('success', 'Successfully deleted!');
    }
}