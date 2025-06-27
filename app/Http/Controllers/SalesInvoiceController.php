<?php

namespace App\Http\Controllers;

use App\Models\SalesInvoice;
use Illuminate\Http\Request;


class SalesInvoiceController extends Controller
{
    public function index()
    {
        $sales_invoices = SalesInvoice::orderBy('id','desc')->paginate(10);
        return view('pages.sales_invoices.index', compact('sales_invoices'));
    }

    public function create()
    {

        return view('pages.sales_invoices.create', [
            'mode' => 'create',
            'salesInvoice' => new SalesInvoice(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        SalesInvoice::create($data);
        return redirect()->route('sales_invoices.index')->with('success', 'Successfully created!');
    }

    public function show(SalesInvoice $salesInvoice)
    {
        return view('pages.sales_invoices.view', compact('salesInvoice'));
    }

    public function edit(SalesInvoice $salesInvoice)
    {

        return view('pages.sales_invoices.edit', [
            'mode' => 'edit',
            'salesInvoice' => $salesInvoice,

        ]);
    }

    public function update(Request $request, SalesInvoice $salesInvoice)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $salesInvoice->update($data);
        return redirect()->route('sales_invoices.index')->with('success', 'Successfully updated!');
    }

    public function destroy(SalesInvoice $salesInvoice)
    {
        $salesInvoice->delete();
        return redirect()->route('sales_invoices.index')->with('success', 'Successfully deleted!');
    }
}