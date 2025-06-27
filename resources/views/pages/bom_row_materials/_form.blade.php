@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Item id</label>
    <select name="item_id" class="form-select">
        <option value="">Select Item id</option>
        @foreach ($items as $option)
            <option value="{{ $option->id }}" {{ old('item_id', $bomRowMaterial->item_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $bomRowMaterial->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Cost</label>
    <input type="text" name="cost" value="{{ old('cost', $bomRowMaterial->cost ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Bom id</label>
    <select name="bom_id" class="form-select">
        <option value="">Select Bom id</option>
        @foreach ($boms as $option)
            <option value="{{ $option->id }}" {{ old('bom_id', $bomRowMaterial->bom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Uom id</label>
    <select name="uom_id" class="form-select">
        <option value="">Select Uom id</option>
        @foreach ($uoms as $option)
            <option value="{{ $option->id }}" {{ old('uom_id', $bomRowMaterial->uom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>