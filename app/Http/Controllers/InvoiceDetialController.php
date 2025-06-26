<?php

namespace App\Http\Controllers;

use App\Models\InvoiceDetial;
use Illuminate\Http\Request;
use App\Models\Invoice;
use App\Models\Service;


class InvoiceDetialController extends Controller
{
    public function index()
    {
        $invoice_detials = InvoiceDetial::orderBy('id','desc')->paginate(10);
        return view('pages.invoice_detials.index', compact('invoice_detials'));
    }

    public function create()
    {
        $invoices = \App\Models\Invoice::all();
        $services = \App\Models\Service::all();

        return view('pages.invoice_detials.create', [
            'mode' => 'create',
            'invoiceDetial' => new InvoiceDetial(),
            'invoices' => $invoices,
            'services' => $services,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        InvoiceDetial::create($data);
        return redirect()->route('invoice_detials.index')->with('success', 'Successfully created!');
    }

    public function show(InvoiceDetial $invoiceDetial)
    {
        return view('pages.invoice_detials.view', compact('invoiceDetial'));
    }

    public function edit(InvoiceDetial $invoiceDetial)
    {
        $invoices = \App\Models\Invoice::all();
        $services = \App\Models\Service::all();

        return view('pages.invoice_detials.edit', [
            'mode' => 'edit',
            'invoiceDetial' => $invoiceDetial,
            'invoices' => $invoices,
            'services' => $services,

        ]);
    }

    public function update(Request $request, InvoiceDetial $invoiceDetial)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $invoiceDetial->update($data);
        return redirect()->route('invoice_detials.index')->with('success', 'Successfully updated!');
    }

    public function destroy(InvoiceDetial $invoiceDetial)
    {
        $invoiceDetial->delete();
        return redirect()->route('invoice_detials.index')->with('success', 'Successfully deleted!');
    }
}