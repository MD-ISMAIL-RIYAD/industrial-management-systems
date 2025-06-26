@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $customer->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Mobile</label>
    <input type="text" name="mobile" value="{{ old('mobile', $customer->mobile ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Email</label>
    <input type="email" name="email" value="{{ old('email', $customer->email ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Address</label>
    <input type="text" name="address" value="{{ old('address', $customer->address ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Photo</label>
    @if(isset($customer->photo) && $customer->photo)
        <br><img src="{{ asset('storage/' . $customer->photo) }}" width="100">
    @endif
    <input type="file" name="photo" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>