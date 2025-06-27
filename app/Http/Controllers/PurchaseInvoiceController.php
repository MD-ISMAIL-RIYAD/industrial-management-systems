<?php

namespace App\Http\Controllers;

use App\Models\PurchaseInvoice;
use Illuminate\Http\Request;


class PurchaseInvoiceController extends Controller
{
    public function index()
    {
        $purchase_invoices = PurchaseInvoice::orderBy('id','desc')->paginate(10);
        return view('pages.purchase_invoices.index', compact('purchase_invoices'));
    }

    public function create()
    {

        return view('pages.purchase_invoices.create', [
            'mode' => 'create',
            'purchaseInvoice' => new PurchaseInvoice(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        PurchaseInvoice::create($data);
        return redirect()->route('purchase_invoices.index')->with('success', 'Successfully created!');
    }

    public function show(PurchaseInvoice $purchaseInvoice)
    {
        return view('pages.purchase_invoices.view', compact('purchaseInvoice'));
    }

    public function edit(PurchaseInvoice $purchaseInvoice)
    {

        return view('pages.purchase_invoices.edit', [
            'mode' => 'edit',
            'purchaseInvoice' => $purchaseInvoice,

        ]);
    }

    public function update(Request $request, PurchaseInvoice $purchaseInvoice)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $purchaseInvoice->update($data);
        return redirect()->route('purchase_invoices.index')->with('success', 'Successfully updated!');
    }

    public function destroy(PurchaseInvoice $purchaseInvoice)
    {
        $purchaseInvoice->delete();
        return redirect()->route('purchase_invoices.index')->with('success', 'Successfully deleted!');
    }
}