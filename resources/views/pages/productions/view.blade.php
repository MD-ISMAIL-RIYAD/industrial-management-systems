@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Production</h3>
                <a href="{{ route('productions.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $production->id }}
</div>
<div class="mb-2">
    <strong>Bom id:</strong> {{ $production->bom->name ?? $production->bom_id }}
</div>
<div class="mb-2">
    <strong>Warehouse id:</strong> {{ $production->warehouse->name ?? $production->warehouse_id }}
</div>
<div class="mb-2">
    <strong>Uom id:</strong> {{ $production->uom->name ?? $production->uom_id }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $production->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $production->updated_at }}
</div>
<div class="mb-2">
    <strong>Price:</strong> {{ $production->price }}
</div>
<div class="mb-2">
    <strong>Product name:</strong> {{ $production->product_name }}
</div>
<div class="mb-2">
    <strong>Manufacturer id:</strong> {{ $production->manufacturer->name ?? $production->manufacturer_id }}
</div>
<div class="mb-2">
    <strong>Product category id:</strong> {{ $production->productCategory->name ?? $production->product_category_id }}
</div>

@endsection