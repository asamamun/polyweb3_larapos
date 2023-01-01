@extends('layouts.admin')
@section('content')

{{--asset('asset/images/logo.png')--}}
    <h1>{{$comment}}</h1>
    <img style="height:500px; width: 900px;" src="{{('public/images/1('.$imagenum.').jpg')}}" alt="">


    @endsection