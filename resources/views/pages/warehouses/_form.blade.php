@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Manager name</label>
    <input type="text" name="manager_name" value="{{ old('manager_name', $warehouse->manager_name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>City</label>
    <input type="text" name="city" value="{{ old('city', $warehouse->city ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Contact</label>
    <input type="text" name="contact" value="{{ old('contact', $warehouse->contact ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>