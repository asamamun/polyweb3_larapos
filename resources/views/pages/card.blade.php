@extends('layouts.admin')
@section('content')

<h3>Hello Card!</h3>
<form method="POST" action="/profile">
    @csrf
    <input type="text">
</form>
@endsection