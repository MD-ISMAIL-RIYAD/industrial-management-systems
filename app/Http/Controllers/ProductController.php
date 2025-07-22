<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Manufacturer;
use App\Models\Bom;
use App\Models\ProductCategory;
use App\Models\Uom;


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
        $boms = \App\Models\Bom::all();
        $productCategories = \App\Models\ProductCategory::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.products.create', [
            'mode' => 'create',
            'product' => new Product(),
            'manufacturers' => $manufacturers,
            'boms' => $boms,
            'productCategories' => $productCategories,
            'uoms' => $uoms,

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
        $boms = \App\Models\Bom::all();
        $productCategories = \App\Models\ProductCategory::all();
        $uoms = \App\Models\Uom::all();

        return view('pages.products.edit', [
            'mode' => 'edit',
            'product' => $product,
            'manufacturers' => $manufacturers,
            'boms' => $boms,
            'productCategories' => $productCategories,
            'uoms' => $uoms,

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