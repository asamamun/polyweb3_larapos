@extends('layouts.admin')
@section('content')
<h1>Edit Supplier</h1>
<form action="{{route('supplier.update',$supplier->id)}}" method="POST">
    @method('put')
    @csrf
    <div class="form-group">
        <label for="name">Supplier Name</label>
        <input type="text" name="name" class="form-control @error('name', 'post') is-invalid @enderror" value="{{ $supplier->name }}">
    </div>
    <div class="form-group">
        <label for="email">Supplier Email</label>
        <input name="email" class="form-control @error('email', 'post') is-invalid @enderror" value="{{ $supplier->email }}">
    </div>
    <div class="form-group">
        <label for="phone">Supplier Phone</label>
        <input type="text" name="phone" class="form-control @error('phone', 'post') is-invalid @enderror" value="{{ $supplier->phone }}">
    </div>
    <div class="form-group">
        <label for="phone">Supplier Address</label>
        <input type="text" name="address" class="form-control @error('address', 'post') is-invalid @enderror" value="{{ $supplier->address }}">
    </div>

    <div class="form-group">
        <label for="phone">Option1</label>
        <input type="text" name="option1" class="form-control @error('option1', 'post') is-invalid @enderror" value="{{ $supplier->option1 }}">
    </div>
    <div class="form-group">
        <label for="phone">Option2</label>
        <input type="text" name="option2" class="form-control @error('option2', 'post') is-invalid @enderror" value="{{ $supplier->option2 }}">
    </div>
    <div class="form-group">
        <label for="phone">Option3</label>
        <input type="text" name="option3" class="form-control @error('option3', 'post') is-invalid @enderror" value="{{ $supplier->option3 }}">
    </div>

    <div class="form-group">
        <select name="status">
            <option value="">Select</option>
            <option class="@error('status', 'post') is-invalid @enderror" value="1" {{$supplier->status==1?'selected':''}}>1</option>
            <option class="@error('status', 'post') is-invalid @enderror" value="0" {{$supplier->status==0?'selected':''}}>0</option>
        </select>

    </div>
    <div class="form-group">
        <input type="submit" name="submit" class="btn btn-primary mt-2" value="Update">
    </div>

</form>
@include('common.formerror')
@endsection