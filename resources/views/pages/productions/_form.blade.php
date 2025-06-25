@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Production datetime</label>
    <input type="date" name="production_datetime" value="{{ old('production_datetime', $production->production_datetime ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Bom id</label>
    <select name="bom_id" class="form-select">
        <option value="">Select Bom id</option>
        @foreach ($boms as $option)
            <option value="{{ $option->id }}" {{ old('bom_id', $production->bom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Labor cost</label>
    <input type="text" name="labor_cost" value="{{ old('labor_cost', $production->labor_cost ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Manager id</label>
    <select name="manager_id" class="form-select">
        <option value="">Select Manager id</option>
        @foreach ($managers as $option)
            <option value="{{ $option->id }}" {{ old('manager_id', $production->manager_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Total cost</label>
    <input type="text" name="total_cost" value="{{ old('total_cost', $production->total_cost ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>