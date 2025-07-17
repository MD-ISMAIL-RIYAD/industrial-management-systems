<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use Illuminate\Http\Request;


class UnitController extends Controller
{
    public function index()
    {
        $units = Unit::orderBy('id','desc')->paginate(10);
        return view('pages.units.index', compact('units'));
    }

    public function create()
    {

        return view('pages.units.create', [
            'mode' => 'create',
            'unit' => new Unit(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Unit::create($data);
        return redirect()->route('units.index')->with('success', 'Successfully created!');
    }

    public function show(Unit $unit)
    {
        return view('pages.units.view', compact('unit'));
    }

    public function edit(Unit $unit)
    {

        return view('pages.units.edit', [
            'mode' => 'edit',
            'unit' => $unit,

        ]);
    }

    public function update(Request $request, Unit $unit)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $unit->update($data);
        return redirect()->route('units.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Unit $unit)
    {
        $unit->delete();
        return redirect()->route('units.index')->with('success', 'Successfully deleted!');
    }
}