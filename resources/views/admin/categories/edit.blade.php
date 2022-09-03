@extends('admin.master')
@section('content')
    <div class="col-sm-12 col-xl-8 mt-5" style="margin-left: 140px">
        <form method="post"action="{{ route('admin.categories.update', $category->id) }}">
            @method('put')
            @csrf
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Floating Label</h6>
                <div class="form-group">
                    <label for="exampleInputName1">Name</label>
                    <input value="{{ $category->name }}" type="text" class="form-control" name="name" placeholder="Name">
                </div>                            
                <div class="form-group">
                    <label for="exampleTextarea1">Description</label>
                    <textarea class="form-control" name="description" rows="4">{{ $category->description }}</textarea>
                </div>
                <button type="submit" class="btn btn-primary me-2">Submit</button>           
            </div>
        </form>
    </div>
@endsection
