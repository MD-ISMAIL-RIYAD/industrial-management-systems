@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create RawMaterial</h3>
                <a href="{{ route('raw_materials.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $rawMaterial->id }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $rawMaterial->name }}
</div>
<div class="mb-2">
    <strong>Code:</strong> {{ $rawMaterial->code }}
</div>
<div class="mb-2">
    <strong>Description:</strong> {{ $rawMaterial->description }}
</div>
<div class="mb-2">
    <strong>Unit id:</strong> {{ $rawMaterial->unit->name ?? $rawMaterial->unit_id }}
</div>
<div class="mb-2">
    <strong>Category id:</strong> {{ $rawMaterial->category->name ?? $rawMaterial->category_id }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $rawMaterial->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $rawMaterial->updated_at }}
</div>

@endsection