@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Supplier id</label>
    <select name="supplier_id" class="form-select">
        <option value="">Select Supplier id</option>
        @foreach ($suppliers as $option)
            <option value="{{ $option->id }}" {{ old('supplier_id', $purchase->supplier_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Purchase date</label>
    <input type="date" name="purchase_date" value="{{ old('purchase_date', $purchase->purchase_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Delivery date</label>
    <input type="date" name="delivery_date" value="{{ old('delivery_date', $purchase->delivery_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Shipping address</label>
    <input type="text" name="shipping_address" value="{{ old('shipping_address', $purchase->shipping_address ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Purchase total</label>
    <input type="text" name="purchase_total" value="{{ old('purchase_total', $purchase->purchase_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Paid amount</label>
    <input type="text" name="paid_amount" value="{{ old('paid_amount', $purchase->paid_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $purchase->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Status id</label>
    <select name="status_id" class="form-select">
        <option value="">Select Status id</option>
        @foreach ($statuses as $option)
            <option value="{{ $option->id }}" {{ old('status_id', $purchase->status_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $purchase->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $purchase->vat ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>