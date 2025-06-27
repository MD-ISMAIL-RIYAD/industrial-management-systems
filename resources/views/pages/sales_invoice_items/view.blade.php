@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create SalesInvoiceItem</h3>
                <a href="{{ route('sales_invoice_items.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $salesInvoiceItem->id }}
</div>
<div class="mb-2">
    <strong>Sales invoice id:</strong> {{ $salesInvoiceItem->salesInvoice->name ?? $salesInvoiceItem->sales_invoice_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $salesInvoiceItem->product->name ?? $salesInvoiceItem->product_id }}
</div>
<div class="mb-2">
    <strong>Quantity:</strong> {{ $salesInvoiceItem->quantity }}
</div>
<div class="mb-2">
    <strong>Unit price:</strong> {{ $salesInvoiceItem->unit_price }}
</div>
<div class="mb-2">
    <strong>Total price:</strong> {{ $salesInvoiceItem->total_price }}
</div>

@endsection