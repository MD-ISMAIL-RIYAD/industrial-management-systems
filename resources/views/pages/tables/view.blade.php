@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Table</h3>
                <a href="{{ route('tables.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $table->id }}
</div>
<div class="mb-2">
    <strong>Table name:</strong> {{ $table->table_name }}
</div>
<div class="mb-2">
    <strong>Status:</strong> {{ $table->status }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $table->created_at }}
</div>
<div class="mb-2">
    <strong>Updated at:</strong> {{ $table->updated_at }}
</div>

@endsection