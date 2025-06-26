@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Position</h3>
                <a href="{{ route('positions.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $position->id }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $position->name }}
</div>
<div class="mb-2">
    <strong>Grade:</strong> {{ $position->grade }}
</div>
<div class="mb-2">
    <strong>Department id:</strong> {{ $position->department->name ?? $position->department_id }}
</div>

@endsection