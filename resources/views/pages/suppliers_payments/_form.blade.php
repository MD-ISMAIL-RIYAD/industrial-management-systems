@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $suppliersPayment->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Email</label>
    <input type="email" name="email" value="{{ old('email', $suppliersPayment->email ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Create at</label>
    <input type="text" name="create_at" value="{{ old('create_at', $suppliersPayment->create_at ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>