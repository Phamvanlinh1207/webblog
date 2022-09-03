@extends('admin.master')
@section('content')
    <div class="col-sm-12 col-xl-8 mt-5" style="margin-left: 140px">
        <form method="post"action="{{ route('admin.products.store') }}">
            @csrf
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Floating Label</h6>
                <div class="form-group">
                    <label for="exampleInputName1">Name</label>
                    <input  type="text" class="form-control" name="name" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="formFile" class="form-label">Images</label>
                    <input class="form-control bg-dark" type="file" name="img" id="formFile">
                </div>                            
                <div class="form-group">
                    <label for="exampleTextarea1">Description</label>
                    <textarea class="form-control" name="description" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Price</label>
                    <input  type="number" class="form-control" name="price" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="exampleInputName1">Quantity</label>
                    <input type="number" class="form-control" name="quantity" placeholder="Name">
                </div>
                <button type="submit" class="btn btn-primary me-2">Submit</button>           
            </div>
        </form>
    </div>
@endsection
