<?php

use Illuminate\Http\Request;

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

Route::post('login', 'API\UserController@login');
Route::post('register', 'API\UserController@register');

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'API\UserController@details');

    Route::get('tagihans', 'API\TagihanController@index');
    Route::post('tagihans/create', 'API\TagihanController@create');

    Route::get('tabungans', 'API\TabunganController@index');
    Route::post('tabungans/create', 'API\TabunganController@store');
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
