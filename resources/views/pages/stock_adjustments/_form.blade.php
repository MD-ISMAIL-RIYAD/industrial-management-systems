@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Adjustment at</label>
    <input type="text" name="adjustment_at" value="{{ old('adjustment_at', $stockAdjustment->adjustment_at ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>User id</label>
    <select name="user_id" class="form-select">
        <option value="">Select User id</option>
        @foreach ($users as $option)
            <option value="{{ $option->id }}" {{ old('user_id', $stockAdjustment->user_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Remark</label>
    <input type="text" name="remark" value="{{ old('remark', $stockAdjustment->remark ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Adjustment type id</label>
    <select name="adjustment_type_id" class="form-select">
        <option value="">Select Adjustment type id</option>
        @foreach ($adjustmentTypes as $option)
            <option value="{{ $option->id }}" {{ old('adjustment_type_id', $stockAdjustment->adjustment_type_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Werehouse id</label>
    <select name="werehouse_id" class="form-select">
        <option value="">Select Werehouse id</option>
        @foreach ($werehouses as $option)
            <option value="{{ $option->id }}" {{ old('werehouse_id', $stockAdjustment->werehouse_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>