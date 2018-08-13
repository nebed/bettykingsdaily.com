<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



 
Route::group(['middleware' => ['web']], function(){
	// Authentication Routes
	Route::get('auth/login', ['as'=>'login', 'uses'=>'Auth\AuthController@getLogin']);
	Route::post('auth/login', 'Auth\AuthController@postLogin');
	Route::get('auth/logout', ['as'=>'logout','uses'=>'Auth\AuthController@getLogout']);
	// Registration Routes
	Route::get('auth/register','Auth\AuthController@getRegister');
	Route::post('auth/register','Auth\AuthController@postRegister');
	//PasswordReset Routes
	Route::get('password/reset/{token?}','Auth\PasswordController@showResetForm');
	Route::post('password/email','Auth\PasswordController@sendResetLinkEmail');
	Route::post('password/reset','Auth\PasswordController@reset');
	//Categories
	Route::resource('categories','CategoryController',['except'=>['create']]);

	Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\-\_]{5,70}');
	Route::get('blog', ['uses'=> 'BlogController@getIndex', 'as' => 'blog.index']);
	Route::get('/contact', 'PagesController@getContact');
	Route::get('/about', 'PagesController@getAbout');
	Route::get('/home', 'PagesController@getHome');
	Route::get('/', 'PagesController@getHome');
	Route::resource('posts', 'PostController'); 
});