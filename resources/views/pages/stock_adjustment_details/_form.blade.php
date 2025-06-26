@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Adjustment id</label>
    <select name="adjustment_id" class="form-select">
        <option value="">Select Adjustment id</option>
        @foreach ($adjustments as $option)
            <option value="{{ $option->id }}" {{ old('adjustment_id', $stockAdjustmentDetail->adjustment_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $stockAdjustmentDetail->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $stockAdjustmentDetail->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Price</label>
    <input type="text" name="price" value="{{ old('price', $stockAdjustmentDetail->price ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>