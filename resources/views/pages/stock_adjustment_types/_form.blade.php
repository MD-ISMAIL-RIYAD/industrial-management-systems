@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $stockAdjustmentType->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Factor</label>
    <input type="text" name="factor" value="{{ old('factor', $stockAdjustmentType->factor ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>