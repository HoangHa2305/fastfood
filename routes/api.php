<?php

use App\Http\Controllers\Api\CategoryApiController;
use App\Http\Controllers\Api\ProductApiController;
use App\Http\Controllers\Api\SliderApiController;
use App\Http\Controllers\Api\UserApiController;
use App\Http\Controllers\Api\RecruitApiController;
use Illuminate\Http\Request;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/product',[ProductApiController::class,'getProduct']);
Route::get('/product/detail/{id}',[ProductApiController::class,'detailProduct']);
Route::get('product/new',[ProductApiController::class,'getNewProduct']);
Route::get('product/category/{id}',[ProductApiController::class,'getProductCategory']);

Route::get('/users/profile/{id}',[UserApiController::class,'UserProfile']);
Route::post('/login',[UserApiController::class,'login']);

Route::get('/category',[CategoryApiController::class,'getCategory']);
Route::get('/slider',[SliderApiController::class,'getSlider']);
Route::post('/cart',[ProductApiController::class,'productCart']);
Route::post('/order',[ProductApiController::class,'orderCart']);
Route::post('/rate',[ProductApiController::class,'rate']);
Route::get('/get/rating/{id}',[ProductApiController::class,'getRate']);
Route::get('/get/order/{id}',[UserApiController::class,'getOrder']);
Route::get('/get/order/detail/{id}',[UserApiController::class,'getDetailOrder']);
Route::post('/contact',[UserApiController::class,'postContact']);

Route::get('/recruit',[RecruitApiController::class,'getRecruit']);
Route::get('recruit/detail/{id}',[RecruitApiController::class,'detailRecruit']);
Route::post('/recruit/comment',[RecruitApiController::class,'postComment']);
Route::get('/recruit/getcomment/{id}',[RecruitApiController::class,'getComment']);
