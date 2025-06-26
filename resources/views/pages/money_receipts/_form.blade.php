@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Customer id</label>
    <select name="customer_id" class="form-select">
        <option value="">Select Customer id</option>
        @foreach ($customers as $option)
            <option value="{{ $option->id }}" {{ old('customer_id', $moneyReceipt->customer_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $moneyReceipt->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Receipt total</label>
    <input type="text" name="receipt_total" value="{{ old('receipt_total', $moneyReceipt->receipt_total ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $moneyReceipt->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $moneyReceipt->vat ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>