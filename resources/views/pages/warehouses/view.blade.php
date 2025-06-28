@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Warehouse</h3>
                <a href="{{ route('warehouses.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $warehouse->id }}
</div>
<div class="mb-2">
    <strong>Manager name:</strong> {{ $warehouse->manager_name }}
</div>
<div class="mb-2">
    <strong>City:</strong> {{ $warehouse->city }}
</div>
<div class="mb-2">
    <strong>Contact:</strong> {{ $warehouse->contact }}
</div>

@endsection