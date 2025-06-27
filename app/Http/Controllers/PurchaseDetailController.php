<?php

namespace App\Http\Controllers;

use App\Models\PurchaseDetail;
use Illuminate\Http\Request;
use App\Models\Purchase;
use App\Models\Product;


class PurchaseDetailController extends Controller
{
    public function index()
    {
        $purchase_details = PurchaseDetail::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_details.index', compact('purchase_details'));
    }

    public function create()
    {
        $purchases = \App\Models\Purchase::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_details.create', [
            'mode' => 'create',
            'purchaseDetail' => new PurchaseDetail(),
            'purchases' => $purchases,
            'products' => $products,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        PurchaseDetail::create($data);
        return redirect()->route('purchase_details.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseDetail $purchaseDetail)
    {
        return view('pages.purchase_details.view', compact('purchaseDetail'));
    }

    public function edit(PurchaseDetail $purchaseDetail)
    {
        $purchases = \App\Models\Purchase::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_details.edit', [
            'mode' => 'edit',
            'purchaseDetail' => $purchaseDetail,
            'purchases' => $purchases,
            'products' => $products,

        ]);
    }

    public function update(Request $request, PurchaseDetail $purchaseDetail)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseDetail->update($data);
        return redirect()->route('purchase_details.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseDetail $purchaseDetail)
    {
        $purchaseDetail->delete();
        return redirect()->route('purchase_details.index')->with('success', 'Successfully deleted!');
    }
}