@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $vendor->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Mobile</label>
    <input type="text" name="mobile" value="{{ old('mobile', $vendor->mobile ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Photo</label>
    @if(isset($vendor->photo) && $vendor->photo)
        <br><img src="{{ asset('storage/' . $vendor->photo) }}" width="100">
    @endif
    <input type="file" name="photo" class="form-control">
</div>
<div class="mb-2">
    <label>Address</label>
    <input type="text" name="address" value="{{ old('address', $vendor->address ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>