@extends('layouts.admin')
@section('content')
@include('common.message')
<section style="background-color: #eee; margin-top:20px;">
<a class="btn btn-primary" href="{{route('product.create')}}">+</a>
        <div class="row">
            <div class="col-md-9 mt-2">
                @foreach ($product as $p)
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->name}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Description</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->description}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Catagory</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->catagory->name}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Supplier</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->supplier->name}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Unitprice</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->unitprice}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Saleprice</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->saleprice}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Quantity</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->quantity}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Weight</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->weight}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Discount</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$p->discount}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Image</p>
                            </div>
                            <div class="col-sm-9">
                            <img style="height:200px; width:180px;" src="{{asset('storage/'.$p->image)}}" alt="">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Status</p>
                            </div>
                            <div class="col-sm-9"> 
                            @if($p->status == 1)
                            <p class="mb-0">Active</p>
                            @elseif($p->status == 0)
                            <p class="mb-0">Deactive</p>
                            @endif 
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Action</p>
                            </div>
                            <div class="col-sm-9 d-flex justify-content-start">
                                <a class="btn btn-info mx-2 " type="submit" href="{{route('product.edit', $p->id)}}"><i class="fa-solid fa-pen-to-square"></i>
                                </a>   
                                <form action="{{route('product.destroy', $p->id)}}" method="post" onclick="return confirm('Are you sure you want to delete this item')">
                                    @csrf
                                    @method('delete')
                                    <button class="btn btn-danger" type="submit" name="submit"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="col-md-3 mt-2">
                @include('layouts.sidebar')
            </div>
    </div>
</section>
{{ $product->onEachSide(3)->links() }}
@endsection