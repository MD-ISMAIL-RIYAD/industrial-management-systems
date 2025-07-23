<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Invoice;
use App\Models\MoneyReceipt;
use App\Models\MoneyReceiptDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;

class MoneyReceiptController extends Controller
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
        $money_receipt = new MoneyReceipt();
        // $purchase->purchase_date = Carbon::parse($request->purchase_date)->format('Y-m-d');
        // $purchase->delivery_date = Carbon::parse($request->delivery_date)->format('Y-m-d');
        $money_receipt->customer_id = $request->supplier_id;
        $money_receipt->remark = $request->remark;
        $money_receipt->receipt_total = $request->purchase_total;
        $money_receipt->discount = $request->discount;
        $money_receipt->vat = 0;
        $money_receipt->save();

        $items = $request->items;
        foreach ($items as $item) {
            $details = new MoneyReceiptDetail();
            $details->money_receipt_id = $money_receipt->id;
            $details->product_id = $item['product_id'];
            $details->qty = $item['qty'];
            $details->price = $item['price'];
            $details->vat = $item['vat'];
            $details->discount = $item['discount'];
            $details->save();

            // product_id, qty, transaction_type_id, remark, created_at, warehouse_id, product_type
            // $stock= new Stock();
            // $stock->product_id=$item['product_id'];
            // $stock->product_name=$item['product_name'];
            // $stock->qty=+$item['qty'];
            // $stock->transaction_type_id='1';
            // $stock->remark=$request->remark;
            // $stock->created_at=now();
            // $stock->warehouse_id=1;
            // $stock->product_type="Raw Materials";
            // $stock->save();
        }

        return response()->json($money_receipt);
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
