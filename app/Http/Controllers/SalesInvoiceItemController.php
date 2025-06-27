<?php

namespace App\Http\Controllers;

use App\Models\SalesInvoiceItem;
use Illuminate\Http\Request;
use App\Models\SalesInvoice;
use App\Models\Product;


class SalesInvoiceItemController extends Controller
{
    public function index()
    {
        $sales_invoices_items = SalesInvoiceItem::orderBy('id','desc')->paginate(10);
        return view('pages.sales_invoices_items.index', compact('sales_invoices_items'));
    }

    public function create()
    {
        $salesInvoices = \App\Models\SalesInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.sales_invoices_items.create', [
            'mode' => 'create',
            'salesInvoiceItem' => new SalesInvoiceItem(),
            'salesInvoices' => $salesInvoices,
            'products' => $products,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        SalesInvoiceItem::create($data);
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully created!');
    }

    public function show(SalesInvoiceItem $salesInvoiceItem)
    {
        return view('pages.sales_invoices_items.view', compact('salesInvoiceItem'));
    }

    public function edit(SalesInvoiceItem $salesInvoiceItem)
    {
        $salesInvoices = \App\Models\SalesInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.sales_invoices_items.edit', [
            'mode' => 'edit',
            'salesInvoiceItem' => $salesInvoiceItem,
            'salesInvoices' => $salesInvoices,
            'products' => $products,

        ]);
    }

    public function update(Request $request, SalesInvoiceItem $salesInvoiceItem)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $salesInvoiceItem->update($data);
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully updated!');
    }

    public function destroy(SalesInvoiceItem $salesInvoiceItem)
    {
        $salesInvoiceItem->delete();
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully deleted!');
    }
}