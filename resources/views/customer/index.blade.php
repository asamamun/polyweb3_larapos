@extends('layouts.admin')
@section('content')
@include('common.message')
<section style="background-color: #eee; margin-top:20px;">
<a class="btn btn-primary" href="{{route('customer.create')}}">+</a>
        <div class="row">
            <div class="col-md-9 mt-2">
            @foreach ($customer as $c)
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->name}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->email}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Phone</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->phone}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Address</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->address}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Option1</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->option1}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Option2</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->option2}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Option3</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->option3}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Status</p>
                            </div>
                            <div class="col-sm-9"> 
                            @if($c->status == 1)
                            <p class="mb-0">Active</p>
                            @elseif($c->status == 0)
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
                                <a class="btn btn-info mx-2 " type="submit" href="{{route('customer.edit', $c->id)}}"><i class="fa-solid fa-pen-to-square"></i>
                                </a>   
                                <form action="{{route('customer.destroy', $c->id)}}" method="post" onclick="return confirm('Are you sure you want to delete this item')">
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

{{ $customer->onEachSide(3)->links() }}
@endsection
