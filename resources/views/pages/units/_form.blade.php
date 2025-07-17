@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $unit->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Abbreviation</label>
    <input type="text" name="abbreviation" value="{{ old('abbreviation', $unit->abbreviation ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Item categories</label>
    <input type="text" name="item_categories" value="{{ old('item_categories', $unit->item_categories ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>