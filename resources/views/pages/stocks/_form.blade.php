@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $stock->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $stock->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Transaction</label>
    <input type="number" name="transaction_type_id" value="{{ old('transaction_type_id', $stock->transaction_type_id ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $stock->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Warehouse id</label>
    <select name="warehouse_id" class="form-select">
        <option value="">Select Warehouse id</option>
        @foreach ($warehouses as $option)
            <option value="{{ $option->id }}" {{ old('warehouse_id', $stock->warehouse_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product type</label>
    <input type="text" name="product_type" value="{{ old('product_type', $stock->product_type ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product name</label>
    <input type="text" name="product_name" value="{{ old('product_name', $stock->product_name ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>