@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Name</label>
    <input type="text" name="name" value="{{ old('name', $position->name ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Grade</label>
    <input type="text" name="grade" value="{{ old('grade', $position->grade ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Department id</label>
    <select name="department_id" class="form-select">
        <option value="">Select Department id</option>
        @foreach ($departments as $option)
            <option value="{{ $option->id }}" {{ old('department_id', $position->department_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>