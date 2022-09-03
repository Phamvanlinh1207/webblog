@extends('admin.master')
@section('content')
<div class="container-fluid pt-4 px-4">
    <div class="bg-secondary text-center rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <h6 class="mb-0">Recent Salse</h6>
            <a href="{{ route('admin.orders.index') }}">Show All</a>
        </div>
        <div class="table-responsive">
            <table class="table text-start align-middle table-bordered table-hover mb-0">
                <thead>
                    <tr class="text-white">
                        <th scope="col"><input class="form-check-input" type="checkbox"></th>
                        <th scope="col">id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Total</th>
                        <th scope="col">Status</th>
                        <th scope="col">Created_at</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input class="form-check-input" type="checkbox"></td>
                        <td>{{$orderShow->id}}</td>  
                        <td>{{$orderShow->order->user->name}}</td>    
                        <td>{{$orderShow->product->name}}</td>
                        <td>{{$orderShow->product->price}}</td> 
                        <td>{{$orderShow->quantity}}</td> 
                        <td>{{($orderShow->product->price)*($orderShow->quantity)}}</td>    
                        <td>{{$orderShow->order->status}}</td> 
                        <td>{{$orderShow->created_at}}</td>    
                    </tr>        
                                
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Recent Sales End -->
@endsection