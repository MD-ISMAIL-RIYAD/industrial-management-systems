@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Invoice number</label>
    <input type="text" name="invoice_number" value="{{ old('invoice_number', $purchaseInvoice->invoice_number ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Supplier id</label>
    <select name="supplier_id" class="form-select">
        <option value="">Select Supplier id</option>
        @foreach ($suppliers as $option)
            <option value="{{ $option->id }}" {{ old('supplier_id', $purchaseInvoice->supplier_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Total amount</label>
    <input type="text" name="total_amount" value="{{ old('total_amount', $purchaseInvoice->total_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $purchaseInvoice->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Grand total</label>
    <input type="text" name="grand_total" value="{{ old('grand_total', $purchaseInvoice->grand_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Created by</label>
    <input type="text" name="created_by" value="{{ old('created_by', $purchaseInvoice->created_by ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>