@extends('layouts.app')


@section('content')
<center>
    <div class="row" style="margin-top:50px;">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>  </h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{route('products.index')}}" title="Go back"> <i class="fas fa-backward "></i> </a>
            </div>
        </div>
    </div>

    <div class="card" style="padding:20px;margin-top:50px;border:solid coral 2px;width:50vw;height:fit-content;border-radius:15%;text-align:left">
            <div class="container" style="padding:20px;text-align:center;border-radius:20%;box-shadow: 5px 10px 18px yellowgreen;">
                <img src="{{$product->photo}}">
            </div>
            <br>
            <div class="container">
                <span><strong>Name:</strong></span>
                {{$product->name}}

            </div>
        
            <div class="container">
                <span><strong>Description:</strong></span>
                {{$product->description}}
            </div>
        
        
            <div class="container">
                <span><strong>Price:</strong></span>
                Php {{$product->price}}
            </div>
        
     
            <div class="container">
                <span></span><strong>Date Created:</strong><span>
                {{$product->created_at}}

            </div>
            <div class="container">
                <span></span><strong>Date Updated:</strong><span>
                {{$product->updated_at}}

            </div>
     
    </div>
</center>
@endsection