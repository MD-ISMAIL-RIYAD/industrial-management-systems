<?php

namespace App\Http\Controllers;

use App\Models\PurchaseInvoiceItem;
use Illuminate\Http\Request;
use App\Models\PurchaseInvoice;
use App\Models\Product;


class PurchaseInvoiceItemController extends Controller
{
    public function index()
    {
        $purchase_invoices_items = PurchaseInvoiceItem::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_invoices_items.index', compact('purchase_invoices_items'));
    }

    public function create()
    {
        $purchaseInvoices = \App\Models\PurchaseInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_invoices_items.create', [
            'mode' => 'create',
            'purchaseInvoiceItem' => new PurchaseInvoiceItem(),
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
        PurchaseInvoiceItem::create($data);
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseInvoiceItem $purchaseInvoiceItem)
    {
        return view('pages.purchase_invoices_items.view', compact('purchaseInvoiceItem'));
    }

    public function edit(PurchaseInvoiceItem $purchaseInvoiceItem)
    {
        $purchaseInvoices = \App\Models\PurchaseInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.purchase_invoices_items.edit', [
            'mode' => 'edit',
            'purchaseInvoiceItem' => $purchaseInvoiceItem,
            'purchaseInvoices' => $purchaseInvoices,
            'products' => $products,

        ]);
    }

    public function update(Request $request, PurchaseInvoiceItem $purchaseInvoiceItem)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseInvoiceItem->update($data);
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseInvoiceItem $purchaseInvoiceItem)
    {
        $purchaseInvoiceItem->delete();
        return redirect()->route('purchase_invoices_items.index')->with('success', 'Successfully deleted!');
    }
}