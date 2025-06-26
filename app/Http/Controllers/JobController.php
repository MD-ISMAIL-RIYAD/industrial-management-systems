<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;


class JobController extends Controller
{
    public function index()
    {
        $jobs = Job::orderBy('id','desc')->paginate(10);
        return view('pages.jobs.index', compact('jobs'));
    }

    public function create()
    {

        return view('pages.jobs.create', [
            'mode' => 'create',
            'job' => new Job(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Job::create($data);
        return redirect()->route('jobs.index')->with('success', 'Successfully created!');
    }

    public function show(Job $job)
    {
        return view('pages.jobs.view', compact('job'));
    }

    public function edit(Job $job)
    {

        return view('pages.jobs.edit', [
            'mode' => 'edit',
            'job' => $job,

        ]);
    }

    public function update(Request $request, Job $job)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $job->update($data);
        return redirect()->route('jobs.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Job $job)
    {
        $job->delete();
        return redirect()->route('jobs.index')->with('success', 'Successfully deleted!');
    }
}