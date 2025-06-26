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
        $purchaseDetails = PurchaseDetail::orderBy('id','desc')->paginate(10);
        return view('pages.purchaseDetails.index', compact('purchaseDetails'));
    }

    public function create()
    {
        $purchases = \App\Models\Purchase::all();
        $products = \App\Models\Product::all();

        return view('pages.purchaseDetails.create', [
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
        return redirect()->route('purchaseDetails.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseDetail $purchaseDetail)
    {
        return view('pages.purchaseDetails.view', compact('purchaseDetail'));
    }

    public function edit(PurchaseDetail $purchaseDetail)
    {
        $purchases = \App\Models\Purchase::all();
        $products = \App\Models\Product::all();

        return view('pages.purchaseDetails.edit', [
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
        return redirect()->route('purchaseDetails.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseDetail $purchaseDetail)
    {
        $purchaseDetail->delete();
        return redirect()->route('purchaseDetails.index')->with('success', 'Successfully deleted!');
    }
}