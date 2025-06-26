@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Customer id</label>
    <select name="customer_id" class="form-select">
        <option value="">Select Customer id</option>
        @foreach ($customers as $option)
            <option value="{{ $option->id }}" {{ old('customer_id', $invoice->customer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $invoice->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Payment term</label>
    <input type="text" name="payment_term" value="{{ old('payment_term', $invoice->payment_term ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Invoice total</label>
    <input type="text" name="invoice_total" value="{{ old('invoice_total', $invoice->invoice_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Paid total</label>
    <input type="text" name="paid_total" value="{{ old('paid_total', $invoice->paid_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Previous due</label>
    <input type="text" name="previous_due" value="{{ old('previous_due', $invoice->previous_due ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>