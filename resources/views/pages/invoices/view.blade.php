@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Invoice</h3>
                <a href="{{ route('invoices.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $invoice->id }}
</div>
<div class="mb-2">
    <strong>Customer id:</strong> {{ $invoice->customer->name ?? $invoice->customer_id }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $invoice->created_at }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $invoice->remark }}
</div>
<div class="mb-2">
    <strong>Payment term:</strong> {{ $invoice->payment_term }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $invoice->updated_at }}
</div>
<div class="mb-2">
    <strong>Invoice total:</strong> {{ $invoice->invoice_total }}
</div>
<div class="mb-2">
    <strong>Paid total:</strong> {{ $invoice->paid_total }}
</div>
<div class="mb-2">
    <strong>Previous due:</strong> {{ $invoice->previous_due }}
</div>

@endsection