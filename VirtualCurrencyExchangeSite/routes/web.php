<?php

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

Route::get('/', function () {
    return view('login');
});

Route::get('/login', 'LoginController@login');
Route::post('/login', 'LoginController@verify');
Route::get('/logout', 'LogoutController@index');
Route::get('/adminHome', 'AdminHomeController@index')->name('adminHome');
Route::get('/adminEditProfile', 'AdminHomeController@editProfile')->name('adminEditProfile');
Route::get('/adminViewAllUserInfo', 'AdminHomeController@viewAllUserInfo')->name('adminViewAllUserInfo');
Route::get('/adminViewAllTransaction', 'AdminHomeController@viewAllTransaction')->name('adminViewAllTransaction');
Route::get('/adminUserReports', 'AdminHomeController@userReports')->name('adminUserReports');
Route::get('/adminAnnouncement', 'AdminHomeController@announcement')->name('adminAnnouncement');