@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create OrderDetail</h3>
                <a href="{{ route('order_details.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $orderDetail->id }}
</div>
<div class="mb-2">
    <strong>Order id:</strong> {{ $orderDetail->order->name ?? $orderDetail->order_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $orderDetail->product->name ?? $orderDetail->product_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $orderDetail->qty }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $orderDetail->price }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $orderDetail->vat }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $orderDetail->discount }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $orderDetail->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $orderDetail->updated_at }}
</div>

@endsection