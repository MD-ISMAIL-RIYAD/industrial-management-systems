<?php

namespace App\Http\Controllers;

use App\Models\Uom;
use Illuminate\Http\Request;


class UomController extends Controller
{
    public function index()
    {
        $uoms = Uom::orderBy('id','desc')->paginate(10);
        return view('pages.uoms.index', compact('uoms'));
    }

    public function create()
    {

        return view('pages.uoms.create', [
            'mode' => 'create',
            'uom' => new Uom(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Uom::create($data);
        return redirect()->route('uoms.index')->with('success', 'Successfully created!');
    }

    public function show(Uom $uom)
    {
        return view('pages.uoms.view', compact('uom'));
    }

    public function edit(Uom $uom)
    {

        return view('pages.uoms.edit', [
            'mode' => 'edit',
            'uom' => $uom,

        ]);
    }

    public function update(Request $request, Uom $uom)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $uom->update($data);
        return redirect()->route('uoms.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Uom $uom)
    {
        $uom->delete();
        return redirect()->route('uoms.index')->with('success', 'Successfully deleted!');
    }
}