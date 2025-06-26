@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $productCategory->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Product section id</label>
    <select name="product_section_id" class="form-select">
        <option value="">Select Product section id</option>
        @foreach ($productSections as $option)
            <option value="{{ $option->id }}" {{ old('product_section_id', $productCategory->product_section_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>