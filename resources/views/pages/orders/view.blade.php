@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Order</h3>
                <a href="{{ route('orders.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $order->id }}
</div>
<div class="mb-2">
    <strong>Customer id:</strong> {{ $order->customer->name ?? $order->customer_id }}
</div>
<div class="mb-2">
    <strong>Order date:</strong> {{ $order->order_date }}
</div>
<div class="mb-2">
    <strong>Delivery date:</strong> {{ $order->delivery_date }}
</div>
<div class="mb-2">
    <strong>Shipping address:</strong> {{ $order->shipping_address }}
</div>
<div class="mb-2">
    <strong>Order total:</strong> {{ $order->order_total }}
</div>
<div class="mb-2">
    <strong>Paid amount:</strong> {{ $order->paid_amount }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $order->remark }}
</div>
<div class="mb-2">
    <strong>Status id:</strong> {{ $order->status->name ?? $order->status_id }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $order->discount }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $order->vat }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $order->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $order->updated_at }}
</div>
<div class="mb-2">
    <strong>Table id:</strong> {{ $order->table->name ?? $order->table_id }}
</div>

@endsection