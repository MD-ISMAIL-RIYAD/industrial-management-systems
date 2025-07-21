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
    <label>Warehouse id</label>
    <select name="warehouse_id" class="form-select">
        <option value="">Select Warehouse id</option>
        @foreach ($warehouses as $option)
            <option value="{{ $option->id }}" {{ old('warehouse_id', $production->warehouse_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Section id</label>
    <select name="section_id" class="form-select">
        <option value="">Select Section id</option>
        @foreach ($sections as $option)
            <option value="{{ $option->id }}" {{ old('section_id', $production->section_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>