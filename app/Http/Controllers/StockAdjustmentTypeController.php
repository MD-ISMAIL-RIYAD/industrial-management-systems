<?php

namespace App\Http\Controllers;

use App\Models\StockAdjustmentType;
use Illuminate\Http\Request;


class StockAdjustmentTypeController extends Controller
{
    public function index()
    {
        $stockAdjustmentTypes = StockAdjustmentType::orderBy('id','desc')->paginate(10);
        return view('pages.stockAdjustmentTypes.index', compact('stockAdjustmentTypes'));
    }

    public function create()
    {

        return view('pages.stockAdjustmentTypes.create', [
            'mode' => 'create',
            'stockAdjustmentType' => new StockAdjustmentType(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        StockAdjustmentType::create($data);
        return redirect()->route('stockAdjustmentTypes.index')->with('success', 'Successfully created!');
    }

    public function show(StockAdjustmentType $stockAdjustmentType)
    {
        return view('pages.stockAdjustmentTypes.view', compact('stockAdjustmentType'));
    }

    public function edit(StockAdjustmentType $stockAdjustmentType)
    {

        return view('pages.stockAdjustmentTypes.edit', [
            'mode' => 'edit',
            'stockAdjustmentType' => $stockAdjustmentType,

        ]);
    }

    public function update(Request $request, StockAdjustmentType $stockAdjustmentType)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $stockAdjustmentType->update($data);
        return redirect()->route('stockAdjustmentTypes.index')->with('success', 'Successfully updated!');
    }

    public function destroy(StockAdjustmentType $stockAdjustmentType)
    {
        $stockAdjustmentType->delete();
        return redirect()->route('stockAdjustmentTypes.index')->with('success', 'Successfully deleted!');
    }
}