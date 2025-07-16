@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $rawMaterial->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Code</label>
    <input type="text" name="code" value="{{ old('code', $rawMaterial->code ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Description</label>
    <input type="text" name="description" value="{{ old('description', $rawMaterial->description ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Unit id</label>
    <select name="unit_id" class="form-select">
        <option value="">Select Unit id</option>
        @foreach ($units as $option)
            <option value="{{ $option->id }}" {{ old('unit_id', $rawMaterial->unit_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Category id</label>
    <select name="category_id" class="form-select">
        <option value="">Select Category id</option>
        @foreach ($categories as $option)
            <option value="{{ $option->id }}" {{ old('category_id', $rawMaterial->category_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>