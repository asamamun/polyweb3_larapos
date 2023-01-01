@extends('layouts.admin')
@section('content')
    <div class="row">
        <div class="col-2">
            <a href="{{url('dailyreports')}}">Daily Report</a>
        </div>
        <div class="col-2">
            <a href="">Weekly Report</a>
        </div>
        <div class="col-2">
            <a href="">Monthly Report</a>
        </div>
        <div class="col-2">
            <a href="">Yearly Report</a>
        </div>
        <div class="col-2">
            <a href="">Category wise Report</a>
        </div>
        <div class="col-2">
            <a href="">Supplier wise report</a>
        </div>
        <div class="col-2">
            <a href="">Customer wise report</a>
        </div>
        <div class="col-2">
            <a href="">Low inventory</a>
        </div>
        <div class="col-2">
            <a href="">Top selling products</a>
        </div>
        
    </div>
@endsection