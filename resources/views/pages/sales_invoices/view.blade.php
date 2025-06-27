@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create SalesInvoice</h3>
                <a href="{{ route('sales_invoices.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $salesInvoice->id }}
</div>
<div class="mb-2">
    <strong>Invoice number:</strong> {{ $salesInvoice->invoice_number }}
</div>
<div class="mb-2">
    <strong>Customer id:</strong> {{ $salesInvoice->customer->name ?? $salesInvoice->customer_id }}
</div>
<div class="mb-2">
    <strong>Total amount:</strong> {{ $salesInvoice->total_amount }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $salesInvoice->discount }}
</div>
<div class="mb-2">
    <strong>Grand total:</strong> {{ $salesInvoice->grand_total }}
</div>
<div class="mb-2">
    <strong>Created by:</strong> {{ $salesInvoice->created_by }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $salesInvoice->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $salesInvoice->updated_at }}
</div>

@endsection