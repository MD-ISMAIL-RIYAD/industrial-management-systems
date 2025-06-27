@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create PurchaseInvoice</h3>
                <a href="{{ route('purchase_invoices.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $purchaseInvoice->id }}
</div>
<div class="mb-2">
    <strong>Invoice number:</strong> {{ $purchaseInvoice->invoice_number }}
</div>
<div class="mb-2">
    <strong>Supplier id:</strong> {{ $purchaseInvoice->supplier->name ?? $purchaseInvoice->supplier_id }}
</div>
<div class="mb-2">
    <strong>Total amount:</strong> {{ $purchaseInvoice->total_amount }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $purchaseInvoice->discount }}
</div>
<div class="mb-2">
    <strong>Grand total:</strong> {{ $purchaseInvoice->grand_total }}
</div>
<div class="mb-2">
    <strong>Created by:</strong> {{ $purchaseInvoice->created_by }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $purchaseInvoice->created_at }}
</div>

@endsection