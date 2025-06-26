@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create MoneyReceipt</h3>
                <a href="{{ route('money_receipts.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $moneyReceipt->id }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $moneyReceipt->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $moneyReceipt->updated_at }}
</div>
<div class="mb-2">
    <strong>Customer id:</strong> {{ $moneyReceipt->customer->name ?? $moneyReceipt->customer_id }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $moneyReceipt->remark }}
</div>
<div class="mb-2">
    <strong>Receipt total:</strong> {{ $moneyReceipt->receipt_total }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $moneyReceipt->discount }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $moneyReceipt->vat }}
</div>

@endsection