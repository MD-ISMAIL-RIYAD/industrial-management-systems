@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $item->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Email</label>
    <input type="email" name="email" value="{{ old('email', $item->email ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>