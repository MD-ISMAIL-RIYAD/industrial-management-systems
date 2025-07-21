<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bom;
use App\Models\BomDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;

class BomController extends Controller
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
        $bom = new Bom();
        $bom->bom_no = $request->bom_no;
        $bom->name = $request->bom_name;
        $bom->product_id=0;
        $bom->qty=0;
        $bom->unit_id=0;
        $bom->labour_cost=$request->labour_cost;
        $bom->save();

        $items = $request->items;
        foreach ($items as $item) {
            $details = new BomDetail();
            $details->bom_id = $bom->id;
            $details->unit_id = $item['unit_id'];
            $details->qty = $item['qty'];
            $details->price = $item['price'];
            $details->save();
        }

        return response()->json($bom);
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
