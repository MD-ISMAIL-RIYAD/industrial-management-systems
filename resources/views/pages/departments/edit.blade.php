@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Edit Department</h3>
                <a href="{{ route('departments.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
    <form action="{{ route('departments.update', $department->id) }}" method="POST" enctype="multipart/form-data">
        @include('pages.departments._form', ['mode' => 'edit', 'department' => $department])
    </form>
@endsection