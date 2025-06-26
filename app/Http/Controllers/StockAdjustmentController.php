<?php

namespace App\Http\Controllers;

use App\Models\StockAdjustment;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\AdjustmentType;
use App\Models\Werehouse;


class StockAdjustmentController extends Controller
{
    public function index()
    {
        $stockAdjustments = StockAdjustment::orderBy('id','desc')->paginate(10);
        return view('pages.stockAdjustments.index', compact('stockAdjustments'));
    }

    public function create()
    {
        $users = \App\Models\User::all();
        $adjustmentTypes = \App\Models\AdjustmentType::all();
        $werehouses = \App\Models\Werehouse::all();

        return view('pages.stockAdjustments.create', [
            'mode' => 'create',
            'stockAdjustment' => new StockAdjustment(),
            'users' => $users,
            'adjustmentTypes' => $adjustmentTypes,
            'werehouses' => $werehouses,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        StockAdjustment::create($data);
        return redirect()->route('stockAdjustments.index')->with('success', 'Successfully created!');
    }

    public function show(StockAdjustment $stockAdjustment)
    {
        return view('pages.stockAdjustments.view', compact('stockAdjustment'));
    }

    public function edit(StockAdjustment $stockAdjustment)
    {
        $users = \App\Models\User::all();
        $adjustmentTypes = \App\Models\AdjustmentType::all();
        $werehouses = \App\Models\Werehouse::all();

        return view('pages.stockAdjustments.edit', [
            'mode' => 'edit',
            'stockAdjustment' => $stockAdjustment,
            'users' => $users,
            'adjustmentTypes' => $adjustmentTypes,
            'werehouses' => $werehouses,

        ]);
    }

    public function update(Request $request, StockAdjustment $stockAdjustment)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $stockAdjustment->update($data);
        return redirect()->route('stockAdjustments.index')->with('success', 'Successfully updated!');
    }

    public function destroy(StockAdjustment $stockAdjustment)
    {
        $stockAdjustment->delete();
        return redirect()->route('stockAdjustments.index')->with('success', 'Successfully deleted!');
    }
}