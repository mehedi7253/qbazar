<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\CouponController;
use App\Http\Controllers\API\OrderController;
use App\Http\Controllers\API\PageController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\ResetController;
use App\Http\Controllers\API\SettingsController;
use App\Http\Controllers\ProductController as ControllersProductController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */


Route::group(['middleware' => 'api', 'prefix' => 'auth'], function ($router) {
    Route::post('login', [AuthController::class, 'login']);
    Route::post('register', [AuthController::class, 'register']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);

    Route::post('reset_password', [ResetController::class, 'reset_password']);
    Route::post('change_password', [ResetController::class, 'change_password']);

    Route::post('request_verification_link', [AuthController::class, 'request_verification_link']);

    //Social Login
    Route::post('/social_login/{provider}', [AuthController::class, 'social_login']);
});


Route::middleware('api')->group(function () {

    //Category Controller
    Route::get('categories', [CategoryController::class, 'index']);
    Route::get('categories/all/{id}', [CategoryController::class, 'banner']);

    Route::get('categories/products/{slug?}', [CategoryController::class, 'products']);
    Route::get('categories/{slug?}', [CategoryController::class, 'show']);
    Route::post('products/search', [ProductController::class, 'search']);
    Route::get('products/offers', [ProductController::class, 'offers']);

    //products
    Route::get('products', [ProductController::class, 'allProduct']);
    Route::get('productshow/{id}', [ProductController::class, 'details']);
    Route::post('store-product', [ProductController::class, 'store']);
    Route::put('update-product/{id}', [ProductController::class, 'productUpdate']);
    //Get Coupon details
    Route::post('coupons/getCoupon', [CouponController::class, 'getCoupon']);

    //Get all setings
    Route::post('get_settings', [SettingsController::class, 'get_settings']);

    //Get Page Content
    Route::post('pages', [PageController::class, 'get_page']);

    //orders
    Route::get('all-orders', [OrderController::class, 'allOrder']);
    Route::get('singel-order/{id}', [OrderController::class, 'singleOrder']);
});

//Authorised Area
Route::group(['middleware' => 'jwt.auth'], function ($router) {
    Route::post('profile', [AuthController::class, 'profile']);
    Route::post('update_profile', [AuthController::class, 'update_profile']);
    Route::post('update_profile_picture', [AuthController::class, 'update_profile_picture']);
    Route::get('orders', [OrderController::class, 'index']);
    Route::get('orders/assigned_orders', [OrderController::class, 'assigned_orders']);
    Route::get('orders/delivered_orders', [OrderController::class, 'delivered_orders']);
    Route::post('orders/place_order', [OrderController::class, 'place_order']);
    Route::post('orders/make_payment/{id}', [OrderController::class, 'make_payment']);
    Route::get('orders/{id}', [OrderController::class, 'show']);
    Route::post('orders/mark_as_delivered/{id}', [OrderController::class, 'mark_as_delivered']);
});
