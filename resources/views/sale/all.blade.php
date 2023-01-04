@extends('layouts.admin')
@section('content')
{{-- {{dd($sales)}} --}}
@forelse ($sales as $sale)
<a target="_blank" href="{{url('invoice/'.$sale['id'])}}">{{$sale['id']}}</a> <hr>
    
@empty
    <h1>no sales found</h1>

@endforelse
{{ $sales->onEachSide(5)->links() }}
    
@endsection