@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Stock</h3>
                <a href="{{ route('stocks.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $stock->id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $stock->product->name ?? $stock->product_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $stock->qty }}
</div>
<div class="mb-2">
    <strong>Transaction type id:</strong> {{ $stock->transactionType->name ?? $stock->transaction_type_id }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $stock->remark }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $stock->created_at }}
</div>
<div class="mb-2">
    <strong>Warehouse id:</strong> {{ $stock->warehouse->name ?? $stock->warehouse_id }}
</div>
<div class="mb-2">
    <strong>Product type:</strong> {{ $stock->product_type }}
</div>
<div class="mb-2">
    <strong>Product name:</strong> {{ $stock->product_name }}
</div>

@endsection