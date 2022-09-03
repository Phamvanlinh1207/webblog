@extends('admin.master')
@section('content')
    <div class="col-sm-12 col-xl-8 mt-5" style="margin-left: 140px">
        <form method="post"action="{{ route('admin.orders.update', $order->id) }}">
            @method('put')
            @csrf
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Floating Label</h6>
                <div class="form-group ">
                    <label for="exampleInputName1">Name</label>
                    <input value="{{ $order->code }}" type="" class="form-control" name="code" placeholder="Code"
                        disabled>
                </div>
                <div class="form-group">
                    {{-- <label for="exampleTextarea1">Status</label> --}}
                    {{-- <input value="{{ $order->status }}" type="text" class="form-control" name="status" placeholder="status"> --}}
                    <div class="form-group">
                        <label for="sel1">Status: </label>
                        <select class="form-control" id="sel1">
                            <option>{{ $order->status }}</option>
                            <option>Cần Xử Lý</option>
                            <option>Đã Xử Lý</option>
                        </select>
                    </div>
                </div>
                <div class="form-group mb-2">
                    <label for="exampleInputName1">User_id</label>
                    <input value="{{ $order->user_id }}" type="" class="form-control" name="code"
                        placeholder="Code" disabled>
                </div>
                <button type="submit" class="btn btn-primary me-2">Submit</button>
            </div>
        </form>
    </div>
@endsection
