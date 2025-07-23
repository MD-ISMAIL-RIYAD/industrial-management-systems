@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseReturn</h3>
                <a href="{{ route('purchase_returns.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchaseReturn->id }}
</div>
<div class="mb-2">
    <strong>Purchase id:</strong> {{ $purchaseReturn->purchase->name ?? $purchaseReturn->purchase_id }}
</div>
<div class="mb-2">
    <strong>Supplier id:</strong> {{ $purchaseReturn->supplier->name ?? $purchaseReturn->supplier_id }}
</div>
<div class="mb-2">
    <strong>Return date:</strong> {{ $purchaseReturn->return_date }}
</div>
<div class="mb-2">
    <strong>Reason:</strong> {{ $purchaseReturn->reason }}
</div>
<div class="mb-2">
    <strong>Subtotal:</strong> {{ $purchaseReturn->subtotal }}
</div>
<div class="mb-2">
    <strong>Total amount:</strong> {{ $purchaseReturn->total_amount }}
</div>

@endsection