<?php

namespace App\Http\Controllers;

use App\Models\PurchaseInvoicesItem;
use Illuminate\Http\Request;
use App\Models\PurchaseInvoice;
use App\Models\Product;


class PurchaseInvoicesItemController extends Controller
{
    public function index()
    {
        $purchase_invoices_items = PurchaseInvoicesItem::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_invoices_items.index', compact('purchase_invoices_items'));
    }

    public function create()
    {
        $purchaseInvoices = \App\Models\PurchaseInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_invoices_items.create', [
            'mode' => 'create',
            'purchaseInvoicesItem' => new PurchaseInvoicesItem(),
            'purchaseInvoices' => $purchaseInvoices,
            'products' => $products,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        PurchaseInvoicesItem::create($data);
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseInvoicesItem $purchaseInvoicesItem)
    {
        return view('pages.purchase_invoices_items.view', compact('purchaseInvoicesItem'));
    }

    public function edit(PurchaseInvoicesItem $purchaseInvoicesItem)
    {
        $purchaseInvoices = \App\Models\PurchaseInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_invoices_items.edit', [
            'mode' => 'edit',
            'purchaseInvoicesItem' => $purchaseInvoicesItem,
            'purchaseInvoices' => $purchaseInvoices,
            'products' => $products,

        ]);
    }

    public function update(Request $request, PurchaseInvoicesItem $purchaseInvoicesItem)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseInvoicesItem->update($data);
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseInvoicesItem $purchaseInvoicesItem)
    {
        $purchaseInvoicesItem->delete();
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully deleted!');
    }
}