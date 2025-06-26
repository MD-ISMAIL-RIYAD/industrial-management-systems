<?php

namespace App\Http\Controllers;

use App\Models\Position;
use Illuminate\Http\Request;
use App\Models\Department;


class PositionController extends Controller
{
    public function index()
    {
        $positions = Position::orderBy('id','desc')->paginate(10);
        return view('pages.positions.index', compact('positions'));
    }

    public function create()
    {
        $departments = \App\Models\Department::all();

        return view('pages.positions.create', [
            'mode' => 'create',
            'position' => new Position(),
            'departments' => $departments,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Position::create($data);
        return redirect()->route('positions.index')->with('success', 'Successfully created!');
    }

    public function show(Position $position)
    {
        return view('pages.positions.view', compact('position'));
    }

    public function edit(Position $position)
    {
        $departments = \App\Models\Department::all();

        return view('pages.positions.edit', [
            'mode' => 'edit',
            'position' => $position,
            'departments' => $departments,

        ]);
    }

    public function update(Request $request, Position $position)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $position->update($data);
        return redirect()->route('positions.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Position $position)
    {
        $position->delete();
        return redirect()->route('positions.index')->with('success', 'Successfully deleted!');
    }
}