@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Purchase id</label>
    <select name="purchase_id" class="form-select">
        <option value="">Select Purchase id</option>
        @foreach ($purchases as $option)
            <option value="{{ $option->id }}" {{ old('purchase_id', $purchaseDetail->purchase_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $purchaseDetail->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $purchaseDetail->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Price</label>
    <input type="text" name="price" value="{{ old('price', $purchaseDetail->price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $purchaseDetail->vat ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $purchaseDetail->discount ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>