@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create InvoiceDetial</h3>
                <a href="{{ route('invoice_detials.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $invoiceDetial->id }}
</div>
<div class="mb-2">
    <strong>Invoice id:</strong> {{ $invoiceDetial->invoice->name ?? $invoiceDetial->invoice_id }}
</div>
<div class="mb-2">
    <strong>Service id:</strong> {{ $invoiceDetial->service->name ?? $invoiceDetial->service_id }}
</div>
<div class="mb-2">
    <strong>Unit:</strong> {{ $invoiceDetial->unit }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $invoiceDetial->price }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $invoiceDetial->discount }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $invoiceDetial->vat }}
</div>

@endsection