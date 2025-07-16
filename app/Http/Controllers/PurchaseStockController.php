<?php

namespace App\Http\Controllers;

use App\Models\PurchaseStock;
use Illuminate\Http\Request;
use App\Models\Purchase;
use App\Models\Item;
use App\Models\Warehouse;
use App\Models\Unit;


class PurchaseStockController extends Controller
{
    public function index()
    {
        $purchase_stocks = PurchaseStock::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_stocks.index', compact('purchase_stocks'));
    }

    public function create()
    {
        $purchases = \App\Models\Purchase::all();
        $items = \App\Models\Item::all();
        $warehouses = \App\Models\Warehouse::all();
        $units = \App\Models\Unit::all();

        return view('pages.purchase_stocks.create', [
            'mode' => 'create',
            'purchaseStock' => new PurchaseStock(),
            'purchases' => $purchases,
            'items' => $items,
            'warehouses' => $warehouses,
            'units' => $units,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        PurchaseStock::create($data);
        return redirect()->route('purchase_stocks.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseStock $purchaseStock)
    {
        return view('pages.purchase_stocks.view', compact('purchaseStock'));
    }

    public function edit(PurchaseStock $purchaseStock)
    {
        $purchases = \App\Models\Purchase::all();
        $items = \App\Models\Item::all();
        $warehouses = \App\Models\Warehouse::all();
        $units = \App\Models\Unit::all();

        return view('pages.purchase_stocks.edit', [
            'mode' => 'edit',
            'purchaseStock' => $purchaseStock,
            'purchases' => $purchases,
            'items' => $items,
            'warehouses' => $warehouses,
            'units' => $units,

        ]);
    }

    public function update(Request $request, PurchaseStock $purchaseStock)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseStock->update($data);
        return redirect()->route('purchase_stocks.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseStock $purchaseStock)
    {
        $purchaseStock->delete();
        return redirect()->route('purchase_stocks.index')->with('success', 'Successfully deleted!');
    }
}