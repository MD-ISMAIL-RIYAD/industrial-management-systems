<?php

namespace App\Http\Controllers;

use App\Models\ProductType;
use Illuminate\Http\Request;


class ProductTypeController extends Controller
{
    public function index()
    {
        $product_types = ProductType::orderBy('id','desc')->paginate(10);
        return view('pages.product_types.index', compact('product_types'));
    }

    public function create()
    {

        return view('pages.product_types.create', [
            'mode' => 'create',
            'productType' => new ProductType(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductType::create($data);
        return redirect()->route('product_types.index')->with('success', 'Successfully created!');
    }

    public function show(ProductType $productType)
    {
        return view('pages.product_types.view', compact('productType'));
    }

    public function edit(ProductType $productType)
    {

        return view('pages.product_types.edit', [
            'mode' => 'edit',
            'productType' => $productType,

        ]);
    }

    public function update(Request $request, ProductType $productType)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productType->update($data);
        return redirect()->route('product_types.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductType $productType)
    {
        $productType->delete();
        return redirect()->route('product_types.index')->with('success', 'Successfully deleted!');
    }
}