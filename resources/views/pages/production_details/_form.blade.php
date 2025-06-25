@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Production id</label>
    <select name="production_id" class="form-select">
        <option value="">Select Production id</option>
        @foreach ($productions as $option)
            <option value="{{ $option->id }}" {{ old('production_id', $productionDetail->production_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $productionDetail->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Qty</label>
    <input type="text" name="qty" value="{{ old('qty', $productionDetail->qty ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Uom id</label>
    <select name="uom_id" class="form-select">
        <option value="">Select Uom id</option>
        @foreach ($uoms as $option)
            <option value="{{ $option->id }}" {{ old('uom_id', $productionDetail->uom_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Cost</label>
    <input type="text" name="cost" value="{{ old('cost', $productionDetail->cost ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>