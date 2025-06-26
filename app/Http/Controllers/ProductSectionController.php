<?php

namespace App\Http\Controllers;

use App\Models\ProductSection;
use Illuminate\Http\Request;


class ProductSectionController extends Controller
{
    public function index()
    {
        $productSections = ProductSection::orderBy('id','desc')->paginate(10);
        return view('pages.productSections.index', compact('productSections'));
    }

    public function create()
    {

        return view('pages.productSections.create', [
            'mode' => 'create',
            'productSection' => new ProductSection(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        ProductSection::create($data);
        return redirect()->route('productSections.index')->with('success', 'Successfully created!');
    }

    public function show(ProductSection $productSection)
    {
        return view('pages.productSections.view', compact('productSection'));
    }

    public function edit(ProductSection $productSection)
    {

        return view('pages.productSections.edit', [
            'mode' => 'edit',
            'productSection' => $productSection,

        ]);
    }

    public function update(Request $request, ProductSection $productSection)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $productSection->update($data);
        return redirect()->route('productSections.index')->with('success', 'Successfully updated!');
    }

    public function destroy(ProductSection $productSection)
    {
        $productSection->delete();
        return redirect()->route('productSections.index')->with('success', 'Successfully deleted!');
    }
}