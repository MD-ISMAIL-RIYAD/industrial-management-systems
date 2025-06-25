@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create BomFinishedGood</h3>
                <a href="{{ route('bom_finished_goods.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $bomFinishedGood->id }}
</div>
<div class="mb-2">
    <strong>Item id:</strong> {{ $bomFinishedGood->item->name ?? $bomFinishedGood->item_id }}
</div>
<div class="mb-2">
    <strong>Qty:</strong> {{ $bomFinishedGood->qty }}
</div>
<div class="mb-2">
    <strong>Cost:</strong> {{ $bomFinishedGood->cost }}
</div>
<div class="mb-2">
    <strong>Bom id:</strong> {{ $bomFinishedGood->bom->name ?? $bomFinishedGood->bom_id }}
</div>
<div class="mb-2">
    <strong>Uom id:</strong> {{ $bomFinishedGood->uom->name ?? $bomFinishedGood->uom_id }}
</div>

@endsection