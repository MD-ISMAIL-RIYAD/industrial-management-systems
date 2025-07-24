@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create ProductionOrder</h3>
                <a href="{{ route('production_orders.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $productionOrder->id }}
</div>
<div class="mb-2">
    <strong>Production order number:</strong> {{ $productionOrder->production_order_number }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $productionOrder->product->name ?? $productionOrder->product_id }}
</div>
<div class="mb-2">
    <strong>Warehouse id:</strong> {{ $productionOrder->warehouse->name ?? $productionOrder->warehouse_id }}
</div>
<div class="mb-2">
    <strong>Quantity:</strong> {{ $productionOrder->quantity }}
</div>
<div class="mb-2">
    <strong>Status:</strong> {{ $productionOrder->status }}
</div>
<div class="mb-2">
    <strong>Scheduled date:</strong> {{ $productionOrder->scheduled_date }}
</div>
<div class="mb-2">
    <strong>Started at:</strong> {{ $productionOrder->started_at }}
</div>
<div class="mb-2">
    <strong>Completed at:</strong> {{ $productionOrder->completed_at }}
</div>
<div class="mb-2">
    <strong>Remarks:</strong> {{ $productionOrder->remarks }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $productionOrder->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $productionOrder->updated_at }}
</div>

@endsection