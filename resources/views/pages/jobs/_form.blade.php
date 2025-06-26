@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Queue</label>
    <input type="text" name="queue" value="{{ old('queue', $job->queue ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Payload</label>
    <input type="text" name="payload" value="{{ old('payload', $job->payload ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Attempts</label>
    <input type="text" name="attempts" value="{{ old('attempts', $job->attempts ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Reserved at</label>
    <input type="text" name="reserved_at" value="{{ old('reserved_at', $job->reserved_at ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Available at</label>
    <input type="text" name="available_at" value="{{ old('available_at', $job->available_at ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>