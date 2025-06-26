<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Status;
use App\Models\Table;


class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::orderBy('id','desc')->paginate(10);
        return view('pages.orders.index', compact('orders'));
    }

    public function create()
    {
        $customers = \App\Models\Customer::all();
        $statuses = \App\Models\Status::all();
        $tables = \App\Models\Table::all();

        return view('pages.orders.create', [
            'mode' => 'create',
            'order' => new Order(),
            'customers' => $customers,
            'statuses' => $statuses,
            'tables' => $tables,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Order::create($data);
        return redirect()->route('orders.index')->with('success', 'Successfully created!');
    }

    public function show(Order $order)
    {
        return view('pages.orders.view', compact('order'));
    }

    public function edit(Order $order)
    {
        $customers = \App\Models\Customer::all();
        $statuses = \App\Models\Status::all();
        $tables = \App\Models\Table::all();

        return view('pages.orders.edit', [
            'mode' => 'edit',
            'order' => $order,
            'customers' => $customers,
            'statuses' => $statuses,
            'tables' => $tables,

        ]);
    }

    public function update(Request $request, Order $order)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $order->update($data);
        return redirect()->route('orders.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Order $order)
    {
        $order->delete();
        return redirect()->route('orders.index')->with('success', 'Successfully deleted!');
    }
}