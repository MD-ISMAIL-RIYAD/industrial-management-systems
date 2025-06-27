<?php

namespace App\Http\Controllers;

use App\Models\SalesInvoicesItem;
use Illuminate\Http\Request;
use App\Models\SalesInvoice;
use App\Models\Product;


class SalesInvoicesItemController extends Controller
{
    public function index()
    {
        $sales_invoices_items = SalesInvoicesItem::orderBy('id','desc')->paginate(10);
        return view('pages.sales_invoices_items.index', compact('sales_invoices_items'));
    }

    public function create()
    {
        $salesInvoices = \App\Models\SalesInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.sales_invoices_items.create', [
            'mode' => 'create',
            'salesInvoicesItem' => new SalesInvoicesItem(),
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
        SalesInvoicesItem::create($data);
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully created!');
    }

    public function show(SalesInvoicesItem $salesInvoicesItem)
    {
        return view('pages.sales_invoices_items.view', compact('salesInvoicesItem'));
    }

    public function edit(SalesInvoicesItem $salesInvoicesItem)
    {
        $salesInvoices = \App\Models\SalesInvoice::all();
        $products = \App\Models\Product::all();

        return view('pages.sales_invoices_items.edit', [
            'mode' => 'edit',
            'salesInvoicesItem' => $salesInvoicesItem,
            'salesInvoices' => $salesInvoices,
            'products' => $products,

        ]);
    }

    public function update(Request $request, SalesInvoicesItem $salesInvoicesItem)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $salesInvoicesItem->update($data);
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully updated!');
    }

    public function destroy(SalesInvoicesItem $salesInvoicesItem)
    {
        $salesInvoicesItem->delete();
        return redirect()->route('sales_invoices_items.index')->with('success', 'Successfully deleted!');
    }
}