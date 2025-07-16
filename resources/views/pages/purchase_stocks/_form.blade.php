@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Purchase id</label>
    <select name="purchase_id" class="form-select">
        <option value="">Select Purchase id</option>
        @foreach ($purchases as $option)
            <option value="{{ $option->id }}" {{ old('purchase_id', $purchaseStock->purchase_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Item id</label>
    <select name="item_id" class="form-select">
        <option value="">Select Item id</option>
        @foreach ($items as $option)
            <option value="{{ $option->id }}" {{ old('item_id', $purchaseStock->item_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Warehouse id</label>
    <select name="warehouse_id" class="form-select">
        <option value="">Select Warehouse id</option>
        @foreach ($warehouses as $option)
            <option value="{{ $option->id }}" {{ old('warehouse_id', $purchaseStock->warehouse_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $purchaseStock->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Unit id</label>
    <select name="unit_id" class="form-select">
        <option value="">Select Unit id</option>
        @foreach ($units as $option)
            <option value="{{ $option->id }}" {{ old('unit_id', $purchaseStock->unit_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>