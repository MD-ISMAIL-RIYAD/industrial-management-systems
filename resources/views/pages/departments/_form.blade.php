@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Code</label>
    <input type="text" name="code" value="{{ old('code', $department->code ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $department->name ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>