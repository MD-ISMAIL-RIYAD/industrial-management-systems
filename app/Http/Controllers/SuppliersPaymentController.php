<?php

namespace App\Http\Controllers;

use App\Models\SuppliersPayment;
use Illuminate\Http\Request;


class SuppliersPaymentController extends Controller
{
    public function index()
    {
        $suppliers_payments = SuppliersPayment::orderBy('id','desc')->paginate(10);
        return view('pages.suppliers_payments.index', compact('suppliers_payments'));
    }

    public function create()
    {

        return view('pages.suppliers_payments.create', [
            'mode' => 'create',
            'suppliersPayment' => new SuppliersPayment(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        SuppliersPayment::create($data);
        return redirect()->route('suppliers_payments.index')->with('success', 'Successfully created!');
    }

    public function show(SuppliersPayment $suppliersPayment)
    {
        return view('pages.suppliers_payments.view', compact('suppliersPayment'));
    }

    public function edit(SuppliersPayment $suppliersPayment)
    {

        return view('pages.suppliers_payments.edit', [
            'mode' => 'edit',
            'suppliersPayment' => $suppliersPayment,

        ]);
    }

    public function update(Request $request, SuppliersPayment $suppliersPayment)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $suppliersPayment->update($data);
        return redirect()->route('suppliers_payments.index')->with('success', 'Successfully updated!');
    }

    public function destroy(SuppliersPayment $suppliersPayment)
    {
        $suppliersPayment->delete();
        return redirect()->route('suppliers_payments.index')->with('success', 'Successfully deleted!');
    }
}