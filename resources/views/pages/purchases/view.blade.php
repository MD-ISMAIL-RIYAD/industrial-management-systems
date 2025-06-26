@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Purchase</h3>
                <a href="{{ route('purchases.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchase->id }}
</div>
<div class="mb-2">
    <strong>Supplier id:</strong> {{ $purchase->supplier->name ?? $purchase->supplier_id }}
</div>
<div class="mb-2">
    <strong>Purchase date:</strong> {{ $purchase->purchase_date }}
</div>
<div class="mb-2">
    <strong>Delivery date:</strong> {{ $purchase->delivery_date }}
</div>
<div class="mb-2">
    <strong>Shipping address:</strong> {{ $purchase->shipping_address }}
</div>
<div class="mb-2">
    <strong>Purchase total:</strong> {{ $purchase->purchase_total }}
</div>
<div class="mb-2">
    <strong>Paid amount:</strong> {{ $purchase->paid_amount }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $purchase->remark }}
</div>
<div class="mb-2">
    <strong>Status id:</strong> {{ $purchase->status->name ?? $purchase->status_id }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $purchase->discount }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $purchase->vat }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $purchase->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $purchase->updated_at }}
</div>

@endsection