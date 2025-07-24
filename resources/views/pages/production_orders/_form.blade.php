@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Production order number</label>
    <input type="text" name="production_order_number" value="{{ old('production_order_number', $productionOrder->production_order_number ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product id</label>
    <select name="product_id" class="form-select">
        <option value="">Select Product id</option>
        @foreach ($products as $option)
            <option value="{{ $option->id }}" {{ old('product_id', $productionOrder->product_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Warehouse id</label>
    <select name="warehouse_id" class="form-select">
        <option value="">Select Warehouse id</option>
        @foreach ($warehouses as $option)
            <option value="{{ $option->id }}" {{ old('warehouse_id', $productionOrder->warehouse_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Quantity</label>
    <input type="text" name="quantity" value="{{ old('quantity', $productionOrder->quantity ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Status</label>
    <input type="text" name="status" value="{{ old('status', $productionOrder->status ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Scheduled date</label>
    <input type="date" name="scheduled_date" value="{{ old('scheduled_date', $productionOrder->scheduled_date ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Started at</label>
    <input type="text" name="started_at" value="{{ old('started_at', $productionOrder->started_at ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Completed at</label>
    <input type="text" name="completed_at" value="{{ old('completed_at', $productionOrder->completed_at ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Remarks</label>
    <input type="text" name="remarks" value="{{ old('remarks', $productionOrder->remarks ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>