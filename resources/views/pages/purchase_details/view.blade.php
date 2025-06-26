@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseDetail</h3>
                <a href="{{ route('purchase_details.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchaseDetail->id }}
</div>
<div class="mb-2">
    <strong>Purchase id:</strong> {{ $purchaseDetail->purchase->name ?? $purchaseDetail->purchase_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $purchaseDetail->product->name ?? $purchaseDetail->product_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $purchaseDetail->qty }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $purchaseDetail->price }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $purchaseDetail->vat }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $purchaseDetail->discount }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $purchaseDetail->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $purchaseDetail->updated_at }}
</div>

@endsection