@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Purchase invoice id</label>
    <select name="purchase_invoice_id" class="form-select">
        <option value="">Select Purchase invoice id</option>
        @foreach ($purchaseInvoices as $option)
            <option value="{{ $option->id }}" {{ old('purchase_invoice_id', $purchaseInvoicesItem->purchase_invoice_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $purchaseInvoicesItem->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Quantity</label>
    <input type="text" name="quantity" value="{{ old('quantity', $purchaseInvoicesItem->quantity ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Unit price</label>
    <input type="text" name="unit_price" value="{{ old('unit_price', $purchaseInvoicesItem->unit_price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Total price</label>
    <input type="text" name="total_price" value="{{ old('total_price', $purchaseInvoicesItem->total_price ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>