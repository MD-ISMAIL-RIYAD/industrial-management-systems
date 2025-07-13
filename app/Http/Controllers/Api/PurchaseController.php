<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Purchase;
use App\Models\PurchaseDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $purchase = new Purchase();
        $purchase->supplier_id = $request->supplier_id;
        $purchase->purchase_date = Carbon::parse($request->purchase_date)->format('Y-m-d');
        $purchase->delivery_date = Carbon::parse($request->delivery_date)->format('Y-m-d');
        $purchase->remark = $request->remark;
        $purchase->vat = 0;
        $purchase->discount = $request->discount;
        $purchase->status_id = 1;
        $purchase->purchase_total = $request->purchase_total;
        $purchase->paid_amount = $request->purchase_total;
        $purchase->paid_amount = $request->purchase_total;
        $purchase->shipping_address = $request->shipping_address;
        $purchase->save();

        $items = $request->items;
        foreach ($items as $item) {
            $details = new PurchaseDetail();
            $details->purchase_id = $purchase->id;
            $details->product_id = $item['product_id'];
            $details->qty = $item['qty'];
            $details->price = $item['price'];
            $details->vat = $item['vat'];
            $details->discount = $item['discount'];
            $details->save();
        }

        return response()->json($purchase);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
