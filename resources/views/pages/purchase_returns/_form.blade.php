@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Purchase id</label>
    <select name="purchase_id" class="form-select">
        <option value="">Select Purchase id</option>
        @foreach ($purchases as $option)
            <option value="{{ $option->id }}" {{ old('purchase_id', $purchaseReturn->purchase_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Supplier id</label>
    <select name="supplier_id" class="form-select">
        <option value="">Select Supplier id</option>
        @foreach ($suppliers as $option)
            <option value="{{ $option->id }}" {{ old('supplier_id', $purchaseReturn->supplier_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Return date</label>
    <input type="date" name="return_date" value="{{ old('return_date', $purchaseReturn->return_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Reason</label>
    <input type="text" name="reason" value="{{ old('reason', $purchaseReturn->reason ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Subtotal</label>
    <input type="text" name="subtotal" value="{{ old('subtotal', $purchaseReturn->subtotal ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Total amount</label>
    <input type="text" name="total_amount" value="{{ old('total_amount', $purchaseReturn->total_amount ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>