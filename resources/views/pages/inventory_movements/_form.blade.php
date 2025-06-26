@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $inventoryMovement->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Movement type</label>
    <input type="text" name="movement_type" value="{{ old('movement_type', $inventoryMovement->movement_type ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Quantity</label>
    <input type="text" name="quantity" value="{{ old('quantity', $inventoryMovement->quantity ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Movement date</label>
    <input type="date" name="movement_date" value="{{ old('movement_date', $inventoryMovement->movement_date ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>