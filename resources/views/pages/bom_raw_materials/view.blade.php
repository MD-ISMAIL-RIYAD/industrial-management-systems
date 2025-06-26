@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create BomRawMaterial</h3>
                <a href="{{ route('bom_raw_materials.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $bomRawMaterial->id }}
</div>
<div class="mb-2">
    <strong>Item id:</strong> {{ $bomRawMaterial->item->name ?? $bomRawMaterial->item_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $bomRawMaterial->qty }}
</div>
<div class="mb-2">
    <strong>Cost:</strong> {{ $bomRawMaterial->cost }}
</div>
<div class="mb-2">
    <strong>Bom id:</strong> {{ $bomRawMaterial->bom->name ?? $bomRawMaterial->bom_id }}
</div>
<div class="mb-2">
    <strong>Uom id:</strong> {{ $bomRawMaterial->uom->name ?? $bomRawMaterial->uom_id }}
</div>

@endsection