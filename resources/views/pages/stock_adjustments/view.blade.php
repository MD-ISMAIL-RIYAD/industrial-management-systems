@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create StockAdjustment</h3>
                <a href="{{ route('stock_adjustments.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $stockAdjustment->id }}
</div>
<div class="mb-2">
    <strong>Adjustment at:</strong> {{ $stockAdjustment->adjustment_at }}
</div>
<div class="mb-2">
    <strong>User id:</strong> {{ $stockAdjustment->user->name ?? $stockAdjustment->user_id }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $stockAdjustment->remark }}
</div>
<div class="mb-2">
    <strong>Adjustment type id:</strong> {{ $stockAdjustment->adjustmentType->name ?? $stockAdjustment->adjustment_type_id }}
</div>
<div class="mb-2">
    <strong>Werehouse id:</strong> {{ $stockAdjustment->werehouse->name ?? $stockAdjustment->werehouse_id }}
</div>

@endsection