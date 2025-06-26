<?php

namespace App\Http\Controllers;

use App\Models\ProductUnit;
use Illuminate\Http\Request;


class ProductUnitController extends Controller
{
    public function index()
    {
        $productUnits = ProductUnit::orderBy('id','desc')->paginate(10);
        return view('pages.productUnits.index', compact('productUnits'));
    }

    public function create()
    {

        return view('pages.productUnits.create', [
            'mode' => 'create',
            'productUnit' => new ProductUnit(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductUnit::create($data);
        return redirect()->route('productUnits.index')->with('success', 'Successfully created!');
    }

    public function show(ProductUnit $productUnit)
    {
        return view('pages.productUnits.view', compact('productUnit'));
    }

    public function edit(ProductUnit $productUnit)
    {

        return view('pages.productUnits.edit', [
            'mode' => 'edit',
            'productUnit' => $productUnit,

        ]);
    }

    public function update(Request $request, ProductUnit $productUnit)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productUnit->update($data);
        return redirect()->route('productUnits.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductUnit $productUnit)
    {
        $productUnit->delete();
        return redirect()->route('productUnits.index')->with('success', 'Successfully deleted!');
    }
}