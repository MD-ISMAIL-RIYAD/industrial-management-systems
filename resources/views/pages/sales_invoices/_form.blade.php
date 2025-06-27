@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Invoice number</label>
    <input type="text" name="invoice_number" value="{{ old('invoice_number', $salesInvoice->invoice_number ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Customer id</label>
    <select name="customer_id" class="form-select">
        <option value="">Select Customer id</option>
        @foreach ($customers as $option)
            <option value="{{ $option->id }}" {{ old('customer_id', $salesInvoice->customer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Total amount</label>
    <input type="text" name="total_amount" value="{{ old('total_amount', $salesInvoice->total_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $salesInvoice->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Grand total</label>
    <input type="text" name="grand_total" value="{{ old('grand_total', $salesInvoice->grand_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Created by</label>
    <input type="text" name="created_by" value="{{ old('created_by', $salesInvoice->created_by ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>