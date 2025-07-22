@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

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
    <label>Uom id</label>
    <select name="uom_id" class="form-select">
        <option value="">Select Uom id</option>
        @foreach ($uoms as $option)
            <option value="{{ $option->id }}" {{ old('uom_id', $production->uom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Price</label>
    <input type="text" name="price" value="{{ old('price', $production->price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product name</label>
    <input type="text" name="product_name" value="{{ old('product_name', $production->product_name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Quantity</label>
    <input type="number" name="qty" value="{{ old('qty', $production->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Manufacturer id</label>
    <select name="manufacturer_id" class="form-select">
        <option value="">Select Manufacturer id</option>
        @foreach ($manufacturers as $option)
            <option value="{{ $option->id }}" {{ old('manufacturer_id', $production->manufacturer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product category id</label>
    <select name="product_category_id" class="form-select">
        <option value="">Select Product category id</option>
        @foreach ($productCategories as $option)
            <option value="{{ $option->id }}" {{ old('product_category_id', $production->product_category_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>