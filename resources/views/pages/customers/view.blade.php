@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Customer</h3>
                <a href="{{ route('customers.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $customer->id }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $customer->name }}
</div>
<div class="mb-2">
    <strong>Mobile:</strong> {{ $customer->mobile }}
</div>
<div class="mb-2">
    <strong>Email:</strong> {{ $customer->email }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $customer->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $customer->updated_at }}
</div>
<div class="mb-2">
    <strong>Address:</strong> {{ $customer->address }}
</div>
<div class="mb-2">
    <strong>Photo:</strong><br>
    @if($customer->photo)
        <img src="{{ asset('storage/' . $customer->photo) }}" width="150">
    @else
        No Photo
    @endif
</div>

@endsection