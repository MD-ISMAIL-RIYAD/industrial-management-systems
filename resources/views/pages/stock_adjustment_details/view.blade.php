@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create StockAdjustmentDetail</h3>
                <a href="{{ route('stock_adjustment_details.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $stockAdjustmentDetail->id }}
</div>
<div class="mb-2">
    <strong>Adjustment id:</strong> {{ $stockAdjustmentDetail->adjustment->name ?? $stockAdjustmentDetail->adjustment_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $stockAdjustmentDetail->product->name ?? $stockAdjustmentDetail->product_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $stockAdjustmentDetail->qty }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $stockAdjustmentDetail->price }}
</div>

@endsection