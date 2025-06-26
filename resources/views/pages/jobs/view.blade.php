@extends('layouts.master')
@section('page')
    <!-- Page Header -->
    <div class="card bg-primary mb-3 p-4">
        <div class="row">
            <div class="col-12 d-flex justify-content-between align-item-center ">
                <h3 class=" card-title text-white d-flex align-items-center  m-0">Create Job</h3>
                <a href="{{ route('jobs.index') }}" class="btn btn-light btn-sm" title="Back">
                    <i class="fa fa-arrow-left mr-1"></i> Back
                </a>
            </div>
        </div>
    </div> 
<div class="mb-2">
    <strong>Id:</strong> {{ $job->id }}
</div>
<div class="mb-2">
    <strong>Queue:</strong> {{ $job->queue }}
</div>
<div class="mb-2">
    <strong>Payload:</strong> {{ $job->payload }}
</div>
<div class="mb-2">
    <strong>Attempts:</strong> {{ $job->attempts }}
</div>
<div class="mb-2">
    <strong>Reserved at:</strong> {{ $job->reserved_at }}
</div>
<div class="mb-2">
    <strong>Available at:</strong> {{ $job->available_at }}
</div>
<div class="mb-2">
    <strong>Created at:</strong> {{ $job->created_at }}
</div>

@endsection