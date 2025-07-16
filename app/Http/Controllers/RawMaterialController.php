<?php

namespace App\Http\Controllers;

use App\Models\RawMaterial;
use Illuminate\Http\Request;
use App\Models\Unit;
use App\Models\Category;


class RawMaterialController extends Controller
{
    public function index()
    {
        $raw_materials = RawMaterial::orderBy('id','desc')->paginate(10);
        return view('pages.raw_materials.index', compact('raw_materials'));
    }

    public function create()
    {
        $units = \App\Models\Unit::all();
        $categories = \App\Models\Category::all();

        return view('pages.raw_materials.create', [
            'mode' => 'create',
            'rawMaterial' => new RawMaterial(),
            'units' => $units,
            'categories' => $categories,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        RawMaterial::create($data);
        return redirect()->route('raw_materials.index')->with('success', 'Successfully created!');
    }

    public function show(RawMaterial $rawMaterial)
    {
        return view('pages.raw_materials.view', compact('rawMaterial'));
    }

    public function edit(RawMaterial $rawMaterial)
    {
        $units = \App\Models\Unit::all();
        $categories = \App\Models\Category::all();

        return view('pages.raw_materials.edit', [
            'mode' => 'edit',
            'rawMaterial' => $rawMaterial,
            'units' => $units,
            'categories' => $categories,

        ]);
    }

    public function update(Request $request, RawMaterial $rawMaterial)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $rawMaterial->update($data);
        return redirect()->route('raw_materials.index')->with('success', 'Successfully updated!');
    }

    public function destroy(RawMaterial $rawMaterial)
    {
        $rawMaterial->delete();
        return redirect()->route('raw_materials.index')->with('success', 'Successfully deleted!');
    }
}