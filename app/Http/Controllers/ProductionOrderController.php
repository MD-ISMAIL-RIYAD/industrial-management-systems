<?php

namespace App\Http\Controllers;

use App\Models\ProductionOrder;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Warehouse;


class ProductionOrderController extends Controller
{
    public function index()
    {
        $Production_orders = ProductionOrder::orderBy('id','desc')->paginate(10);
        return view('pages.Production_orders.index', compact('Production_orders'));
    }

    public function create()
    {
        $products = \App\Models\Product::all();
        $warehouses = \App\Models\Warehouse::all();

        return view('pages.Production_orders.create', [
            'mode' => 'create',
            'productionOrder' => new ProductionOrder(),
            'products' => $products,
            'warehouses' => $warehouses,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductionOrder::create($data);
        return redirect()->route('Production_orders.index')->with('success', 'Successfully created!');
    }

    public function show(ProductionOrder $productionOrder)
    {
        return view('pages.Production_orders.view', compact('productionOrder'));
    }

    public function edit(ProductionOrder $productionOrder)
    {
        $products = \App\Models\Product::all();
        $warehouses = \App\Models\Warehouse::all();

        return view('pages.Production_orders.edit', [
            'mode' => 'edit',
            'productionOrder' => $productionOrder,
            'products' => $products,
            'warehouses' => $warehouses,

        ]);
    }

    public function update(Request $request, ProductionOrder $productionOrder)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productionOrder->update($data);
        return redirect()->route('Production_orders.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductionOrder $productionOrder)
    {
        $productionOrder->delete();
        return redirect()->route('Production_orders.index')->with('success', 'Successfully deleted!');
    }
}