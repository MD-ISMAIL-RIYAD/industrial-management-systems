@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseInvoiceItem</h3>
                <a href="{{ route('purchase_invoice_items.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchaseInvoiceItem->id }}
</div>
<div class="mb-2">
    <strong>Purchase invoice id:</strong> {{ $purchaseInvoiceItem->purchaseInvoice->name ?? $purchaseInvoiceItem->purchase_invoice_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $purchaseInvoiceItem->product->name ?? $purchaseInvoiceItem->product_id }}
</div>
<div class="mb-2">
    <strong>Quantity:</strong> {{ $purchaseInvoiceItem->quantity }}
</div>
<div class="mb-2">
    <strong>Unit price:</strong> {{ $purchaseInvoiceItem->unit_price }}
</div>
<div class="mb-2">
    <strong>Total price:</strong> {{ $purchaseInvoiceItem->total_price }}
</div>

@endsection