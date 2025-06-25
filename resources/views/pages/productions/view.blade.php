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
    <strong>Production datetime:</strong> {{ $production->production_datetime }}
</div>
<div class="mb-2">
    <strong>Bom id:</strong> {{ $production->bom->name ?? $production->bom_id }}
</div>
<div class="mb-2">
    <strong>Labor cost:</strong> {{ $production->labor_cost }}
</div>
<div class="mb-2">
    <strong>Manager id:</strong> {{ $production->manager->name ?? $production->manager_id }}
</div>
<div class="mb-2">
    <strong>Total cost:</strong> {{ $production->total_cost }}
</div>

@endsection