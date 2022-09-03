@extends('admin.master')
@section('content')
    <div class="col-sm-12 col-xl-8 mt-5" style="margin-left: 140px">
        <form method="post" method="post" action="{{ route('admin.orders.store') }}">
            @csrf
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Floating Label</h6>
                <div class="form-group">
                    <label for="exampleInputName1">Code</label>
                    <input value="" type="text" class="form-control" name="code" placeholder="Name">
                </div>                            
                <div class="form-group">
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#form-elements" aria-expanded="false"
                            aria-controls="form-elements">
                            <i class="menu-icon mdi mdi-card-text-outline"></i>
                            <span class="menu-title">Status</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="form-elements">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="">1</a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="">2</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </div>
                <button type="submit" class="btn btn-primary me-2">Submit</button>           
            </div>
        </form>
    </div>
@endsection
