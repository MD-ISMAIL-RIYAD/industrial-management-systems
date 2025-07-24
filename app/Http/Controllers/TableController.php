<?php

namespace App\Http\Controllers;

use App\Models\Table;
use Illuminate\Http\Request;


class TableController extends Controller
{
    public function index()
    {
        $tables = Table::orderBy('id','desc')->paginate(10);
        return view('pages.tables.index', compact('tables'));
    }

    public function create()
    {

        return view('pages.tables.create', [
            'mode' => 'create',
            'table' => new Table(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Table::create($data);
        return redirect()->route('tables.index')->with('success', 'Successfully created!');
    }

    public function show(Table $table)
    {
        return view('pages.tables.view', compact('table'));
    }

    public function edit(Table $table)
    {

        return view('pages.tables.edit', [
            'mode' => 'edit',
            'table' => $table,

        ]);
    }

    public function update(Request $request, Table $table)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $table->update($data);
        return redirect()->route('tables.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Table $table)
    {
        $table->delete();
        return redirect()->route('tables.index')->with('success', 'Successfully deleted!');
    }
}