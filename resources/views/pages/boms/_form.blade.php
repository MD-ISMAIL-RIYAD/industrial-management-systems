@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Code</label>
    <input type="text" name="code" value="{{ old('code', $bom->code ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $bom->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $bom->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $bom->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Labour cost</label>
    <input type="text" name="labour_cost" value="{{ old('labour_cost', $bom->labour_cost ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Date</label>
    <input type="date" name="date" value="{{ old('date', $bom->date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $bom->remark ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>