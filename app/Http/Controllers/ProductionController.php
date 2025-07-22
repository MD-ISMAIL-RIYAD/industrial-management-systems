<?php

namespace App\Http\Controllers;

use App\Models\Production;
use Illuminate\Http\Request;
use App\Models\Bom;
use App\Models\Warehouse;
use App\Models\Uom;
use App\Models\Manufacturer;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Stock;

class ProductionController extends Controller
{
    public function index()
    {
        $productions = Production::orderBy('id','desc')->paginate(10);
        return view('pages.productions.index', compact('productions'));
    }

    public function create()
    {
        $boms = \App\Models\Bom::all();
        $warehouses = \App\Models\Warehouse::all();
        $uoms = \App\Models\Uom::all();
        $manufacturers = \App\Models\Manufacturer::all();
        $productCategories = \App\Models\ProductCategory::all();

        return view('pages.productions.create', [
            'mode' => 'create',
            'production' => new Production(),
            'boms' => $boms,
            'warehouses' => $warehouses,
            'uoms' => $uoms,
            'manufacturers' => $manufacturers,
            'productCategories' => $productCategories,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }      

        Production::create($data);

        //saving to product table
        $product= new Product();
        $product->name=$request->product_name;
        $product->price=$request->price;
        $product->manufacturer_id=$request->manufacturer_id;
        $product->bom_id=$request->bom_id;
        $product->product_category_id=$request->product_category_id;
        $product->uom_id=$request->uom_id;
        $product->save();

        //saving to stock table
        $stock=new Stock();
        $stock->product_id=$product->id;
        $stock->qty=$request->qty;
        $stock->transaction_type_id=3;
        $stock->remark="Production";
        $stock->warehouse_id=$request->warehouse_id;
        $stock->product_type='Finished Good';
        $stock->product_name=$request->product_name;
        $stock->save();

        return redirect()->route('productions.index')->with('success', 'Successfully created!');
    }

    public function show(Production $production)
    {
        return view('pages.productions.view', compact('production'));
    }

    public function edit(Production $production)
    {
        $boms = \App\Models\Bom::all();
        $warehouses = \App\Models\Warehouse::all();
        $uoms = \App\Models\Uom::all();
        $manufacturers = \App\Models\Manufacturer::all();
        $productCategories = \App\Models\ProductCategory::all();

        return view('pages.productions.edit', [
            'mode' => 'edit',
            'production' => $production,
            'boms' => $boms,
            'warehouses' => $warehouses,
            'uoms' => $uoms,
            'manufacturers' => $manufacturers,
            'productCategories' => $productCategories,

        ]);
    }

    public function update(Request $request, Production $production)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $production->update($data);
        return redirect()->route('productions.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Production $production)
    {
        $production->delete();
        return redirect()->route('productions.index')->with('success', 'Successfully deleted!');
    }
}