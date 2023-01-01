@extends('layouts.admin')
@section('content')
<h1>Edit Product</h1>
<form action="{{route('product.update',$product->id)}}" method="POST">
    @method('put')
    @csrf
    <div class="form-group">
        <label for="name">Product Name</label>
        <input type="text" name="name" class="form-control @error('name', 'post') is-invalid @enderror" value="{{ $product->name }}">
    </div>
    <div class="form-group">
        <label for="description">Product Description</label>
        <textarea class="form-control @error('description', 'post') is-invalid @enderror" name="description">{{ $product->description }}</textarea>
    </div>
    <div class="form-group">
        <label for="catagory_id">Catagory</label>
        <input type="text" name="catagory_id" class="form-control @error('catagory_id', 'post') is-invalid @enderror" value="{{ $product->catagory_id }}">
    </div>
    <div class="form-group">
        <label for="supplier_id">Supplier</label>
        <input type="text" name="supplier_id" class="form-control @error('supplier_id', 'post') is-invalid @enderror" value="{{ $product->supplier_id }}">
    </div>
    <div class="form-group">
        <label for="unitprice">Unitprice</label>
        <input type="number" name="unitprice" class="form-control @error('unitprice', 'post') is-invalid @enderror" value="{{ $product->unitprice }}">
    </div>
    <div class="form-group">
        <label for="saleprice">Saleprice</label>
        <input type="number" name="saleprice" class="form-control @error('saleprice', 'post') is-invalid @enderror" value="{{ $product->saleprice }}">
    </div>
    <div class="form-group">
        <label for="unit">Unit</label>
        <select name="unit" id="unit" class="form-control">
            <option value="$product->unit">$product->unit</option>
            <option value="piece">Piece</option>
            <option value="kg">Kg</option>
            <option value="gm">gm</option>
            <option value="dozon">Dozon</option>
            <option value="hali">Hali</option>
            <option value="litter">Liter</option>
        </select>
    </div>
    <div class="form-group">
        <label for="unitvalue">Product Unitvalue</label>
        <input type="number" name="unitvalue" class="form-control @error('unitvalue', 'post') is-invalid @enderror" value="{{ $product->unitvalue }}">
    </div>
    <div class="form-group">
        <label for="quantity">Product Quantity</label>
        <input type="number" name="quantity" class="form-control @error('quantity', 'post') is-invalid @enderror" value="{{ $product->unitvalue }}">
    </div>
    <div class="form-group">
        <label for="weight">Product Weight</label>
        <input type="text" name="weight" class="form-control @error('weight', 'post') is-invalid @enderror" value="{{ $product->weight }}">
    </div>
    <div class="form-group">
        <label for="discount">Product Discount</label>
        <input type="number" name="discount" class="form-control @error('discount', 'post') is-invalid @enderror" value="{{ $product->discount }}">
    </div>
    <div class="form-group">
        <label for="image">Product Image</label>
        <img src="{{ $product->image }}" style="height:100px; width:80px;" alt="">
    </div>
    <div class="form-group">
        <label for="dimention">Product Dimention</label>
        <input type="text" name="dimention" class="form-control @error('dimention', 'post') is-invalid @enderror" value="{{ $product->dimention }}">
    </div>

    <div class="form-group">
        <label for="option1">Option1</label>
        <input type="text" name="option1" class="form-control @error('option1', 'post') is-invalid @enderror" value="{{ $product->option1 }}">
    </div>
    <div class="form-group">
        <label for="option2">Option2</label>
        <input type="text" name="option2" class="form-control @error('option2', 'post') is-invalid @enderror" value="{{ $product->option2 }}">
    </div>
    <div class="form-group">
        <label for="option3">Option3</label>
        <input type="text" name="option3" class="form-control @error('option3', 'post') is-invalid @enderror" value="{{ $product->option3 }}">
    </div>
    <div class="form-group">
        <label for="option4">Option4</label>
        <input type="text" name="option4" class="form-control @error('option3', 'post') is-invalid @enderror" value="{{ $product->option4 }}">
    </div>
    <div class="form-group">
        <label for="option5">Option5</label>
        <input type="text" name="option5" class="form-control @error('option3', 'post') is-invalid @enderror" value="{{ $product->option5 }}">
    </div>

    <div class="form-group">
        <select name="status">
            <option value="">Select</option>
            <option class="@error('status', 'post') is-invalid @enderror" value="1" {{$product->status==1?'selected':''}}>1</option>
            <option class="@error('status', 'post') is-invalid @enderror" value="0" {{$product->status==0?'selected':''}}>0</option>
        </select>

    </div>
    <div class="form-group">
        <input type="submit" name="submit" class="btn btn-primary mt-2" value="Update">
    </div>

</form>
@include('common.formerror')
@endsection
