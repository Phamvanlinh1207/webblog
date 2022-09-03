<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index(){
        $orderList = order::all();
        return view('admin.orders.index', array(
            'orderList' => $orderList
        ));
    }

    public function create(){
        return view('admin.orders.create');
    }

    public function store(Request $request){
        order::create(
            $request->all()
        );
        return redirect()->route('admin.orders.index');
    }


    public function edit($id){
        $order = order::find($id);
        return view('admin.orders.edit', array(
            'order' => $order
        ));
    }

    public function update(Request $request, $id){
        $order = order::find($id);
        $order->update(
            $request->all()
        );
        return redirect()->route('admin.orders.index');
    }

    public function destroy($id){
        order::destroy($id);
        return redirect()->route('admin.orders.index');
    }

    public function show($id){
        $orderShow = OrderDetail::find($id);
        return view('admin.orders.show', array(
            'orderShow' => $orderShow
        ));
    }
}
