@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $product->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Offer price</label>
    <input type="text" name="offer_price" value="{{ old('offer_price', $product->offer_price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Manufacturer id</label>
    <select name="manufacturer_id" class="form-select">
        <option value="">Select Manufacturer id</option>
        @foreach ($manufacturers as $option)
            <option value="{{ $option->id }}" {{ old('manufacturer_id', $product->manufacturer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Regular price</label>
    <input type="text" name="regular_price" value="{{ old('regular_price', $product->regular_price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Photo</label>
    @if(isset($product->photo) && $product->photo)
        <br><img src="{{ asset('storage/' . $product->photo) }}" width="100">
    @endif
    <input type="file" name="photo" class="form-control">
</div>
<div class="mb-2">
    <label>Product category id</label>
    <select name="product_category_id" class="form-select">
        <option value="">Select Product category id</option>
        @foreach ($productCategories as $option)
            <option value="{{ $option->id }}" {{ old('product_category_id', $product->product_category_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product section id</label>
    <select name="product_section_id" class="form-select">
        <option value="">Select Product section id</option>
        @foreach ($productSections as $option)
            <option value="{{ $option->id }}" {{ old('product_section_id', $product->product_section_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Is featured</label>
    <input type="text" name="is_featured" value="{{ old('is_featured', $product->is_featured ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Is brand</label>
    <input type="text" name="is_brand" value="{{ old('is_brand', $product->is_brand ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Uom id</label>
    <select name="uom_id" class="form-select">
        <option value="">Select Uom id</option>
        @foreach ($uoms as $option)
            <option value="{{ $option->id }}" {{ old('uom_id', $product->uom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Weight</label>
    <input type="text" name="weight" value="{{ old('weight', $product->weight ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Barcode</label>
    <input type="text" name="barcode" value="{{ old('barcode', $product->barcode ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product type id</label>
    <select name="product_type_id" class="form-select">
        <option value="">Select Product type id</option>
        @foreach ($productTypes as $option)
            <option value="{{ $option->id }}" {{ old('product_type_id', $product->product_type_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product unit id</label>
    <select name="product_unit_id" class="form-select">
        <option value="">Select Product unit id</option>
        @foreach ($productUnits as $option)
            <option value="{{ $option->id }}" {{ old('product_unit_id', $product->product_unit_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>