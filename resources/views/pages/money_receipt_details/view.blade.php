@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create MoneyReceiptDetail</h3>
                <a href="{{ route('money_receipt_details.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $moneyReceiptDetail->id }}
</div>
<div class="mb-2">
    <strong>Money receipt id:</strong> {{ $moneyReceiptDetail->moneyReceipt->name ?? $moneyReceiptDetail->money_receipt_id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $moneyReceiptDetail->product->name ?? $moneyReceiptDetail->product_id }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $moneyReceiptDetail->price }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $moneyReceiptDetail->qty }}
</div>
<div class="mb-2">
    <strong>Vat:</strong> {{ $moneyReceiptDetail->vat }}
</div>
<div class="mb-2">
    <strong>Discount:</strong> {{ $moneyReceiptDetail->discount }}
</div>

@endsection