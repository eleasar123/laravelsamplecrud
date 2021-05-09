@extends('layouts.app')

@section('content')
    <div class="row" style="margin-top:10px">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2 class="jumbotron">Edit Product</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{route('products.index')}}" title="Go back"> <i class="fas fa-backward "></i> </a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Error!</strong>
            <ul>
                @foreach ($errors->all() as $error)
                    <li></li>
                @endforeach
            </ul>
        </div>
    @endif
<div class="container" style="width:50rem; border:solid black 1px;border-radius:30%;padding:5%;margin-bottom:10px;background-color:plum">
    <form action="{{route('products.update',$product->id)}}" method="POST" >
        @csrf
        @method('PUT')
                <div class="container">
                    <strong>Photo:</strong>
                    <input type="text" name="photo" value="{{$product->photo}}" class="form-control" placeholder="Photo">
                </div>
                <div class="container">
                    <strong>Name:</strong>
                    <input type="text" name="name" value="{{$product->name}}" class="form-control" placeholder="Name">
                </div>
            
                <div class="container">
                    <strong>Description</strong>
                    <input class="form-control" style="height:50px" name="description"
                        placeholder="description" value="{{$product->description}}"></input>
                </div>
           
                <div class="container">
                    <strong>Price</strong>
                    <input type="number" name="price" class="form-control" placeholder=""
                        value="{{$product->price}}">
                </div>
           
           <br>
              <center>  <button type="submit" class="btn btn-primary">Submit</button></center>
            
      
    </form>
</div>
@endsection