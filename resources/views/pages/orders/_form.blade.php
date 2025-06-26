@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Customer id</label>
    <select name="customer_id" class="form-select">
        <option value="">Select Customer id</option>
        @foreach ($customers as $option)
            <option value="{{ $option->id }}" {{ old('customer_id', $order->customer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Order date</label>
    <input type="date" name="order_date" value="{{ old('order_date', $order->order_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Delivery date</label>
    <input type="date" name="delivery_date" value="{{ old('delivery_date', $order->delivery_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Shipping address</label>
    <input type="text" name="shipping_address" value="{{ old('shipping_address', $order->shipping_address ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Order total</label>
    <input type="text" name="order_total" value="{{ old('order_total', $order->order_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Paid amount</label>
    <input type="text" name="paid_amount" value="{{ old('paid_amount', $order->paid_amount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $order->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Status id</label>
    <select name="status_id" class="form-select">
        <option value="">Select Status id</option>
        @foreach ($statuses as $option)
            <option value="{{ $option->id }}" {{ old('status_id', $order->status_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $order->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $order->vat ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Table id</label>
    <select name="table_id" class="form-select">
        <option value="">Select Table id</option>
        @foreach ($tables as $option)
            <option value="{{ $option->id }}" {{ old('table_id', $order->table_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>