<?php

namespace App\Http\Controllers;

use App\Models\StockAdjustmentType;
use Illuminate\Http\Request;


class StockAdjustmentTypeController extends Controller
{
    public function index()
    {
        $stock_adjustment_types = StockAdjustmentType::orderBy('id','desc')->paginate(10);
        return view('pages.stock_adjustment_types.index', compact('stock_adjustment_types'));
    }

    public function create()
    {

        return view('pages.stock_adjustment_types.create', [
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
        return redirect()->route('stock_adjustment_types.index')->with('success', 'Successfully created!');
    }

    public function show(StockAdjustmentType $stockAdjustmentType)
    {
        return view('pages.stock_adjustment_types.view', compact('stockAdjustmentType'));
    }

    public function edit(StockAdjustmentType $stockAdjustmentType)
    {

        return view('pages.stock_adjustment_types.edit', [
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
        return redirect()->route('stock_adjustment_types.index')->with('success', 'Successfully updated!');
    }

    public function destroy(StockAdjustmentType $stockAdjustmentType)
    {
        $stockAdjustmentType->delete();
        return redirect()->route('stock_adjustment_types.index')->with('success', 'Successfully deleted!');
    }
}