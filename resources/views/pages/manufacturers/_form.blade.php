@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $manufacturer->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Contact</label>
    <input type="text" name="contact" value="{{ old('contact', $manufacturer->contact ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>