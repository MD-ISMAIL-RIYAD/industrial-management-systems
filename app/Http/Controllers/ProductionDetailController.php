<?php

namespace App\Http\Controllers;

use App\Models\ProductionDetail;
use Illuminate\Http\Request;
use App\Models\Production;
use App\Models\Product;
use App\Models\Uom;


class ProductionDetailController extends Controller
{
    public function index()
    {
        $production_details = ProductionDetail::orderBy('id','desc')->paginate(10);
        return view('pages.production_details.index', compact('production_details'));
    }

    public function create()
    {
        $productions = \App\Models\Production::all();
        $products = \App\Models\Product::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.production_details.create', [
            'mode' => 'create',
            'productionDetail' => new ProductionDetail(),
            'productions' => $productions,
            'products' => $products,
            'uoms' => $uoms,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductionDetail::create($data);
        return redirect()->route('production_details.index')->with('success', 'Successfully created!');
    }

    public function show(ProductionDetail $productionDetail)
    {
        return view('pages.production_details.view', compact('productionDetail'));
    }

    public function edit(ProductionDetail $productionDetail)
    {
        $productions = \App\Models\Production::all();
        $products = \App\Models\Product::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.production_details.edit', [
            'mode' => 'edit',
            'productionDetail' => $productionDetail,
            'productions' => $productions,
            'products' => $products,
            'uoms' => $uoms,

        ]);
    }

    public function update(Request $request, ProductionDetail $productionDetail)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productionDetail->update($data);
        return redirect()->route('production_details.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductionDetail $productionDetail)
    {
        $productionDetail->delete();
        return redirect()->route('production_details.index')->with('success', 'Successfully deleted!');
    }
}