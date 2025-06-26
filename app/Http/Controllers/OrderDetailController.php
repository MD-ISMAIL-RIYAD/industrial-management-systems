<?php

namespace App\Http\Controllers;

use App\Models\OrderDetail;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Product;


class OrderDetailController extends Controller
{
    public function index()
    {
        $orderDetails = OrderDetail::orderBy('id','desc')->paginate(10);
        return view('pages.orderDetails.index', compact('orderDetails'));
    }

    public function create()
    {
        $orders = \App\Models\Order::all();
        $products = \App\Models\Product::all();

        return view('pages.orderDetails.create', [
            'mode' => 'create',
            'orderDetail' => new OrderDetail(),
            'orders' => $orders,
            'products' => $products,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        OrderDetail::create($data);
        return redirect()->route('orderDetails.index')->with('success', 'Successfully created!');
    }

    public function show(OrderDetail $orderDetail)
    {
        return view('pages.orderDetails.view', compact('orderDetail'));
    }

    public function edit(OrderDetail $orderDetail)
    {
        $orders = \App\Models\Order::all();
        $products = \App\Models\Product::all();

        return view('pages.orderDetails.edit', [
            'mode' => 'edit',
            'orderDetail' => $orderDetail,
            'orders' => $orders,
            'products' => $products,

        ]);
    }

    public function update(Request $request, OrderDetail $orderDetail)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $orderDetail->update($data);
        return redirect()->route('orderDetails.index')->with('success', 'Successfully updated!');
    }

    public function destroy(OrderDetail $orderDetail)
    {
        $orderDetail->delete();
        return redirect()->route('orderDetails.index')->with('success', 'Successfully deleted!');
    }
}