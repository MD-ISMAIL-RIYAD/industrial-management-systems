@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $supplier->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Mobile</label>
    <input type="text" name="mobile" value="{{ old('mobile', $supplier->mobile ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Email</label>
    <input type="email" name="email" value="{{ old('email', $supplier->email ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Address</label>
    <input type="text" name="address" value="{{ old('address', $supplier->address ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>