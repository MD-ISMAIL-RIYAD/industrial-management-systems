<?php

namespace App\Http\Controllers;

use App\Models\StockAdjustmentDetail;
use Illuminate\Http\Request;
use App\Models\Adjustment;
use App\Models\Product;


class StockAdjustmentDetailController extends Controller
{
    public function index()
    {
        $stock_adjustment_details = StockAdjustmentDetail::orderBy('id','desc')->paginate(10);
        return view('pages.stock_adjustment_details.index', compact('stock_adjustment_details'));
    }

    public function create()
    {
        $adjustments = \App\Models\Adjustment::all();
        $products = \App\Models\Product::all();

        return view('pages.stock_adjustment_details.create', [
            'mode' => 'create',
            'stockAdjustmentDetail' => new StockAdjustmentDetail(),
            'adjustments' => $adjustments,
            'products' => $products,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        StockAdjustmentDetail::create($data);
        return redirect()->route('stock_adjustment_details.index')->with('success', 'Successfully created!');
    }

    public function show(StockAdjustmentDetail $stockAdjustmentDetail)
    {
        return view('pages.stock_adjustment_details.view', compact('stockAdjustmentDetail'));
    }

    public function edit(StockAdjustmentDetail $stockAdjustmentDetail)
    {
        $adjustments = \App\Models\Adjustment::all();
        $products = \App\Models\Product::all();

        return view('pages.stock_adjustment_details.edit', [
            'mode' => 'edit',
            'stockAdjustmentDetail' => $stockAdjustmentDetail,
            'adjustments' => $adjustments,
            'products' => $products,

        ]);
    }

    public function update(Request $request, StockAdjustmentDetail $stockAdjustmentDetail)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $stockAdjustmentDetail->update($data);
        return redirect()->route('stock_adjustment_details.index')->with('success', 'Successfully updated!');
    }

    public function destroy(StockAdjustmentDetail $stockAdjustmentDetail)
    {
        $stockAdjustmentDetail->delete();
        return redirect()->route('stock_adjustment_details.index')->with('success', 'Successfully deleted!');
    }
}