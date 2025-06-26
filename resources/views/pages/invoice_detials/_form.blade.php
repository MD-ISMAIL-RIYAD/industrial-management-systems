@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Invoice id</label>
    <select name="invoice_id" class="form-select">
        <option value="">Select Invoice id</option>
        @foreach ($invoices as $option)
            <option value="{{ $option->id }}" {{ old('invoice_id', $invoiceDetial->invoice_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Service id</label>
    <select name="service_id" class="form-select">
        <option value="">Select Service id</option>
        @foreach ($services as $option)
            <option value="{{ $option->id }}" {{ old('service_id', $invoiceDetial->service_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Unit</label>
    <input type="text" name="unit" value="{{ old('unit', $invoiceDetial->unit ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Price</label>
    <input type="text" name="price" value="{{ old('price', $invoiceDetial->price ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Discount</label>
    <input type="text" name="discount" value="{{ old('discount', $invoiceDetial->discount ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Vat</label>
    <input type="text" name="vat" value="{{ old('vat', $invoiceDetial->vat ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>