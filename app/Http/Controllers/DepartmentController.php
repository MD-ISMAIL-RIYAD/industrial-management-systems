<?php

namespace App\Http\Controllers;

use App\Models\Department;
use Illuminate\Http\Request;


class DepartmentController extends Controller
{
    public function index()
    {
        $departments = Department::orderBy('id','desc')->paginate(10);
        return view('pages.departments.index', compact('departments'));
    }

    public function create()
    {

        return view('pages.departments.create', [
            'mode' => 'create',
            'department' => new Department(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Department::create($data);
        return redirect()->route('departments.index')->with('success', 'Successfully created!');
    }

    public function show(Department $department)
    {
        return view('pages.departments.view', compact('department'));
    }

    public function edit(Department $department)
    {

        return view('pages.departments.edit', [
            'mode' => 'edit',
            'department' => $department,

        ]);
    }

    public function update(Request $request, Department $department)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $department->update($data);
        return redirect()->route('departments.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Department $department)
    {
        $department->delete();
        return redirect()->route('departments.index')->with('success', 'Successfully deleted!');
    }
}