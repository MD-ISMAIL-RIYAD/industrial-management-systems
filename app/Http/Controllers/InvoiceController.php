<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;
use App\Models\Customer;


class InvoiceController extends Controller
{
    public function index()
    {
        $invoices = Invoice::orderBy('id','desc')->paginate(10);
        return view('pages.invoices.index', compact('invoices'));
    }

    public function create()
    {
        $customers = \App\Models\Customer::all();

        return view('pages.invoices.create', [
            'mode' => 'create',
            'invoice' => new Invoice(),
            'customers' => $customers,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Invoice::create($data);
        return redirect()->route('invoices.index')->with('success', 'Successfully created!');
    }

    public function show(Invoice $invoice)
    {
        return view('pages.invoices.view', compact('invoice'));
    }

    public function edit(Invoice $invoice)
    {
        $customers = \App\Models\Customer::all();

        return view('pages.invoices.edit', [
            'mode' => 'edit',
            'invoice' => $invoice,
            'customers' => $customers,

        ]);
    }

    public function update(Request $request, Invoice $invoice)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $invoice->update($data);
        return redirect()->route('invoices.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Invoice $invoice)
    {
        $invoice->delete();
        return redirect()->route('invoices.index')->with('success', 'Successfully deleted!');
    }
}