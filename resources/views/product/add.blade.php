@extends('layouts.admin')
@section('content')
<h1>Create Product</h1>
@include('common.formerror')
{!! Form::open(['route' => 'product.store','files' => true]) !!}
    <div class="form-group">
        <label for="name">Product Name</label>
        <input type="text" name="name" class="form-control @error('name', 'post') is-invalid @enderror" value="{{ old('name') }}">
    </div>
    <div class="form-group">
        <label for="description">Product Description</label>
        <textarea class="form-control @error('description', 'post') is-invalid @enderror" name="description">{{ old('description') }}</textarea>
    </div>
    <div class="form-group">
        <label for="catagory_id">Catagory</label>
        {!! Form::select('catagory_id', $catagory,null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        <label for="supplier_id">Supplier</label>
        {!! Form::select('supplier_id', $supplier,null,['class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        <label for="unitprice">Product Unitprice</label>
        <input type="number" name="unitprice" class="form-control @error('unitprice', 'post') is-invalid @enderror" value="{{ old('unitprice') }}">
    </div>
    <div class="form-group">
        <label for="saleprice">Product Saleprice</label>
        <input type="number" name="saleprice" class="form-control @error('saleprice', 'post') is-invalid @enderror" value="{{ old('saleprice') }}">
    </div>
    {{-- <div class="form-group">
        <label for="unit">Product Unit</label>
        <input type="text" name="unit" class="form-control @error('unit', 'post') is-invalid @enderror" value="{{ old('unit') }}">
    </div> --}}
    <div class="form-group">
        <label for="unit">Unit</label>
        <select name="unit" id="unit" class="form-control">
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
        <input type="number" name="unitvalue" class="form-control @error('unitvalue', 'post') is-invalid @enderror" value="{{ old('unitvalue') }}">
    </div>
    <div class="form-group">
        <label for="quantity">Product Quantity</label>
        <input type="number" name="quantity" class="form-control @error('quantity', 'post') is-invalid @enderror" value="{{ old('quantity') }}">
    </div>
    <div class="form-group">
        <label for="weight">Product Weight</label>
        <input type="text" name="weight" class="form-control @error('weight', 'post') is-invalid @enderror" value="{{ old('weight') }}">
    </div>
    <div class="form-group">
        <label for="discount">Product Discount</label>
        <input type="number" name="discount" class="form-control @error('discount', 'post') is-invalid @enderror" value="{{ old('discount') }}">
    </div>
    <div class="form-group border p-2 m-0 mt-1  rounded-2 row">
        <div class="col-md-7">
        <label for="image">Product Image</label>
        <input type="file" name="image" accept="image/jpeg, image/png, image/jpg" class="form-control @error('icon', 'post') is-invalid @enderror" id="image-input" value="{{ old('image') }}" onchange="loadFile(event)">
        </div>
        <div class="col-md-5">
        <img src="https://picsum.photos/200" id="output" class="img-fluid rounded" style="height:150px; width:180px;" alt="">
        </div>
    </div>
    <div class="form-group">
        <label for="dimention">Product Dimention</label>
        <input type="text" name="dimention" class="form-control @error('dimention', 'post') is-invalid @enderror" value="{{ old('dimention') }}">
    </div>

    <div class="form-group">
        <label for="option1">Option1</label>
        <input type="text" name="option1" class="form-control @error('option1', 'post') is-invalid @enderror" value="{{ old('option1') }}">
    </div>
    <div class="form-group">
        <label for="option2">Option2</label>
        <input type="text" name="option2" class="form-control @error('option2', 'post') is-invalid @enderror" value="{{ old('option2') }}">
    </div>
    <div class="form-group">
        <label for="option3">Option3</label>
        <input type="text" name="option3" class="form-control @error('option3', 'post') is-invalid @enderror" value="{{ old('option3') }}">
    </div>
    <div class="form-group">
        <label for="option4">Option4</label>
        <input type="text" name="option4" class="form-control @error('option4', 'post') is-invalid @enderror" value="{{ old('option4') }}">
    </div>
    <div class="form-group">
        <label for="option5">Option5</label>
        <input type="text" name="option5" class="form-control @error('option5', 'post') is-invalid @enderror" value="{{ old('option5') }}">
    </div>


    <div class="form-group">
        <label for="status">Status</label>
        <select name="status">
                <option value="">Select</option>
                <option class="@error('status', 'post') is-invalid @enderror" value="1">Active</option>
                <option class="@error('status', 'post') is-invalid @enderror" value="0">Deactive</option>
            </select>

    </div>
    <div class="form-group">
        <input type="submit" name="submit" class="btn btn-primary mt-2" value="Add">
    </div>
</form>

@endsection