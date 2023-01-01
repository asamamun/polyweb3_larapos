@extends('layouts.admin')
@section('content')
        
    <table class="table table-bordered text-center">
        <tr>
            <th>Path</th>
            <th>user_id</th>
            <th>Created_Time</th>
        </tr>
    @foreach ($logs as $l)
        <tr>
            <td>{{$l->path}}</td>
            <td>{{$l->user_id}}</td>
            <td>{{$l->created_at}}</td>
        </tr>
    @endforeach
 </table>
 {{ $logs->onEachSide(3)->links() }}

 @endsection