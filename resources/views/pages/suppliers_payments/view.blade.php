@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create SuppliersPayment</h3>
                <a href="{{ route('suppliers_payments.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $suppliersPayment->id }}
</div>
<div class="mb-2">
    <strong>Name:</strong> {{ $suppliersPayment->name }}
</div>
<div class="mb-2">
    <strong>Email:</strong> {{ $suppliersPayment->email }}
</div>
<div class="mb-2">
    <strong>Create at:</strong> {{ $suppliersPayment->create_at }}
</div>

@endsection