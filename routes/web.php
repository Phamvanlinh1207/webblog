<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DashBoardController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//url trang web
Route::get('/', [HomeController::class, 'index'])->name('.index');
Route::get('/product-detail/{productId}', [HomeController::class, 'productDetail'])->name('product.detail');
Route::get('/category/{id}', [HomeController::class, 'categoryDetail'])->name('category.detail');
Route::get('/product-search', [HomeController::class, 'productSearch'])->name('product.search');


/**
 * Admin
 */

Route::prefix('admin')->group(function(){
    Route::get('/dashboard', [DashBoardController::class, 'index'])->name('admin.dashboard');

    //categories
    Route::get('/categories', [CategoryController::class, 'index'])->name('admin.categories.index');
    
    Route::get('/categories/create', [CategoryController::class, 'create'])->name('admin.categories.create');
    Route::post('/categories', [CategoryController::class, 'store'])->name('admin.categories.store');

    Route::get('/categories/{id}', [CategoryController::class, 'show'])->name('admin.categories.show');
   
    Route::get('/categories/{id}/edit', [CategoryController::class, 'edit'])->name('admin.categories.edit');
    Route::put('/categories/{id}', [CategoryController::class, 'update'])->name('admin.categories.update');
    
    Route::delete('/categories/{id}', [CategoryController::class, 'destroy'])->name('admin.categories.destroy');
    
    //product
    Route::get('/products', [ProductController::class, 'index'])->name('admin.products.index');
    
    Route::get('/products/create', [ProductController::class, 'create'])->name('admin.products.create');
    Route::post('/products', [ProductController::class, 'store'])->name('admin.products.store');

    Route::get('/products/{id}', [ProductController::class, 'show'])->name('admin.products.show');
   
    Route::get('/products/{id}/edit', [ProductController::class, 'edit'])->name('admin.products.edit');
    Route::put('/products/{id}', [ProductController::class, 'update'])->name('admin.products.update');
    
    Route::delete('/products/{id}', [ProductController::class, 'destroy'])->name('admin.products.destroy');

    //order
    Route::get('/orders', [OrderController::class, 'index'])->name('admin.orders.index');
    
    
    Route::get('/orders/create', [OrderController::class, 'create'])->name('admin.orders.create');
    Route::post('/orders', [OrderController::class, 'store'])->name('admin.orders.store');

    Route::get('/orders/{id}', [OrderController::class, 'show'])->name('admin.orders.show');
   
    Route::get('/orders/{id}/edit', [OrderController::class, 'edit'])->name('admin.orders.edit');
    Route::put('/orders/{id}', [OrderController::class, 'update'])->name('admin.orders.update');
    
    Route::delete('/orders/{id}', [OrderController::class, 'destroy'])->name('admin.orders.destroy');




});

