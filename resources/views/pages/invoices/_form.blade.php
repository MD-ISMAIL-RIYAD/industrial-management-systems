@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Invoice number</label>
    <input type="text" name="invoice_number" value="{{ old('invoice_number', $invoice->invoice_number ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Order id</label>
    <select name="order_id" class="form-select">
        <option value="">Select Order id</option>
        @foreach ($orders as $option)
            <option value="{{ $option->id }}" {{ old('order_id', $invoice->order_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
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
    <label>Invoice date</label>
    <input type="date" name="invoice_date" value="{{ old('invoice_date', $invoice->invoice_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Subtotal</label>
    <input type="text" name="subtotal" value="{{ old('subtotal', $invoice->subtotal ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Tax amount</label>
    <input type="text" name="tax_amount" value="{{ old('tax_amount', $invoice->tax_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount amount</label>
    <input type="text" name="discount_amount" value="{{ old('discount_amount', $invoice->discount_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Total amount</label>
    <input type="text" name="total_amount" value="{{ old('total_amount', $invoice->total_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Paid amount</label>
    <input type="text" name="paid_amount" value="{{ old('paid_amount', $invoice->paid_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Payment status</label>
    <input type="text" name="payment_status" value="{{ old('payment_status', $invoice->payment_status ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Status</label>
    <input type="text" name="status" value="{{ old('status', $invoice->status ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>