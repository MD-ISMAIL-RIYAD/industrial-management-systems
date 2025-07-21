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
    <strong>Invoice number:</strong> {{ $invoice->invoice_number }}
</div>
<div class="mb-2">
    <strong>Order id:</strong> {{ $invoice->order->name ?? $invoice->order_id }}
</div>
<div class="mb-2">
    <strong>Customer id:</strong> {{ $invoice->customer->name ?? $invoice->customer_id }}
</div>
<div class="mb-2">
    <strong>Invoice date:</strong> {{ $invoice->invoice_date }}
</div>
<div class="mb-2">
    <strong>Subtotal:</strong> {{ $invoice->subtotal }}
</div>
<div class="mb-2">
    <strong>Tax amount:</strong> {{ $invoice->tax_amount }}
</div>
<div class="mb-2">
    <strong>Discount amount:</strong> {{ $invoice->discount_amount }}
</div>
<div class="mb-2">
    <strong>Total amount:</strong> {{ $invoice->total_amount }}
</div>
<div class="mb-2">
    <strong>Paid amount:</strong> {{ $invoice->paid_amount }}
</div>
<div class="mb-2">
    <strong>Payment status:</strong> {{ $invoice->payment_status }}
</div>
<div class="mb-2">
    <strong>Status:</strong> {{ $invoice->status }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $invoice->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $invoice->updated_at }}
</div>

@endsection