<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;
use App\Models\Supplier;
use App\Models\Status;


class PurchaseController extends Controller
{
    public function index()
    {
        $purchases = Purchase::orderBy('id','desc')->paginate(10);
        return view('pages.purchases.index', compact('purchases'));
    }

    public function create()
    {
        $suppliers = \App\Models\Supplier::all();
        $statuses = \App\Models\Status::all();
        $products=Product::all();
        $purchase=Purchase::all();
        $customers=Customer::all();
        $purchaseId=$purchase->max('id');
        $newPurchaseId='#POI-'. str_pad($purchaseId+1,5,'0', STR_PAD_LEFT);


        return view('pages.purchases.create', [
            'mode' => 'create',
            'purchase' => new Purchase(),
            'suppliers' => $suppliers,
            'statuses' => $statuses,
            'products' => $products,
            'newPurchaseId'=>$newPurchaseId,
            'customers'=>$customers,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Purchase::create($data);
        return redirect()->route('purchases.index')->with('success', 'Successfully created!');
    }

    public function show(Purchase $purchase)
    {
        return view('pages.purchases.view', compact('purchase'));
    }

    public function edit(Purchase $purchase)
    {
        $suppliers = \App\Models\Supplier::all();
        $statuses = \App\Models\Status::all();

        return view('pages.purchases.edit', [
            'mode' => 'edit',
            'purchase' => $purchase,
            'suppliers' => $suppliers,
            'statuses' => $statuses,

        ]);
    }

    public function update(Request $request, Purchase $purchase)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchase->update($data);
        return redirect()->route('purchases.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Purchase $purchase)
    {
        $purchase->delete();
        return redirect()->route('purchases.index')->with('success', 'Successfully deleted!');
    }
}