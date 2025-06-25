@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Bom</h3>
                <a href="{{ route('boms.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $bom->id }}
</div>
<div class="mb-2">
    <strong>Code:</strong> {{ $bom->code }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $bom->name }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $bom->product->name ?? $bom->product_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $bom->qty }}
</div>
<div class="mb-2">
    <strong>Labour cost:</strong> {{ $bom->labour_cost }}
</div>
<div class="mb-2">
    <strong>Date:</strong> {{ $bom->date }}
</div>
<div class="mb-2">
    <strong>Remark:</strong> {{ $bom->remark }}
</div>

@endsection