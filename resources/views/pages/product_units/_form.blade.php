@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $productUnit->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Photo</label>
    @if(isset($productUnit->photo) && $productUnit->photo)
        <br><img src="{{ asset('storage/' . $productUnit->photo) }}" width="100">
    @endif
    <input type="file" name="photo" class="form-control">
</div>
<div class="mb-2">
    <label>Icon</label>
    <input type="text" name="icon" value="{{ old('icon', $productUnit->icon ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>