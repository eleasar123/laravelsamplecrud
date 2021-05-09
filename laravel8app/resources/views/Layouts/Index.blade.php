@extends('layouts.app')

@section('content')
<body style="width:90vw;background-color:pink;">
    <div class="row" style="margin-top:10px">
        <div class="col-lg-12 margin-tb" >
            <div class="pull-left" style="margin-left:110px">
                <h2 class="jumbotron">ShoPinoy</h2>
            </div>
            <div class="pull-right" style="margin-top:140px; margin-right:10px;">
                <a class="btn btn-success" href="{{route('products.create')}}" title="Create a product"> <i class="fas fa-plus-circle"></i>
                    </a>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{$message}}</p>
        </div>
    @endif
<style>
.description{
    width: 30%;;
}
</style>    
    <table class="table table-bordered" style="width:90vw;margin-right:auto;margin-left:0px">
        <tr>
            <th>No</th>
            <th>Photo</th>
            <th>Name</th>
            <th>description</th>
            <th>Price</th>
            <th>Date Created</th>
            <th>Actions</th>
        </tr>
        @foreach ($products as $product)
            <tr>
                <td>{{$product->id}}</td>
                <td><img src="{{$product->photo}}"></td>
                <td>{{$product->name}}</td>
                <td class="description">{{$product->description}}</td>
                <td>Php{{$product->price}}</td>
                <td>{{$product->created_at}}</td>
                <td>
                    <form action="{{route('products.destroy',$product->id)}}" method="POST">

                        <a href="{{route('products.show',$product->id)}}" title="show">
                            <i class="fas fa-eye text-success  fa-lg"></i>
                        </a>

                        <a href="{{route('products.edit',$product->id)}}">
                            <i class="fas fa-edit  fa-lg"></i>
                        </a>

                        @csrf
                        @method('DELETE')

                        <button type="submit" title="delete" style="border: none; background-color:transparent;">
                            <i class="fas fa-trash fa-lg text-danger"></i>
                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
    </table>
</body>
    {!! $products->links() !!}

@endsection