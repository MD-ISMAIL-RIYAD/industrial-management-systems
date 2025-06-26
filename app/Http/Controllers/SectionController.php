<?php

namespace App\Http\Controllers;

use App\Models\Section;
use Illuminate\Http\Request;


class SectionController extends Controller
{
    public function index()
    {
        $sections = Section::orderBy('id','desc')->paginate(10);
        return view('pages.sections.index', compact('sections'));
    }

    public function create()
    {

        return view('pages.sections.create', [
            'mode' => 'create',
            'section' => new Section(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Section::create($data);
        return redirect()->route('sections.index')->with('success', 'Successfully created!');
    }

    public function show(Section $section)
    {
        return view('pages.sections.view', compact('section'));
    }

    public function edit(Section $section)
    {

        return view('pages.sections.edit', [
            'mode' => 'edit',
            'section' => $section,

        ]);
    }

    public function update(Request $request, Section $section)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $section->update($data);
        return redirect()->route('sections.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Section $section)
    {
        $section->delete();
        return redirect()->route('sections.index')->with('success', 'Successfully deleted!');
    }
}