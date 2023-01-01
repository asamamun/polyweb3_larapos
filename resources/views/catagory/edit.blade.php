@extends('layouts.admin')
@section('content')
<h1>Edit Catagory</h1>
{{-- @include('common.formerror') --}}

<form action="{{route('catagory.update', $catagory->id)}}" method="POST">
    @method('PUT')
    @csrf
    <div class="form-group">
        <label for="name">Catagory Name</label>
        <input type="text" name="name" class="form-control @error('name', 'post') is-invalid @enderror" value="{{ $catagory->name}}">
    </div>
    <div class="form-group">
        <label for="description">Catagory description</label>
        <textarea name="description" class="form-control @error('description', 'post') is-invalid @enderror">{{ $catagory->description}}</textarea>
    </div>
    <div class="form-group">
        <label for="icon">Catagory Icon</label>
        <input type="text" name="icon" class="form-control @error('icon', 'post') is-invalid @enderror" value="{{ $catagory->icon }}">
    </div>
    <div class="form-group">
        <input type="submit" name="submit" class="btn btn-primary mt-2" value="Update">
    </div>
</form>
@include('common.formerror')
@endsection