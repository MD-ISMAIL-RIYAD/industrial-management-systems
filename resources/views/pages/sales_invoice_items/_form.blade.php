@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Sales invoice id</label>
    <select name="sales_invoice_id" class="form-select">
        <option value="">Select Sales invoice id</option>
        @foreach ($salesInvoices as $option)
            <option value="{{ $option->id }}" {{ old('sales_invoice_id', $salesInvoiceItem->sales_invoice_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $salesInvoiceItem->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Quantity</label>
    <input type="text" name="quantity" value="{{ old('quantity', $salesInvoiceItem->quantity ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Unit price</label>
    <input type="text" name="unit_price" value="{{ old('unit_price', $salesInvoiceItem->unit_price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Total price</label>
    <input type="text" name="total_price" value="{{ old('total_price', $salesInvoiceItem->total_price ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>