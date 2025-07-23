<?php

namespace App\Http\Controllers;

use App\Models\PurchaseReturn;
use Illuminate\Http\Request;
use App\Models\Purchase;
use App\Models\Supplier;


class PurchaseReturnController extends Controller
{
    public function index()
    {
        $purchase_returns = PurchaseReturn::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_returns.index', compact('purchase_returns'));
    }

    public function create()
    {
        $purchases = \App\Models\Purchase::all();
        $suppliers = \App\Models\Supplier::all();

        return view('pages.purchase_returns.create', [
            'mode' => 'create',
            'purchaseReturn' => new PurchaseReturn(),
            'purchases' => $purchases,
            'suppliers' => $suppliers,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        PurchaseReturn::create($data);
        return redirect()->route('purchase_returns.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseReturn $purchaseReturn)
    {
        return view('pages.purchase_returns.view', compact('purchaseReturn'));
    }

    public function edit(PurchaseReturn $purchaseReturn)
    {
        $purchases = \App\Models\Purchase::all();
        $suppliers = \App\Models\Supplier::all();

        return view('pages.purchase_returns.edit', [
            'mode' => 'edit',
            'purchaseReturn' => $purchaseReturn,
            'purchases' => $purchases,
            'suppliers' => $suppliers,

        ]);
    }

    public function update(Request $request, PurchaseReturn $purchaseReturn)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseReturn->update($data);
        return redirect()->route('purchase_returns.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseReturn $purchaseReturn)
    {
        $purchaseReturn->delete();
        return redirect()->route('purchase_returns.index')->with('success', 'Successfully deleted!');
    }
}