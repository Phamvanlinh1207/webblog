@extends('admin.master')
@section('content')
<div class="container-fluid pt-4 px-4">
    <div class="bg-secondary text-center rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <h6 class="mb-0">Recent Salse</h6>
            <a href="">Show All</a>
        </div>
        <div class="table-responsive">
            <table class="table text-start align-middle table-bordered table-hover mb-0">
                <thead>
                    <tr class="text-white">
                        <th scope="col"><input class="form-check-input" type="checkbox"></th>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">#</th>
                        <th scope="col">#</th>
                        
                    </tr>
                </thead>
                <tbody>
                    @foreach ($categoryList as $cat)
                    <tr>
                        <td><input class="form-check-input" type="checkbox"></td>
                        <td>{{ $cat->name }}</td>
                        <td>{{ $cat->description}}</td>                        
                        <td><a class="btn btn-sm btn-primary" href="{{ route('admin.categories.edit', $cat->id) }}">Edit</a></td>
                        <td><a class="btn btn-sm btn-primary" href="{{ route('admin.categories.destroy', $cat->id) }}">Delete
                            @method('delete')
                            @csrf
                        </a>
                           
                        </td>
                    </tr>        
                    @endforeach
                                
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Recent Sales End -->
@endsection