<?php

namespace App\Http\Controllers;

use App\Models\Stock;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\TransactionType;
use App\Models\Warehouse;


class StockController extends Controller
{

    //stock balance
    public function stock_balance()
    {
        // Get all MoneyStock records with their related product
        $stocks = Stock::with('product')->get();

        // Group by product_id and sum qty
        $groupedStocks = $stocks->groupBy('product_id')->map(function ($group) {
            return [
                'product_id' => $group->first()->product_id,
                'product_name' => $group->first()->product_name, // from DB column
                'product_type' => $group->first()->product_type, 
                'qty' => $group->sum('qty'),
            ];
        });


        return view('pages.stocks.balance', ['groupedStocks' => $groupedStocks]);
    }


    public function index()
    {

        $stocks = Stock::orderBy('id', 'desc')->paginate(10);
        return view('pages.stocks.index', compact('stocks'));
    }

    public function create()
    {
        $products = \App\Models\Product::all();
        $warehouses = \App\Models\Warehouse::all();

        return view('pages.stocks.create', [
            'mode' => 'create',
            'stock' => new Stock(),
            'products' => $products,
            'warehouses' => $warehouses,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Stock::create($data);
        return redirect()->route('stocks.index')->with('success', 'Successfully created!');
    }

    public function show(Stock $stock)
    {
        return view('pages.stocks.view', compact('stock'));
    }

    public function edit(Stock $stock)
    {
        $products = \App\Models\Product::all();
        $transactionTypes = \App\Models\TransactionType::all();
        $warehouses = \App\Models\Warehouse::all();

        return view('pages.stocks.edit', [
            'mode' => 'edit',
            'stock' => $stock,
            'products' => $products,
            'transactionTypes' => $transactionTypes,
            'warehouses' => $warehouses,

        ]);
    }

    public function update(Request $request, Stock $stock)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $stock->update($data);
        return redirect()->route('stocks.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Stock $stock)
    {
        $stock->delete();
        return redirect()->route('stocks.index')->with('success', 'Successfully deleted!');
    }
}
