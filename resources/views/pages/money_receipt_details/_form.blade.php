@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Money receipt id</label>
    <select name="money_receipt_id" class="form-select">
        <option value="">Select Money receipt id</option>
        @foreach ($moneyReceipts as $option)
            <option value="{{ $option->id }}" {{ old('money_receipt_id', $moneyReceiptDetail->money_receipt_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $moneyReceiptDetail->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Price</label>
    <input type="text" name="price" value="{{ old('price', $moneyReceiptDetail->price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $moneyReceiptDetail->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $moneyReceiptDetail->vat ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $moneyReceiptDetail->discount ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>