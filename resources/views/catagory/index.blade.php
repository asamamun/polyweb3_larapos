@extends('layouts.admin')
@section('content')

@include('common.message')
<section style="background-color:#eee; margin-top:20px;">
<a class="btn btn-primary" href="{{route('catagory.create')}}">+</a>
        <div class="row">
            <div class="col-md-9 mt-2">
                
            @foreach ($catagory as $c)
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
                                <p class="mb-0">Description</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">{{$c->description}}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Icon</p>
                            </div>
                            <div class="col-sm-9">
                            <img style="height:200px; width:180px;" src="{{$c->icon}}" alt="">
                            </div>
                        </div>
                        <hr>
                    
                
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
                                <a class="btn btn-info mx-2 " type="submit" href="{{route('catagory.edit', $c->id)}}"><i class="fa-solid fa-pen-to-square"></i>
                                </a>   
                                <form action="{{route('catagory.destroy', $c->id)}}" method="post" onclick="return confirm('Are you sure you want to delete this item')">
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
{{ $catagory->onEachSide(3)->links() }}
@endsection