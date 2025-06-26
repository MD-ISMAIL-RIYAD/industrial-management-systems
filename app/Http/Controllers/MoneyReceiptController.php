<?php

namespace App\Http\Controllers;

use App\Models\MoneyReceipt;
use Illuminate\Http\Request;
use App\Models\Customer;


class MoneyReceiptController extends Controller
{
    public function index()
    {
        $moneyReceipts = MoneyReceipt::orderBy('id','desc')->paginate(10);
        return view('pages.moneyReceipts.index', compact('moneyReceipts'));
    }

    public function create()
    {
        $customers = \App\Models\Customer::all();

        return view('pages.moneyReceipts.create', [
            'mode' => 'create',
            'moneyReceipt' => new MoneyReceipt(),
            'customers' => $customers,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        MoneyReceipt::create($data);
        return redirect()->route('moneyReceipts.index')->with('success', 'Successfully created!');
    }

    public function show(MoneyReceipt $moneyReceipt)
    {
        return view('pages.moneyReceipts.view', compact('moneyReceipt'));
    }

    public function edit(MoneyReceipt $moneyReceipt)
    {
        $customers = \App\Models\Customer::all();

        return view('pages.moneyReceipts.edit', [
            'mode' => 'edit',
            'moneyReceipt' => $moneyReceipt,
            'customers' => $customers,

        ]);
    }

    public function update(Request $request, MoneyReceipt $moneyReceipt)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $moneyReceipt->update($data);
        return redirect()->route('moneyReceipts.index')->with('success', 'Successfully updated!');
    }

    public function destroy(MoneyReceipt $moneyReceipt)
    {
        $moneyReceipt->delete();
        return redirect()->route('moneyReceipts.index')->with('success', 'Successfully deleted!');
    }
}