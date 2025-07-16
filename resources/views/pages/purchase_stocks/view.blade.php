@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseStock</h3>
                <a href="{{ route('purchase_stocks.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchaseStock->id }}
</div>
<div class="mb-2">
    <strong>Purchase id:</strong> {{ $purchaseStock->purchase->name ?? $purchaseStock->purchase_id }}
</div>
<div class="mb-2">
    <strong>Item id:</strong> {{ $purchaseStock->item->name ?? $purchaseStock->item_id }}
</div>
<div class="mb-2">
    <strong>Warehouse id:</strong> {{ $purchaseStock->warehouse->name ?? $purchaseStock->warehouse_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $purchaseStock->qty }}
</div>
<div class="mb-2">
    <strong>Unit id:</strong> {{ $purchaseStock->unit->name ?? $purchaseStock->unit_id }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $purchaseStock->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $purchaseStock->updated_at }}
</div>

@endsection