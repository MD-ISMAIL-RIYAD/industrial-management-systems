<?php

namespace App\Http\Controllers;

use App\Models\ProductCategory;
use Illuminate\Http\Request;
use App\Models\ProductSection;


class ProductCategoryController extends Controller
{
    public function index()
    {
        $product_categories = ProductCategory::orderBy('id','desc')->paginate(10);
        return view('pages.product_categories.index', compact('product_categories'));
    }

    public function create()
    {
        $productSections = \App\Models\ProductSection::all();

        return view('pages.product_categories.create', [
            'mode' => 'create',
            'productCategory' => new ProductCategory(),
            'productSections' => $productSections,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductCategory::create($data);
        return redirect()->route('product_categories.index')->with('success', 'Successfully created!');
    }

    public function show(ProductCategory $productCategory)
    {
        return view('pages.product_categories.view', compact('productCategory'));
    }

    public function edit(ProductCategory $productCategory)
    {
        $productSections = \App\Models\ProductSection::all();

        return view('pages.product_categories.edit', [
            'mode' => 'edit',
            'productCategory' => $productCategory,
            'productSections' => $productSections,

        ]);
    }

    public function update(Request $request, ProductCategory $productCategory)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productCategory->update($data);
        return redirect()->route('product_categories.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductCategory $productCategory)
    {
        $productCategory->delete();
        return redirect()->route('product_categories.index')->with('success', 'Successfully deleted!');
    }
}