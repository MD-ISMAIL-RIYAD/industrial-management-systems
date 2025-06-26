<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Manufacturer;
use App\Models\ProductCategory;
use App\Models\ProductSection;
use App\Models\Uom;
use App\Models\ProductType;
use App\Models\ProductUnit;


class ProductController extends Controller
{
    public function index()
    {
        $products = Product::orderBy('id','desc')->paginate(10);
        return view('pages.products.index', compact('products'));
    }

    public function create()
    {
        $manufacturers = \App\Models\Manufacturer::all();
        $productCategories = \App\Models\ProductCategory::all();
        $productSections = \App\Models\ProductSection::all();
        $uoms = \App\Models\Uom::all();
        $productTypes = \App\Models\ProductType::all();
        $productUnits = \App\Models\ProductUnit::all();

        return view('pages.products.create', [
            'mode' => 'create',
            'product' => new Product(),
            'manufacturers' => $manufacturers,
            'productCategories' => $productCategories,
            'productSections' => $productSections,
            'uoms' => $uoms,
            'productTypes' => $productTypes,
            'productUnits' => $productUnits,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Product::create($data);
        return redirect()->route('products.index')->with('success', 'Successfully created!');
    }

    public function show(Product $product)
    {
        return view('pages.products.view', compact('product'));
    }

    public function edit(Product $product)
    {
        $manufacturers = \App\Models\Manufacturer::all();
        $productCategories = \App\Models\ProductCategory::all();
        $productSections = \App\Models\ProductSection::all();
        $uoms = \App\Models\Uom::all();
        $productTypes = \App\Models\ProductType::all();
        $productUnits = \App\Models\ProductUnit::all();

        return view('pages.products.edit', [
            'mode' => 'edit',
            'product' => $product,
            'manufacturers' => $manufacturers,
            'productCategories' => $productCategories,
            'productSections' => $productSections,
            'uoms' => $uoms,
            'productTypes' => $productTypes,
            'productUnits' => $productUnits,

        ]);
    }

    public function update(Request $request, Product $product)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $product->update($data);
        return redirect()->route('products.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('products.index')->with('success', 'Successfully deleted!');
    }
}