@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create ProductUnit</h3>
                <a href="{{ route('product_units.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $productUnit->id }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $productUnit->name }}
</div>
<div class="mb-2">
    <strong>Photo:</strong><br>
    @if($productUnit->photo)
        <img src="{{ asset('storage/' . $productUnit->photo) }}" width="150">
    @else
        No Photo
    @endif
</div>
<div class="mb-2">
    <strong>Icon:</strong> {{ $productUnit->icon }}
</div>

@endsection