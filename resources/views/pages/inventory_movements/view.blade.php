@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create InventoryMovement</h3>
                <a href="{{ route('inventory_movements.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $inventoryMovement->id }}
</div>
<div class="mb-2">
    <strong>Product id:</strong> {{ $inventoryMovement->product->name ?? $inventoryMovement->product_id }}
</div>
<div class="mb-2">
    <strong>Movement type:</strong> {{ $inventoryMovement->movement_type }}
</div>
<div class="mb-2">
    <strong>Quantity:</strong> {{ $inventoryMovement->quantity }}
</div>
<div class="mb-2">
    <strong>Movement date:</strong> {{ $inventoryMovement->movement_date }}
</div>

@endsection