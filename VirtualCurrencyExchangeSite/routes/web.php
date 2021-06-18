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

/* Route::get('/', function () {
    return view('login');
}); */

//admin

Route::get('/login', 'LoginController@login');
Route::post('/login', 'LoginController@verify');
Route::get('/logout', 'LogoutController@index');
Route::get('/adminHome', 'AdminHomeController@index')->name('adminHome');
Route::get('/adminEditProfile', 'AdminHomeController@editProfile')->name('adminEditProfile');
Route::get('/adminViewAllUserInfo', 'AdminHomeController@viewAllUserInfo')->name('adminViewAllUserInfo');
Route::get('/adminViewAllTransaction', 'AdminHomeController@viewAllTransaction')->name('adminViewAllTransaction');
Route::get('/adminUserReports', 'AdminHomeController@userReports')->name('adminUserReports');
Route::get('/adminAnnouncement', 'AdminHomeController@announcement')->name('adminAnnouncement');
Route::get('/adminEditUserInfo', 'AdminHomeController@editUserInfo')->name('adminEditUserInfo');

// seller

Route::get('/seller/login', function () {
    return view('seller/login');
});
Route::get('/seller/register', function () {
    return view('seller/sellerRegister');
});
Route::get('/seller/applyforprimeseller', function () {
    return view('seller/applyForPrimeSeller');
});
Route::get('/seller/createsellpost', function () {
    return view('seller/CreateSellPost');
});
Route::get('/seller/myposts', function () {
    return view('seller/myposts');
});
Route::get('/seller/contactsupport', function () {
    return view('seller/sellerContactSupport');
});



// user or buyer
Route::get('/user/editprofile', function () {
    return view('user/editProfile');
});
Route::get('/user/orderhistory', function () {
    return view('user/userorderHistory');
});
Route::get('/user/register', function () {
    return view('user/userRegister');
});


// Home
Route::get('/home/index', function () {
    return view('home/index');
});

Route::get('/home/login', function () {
    return view('home/login');
});

Route::get('/home/chatbox', function () {
    return view('home/chatbox');
});

Route::get('/home/login','HomeController@login')->name('home.login');
Route::get('/home/index','HomeController@index')->name('home.index');
Route::get('/home/contact','HomeController@contact')->name('home.contact');
Route::get('/home/help','HomeController@help')->name('home.help');
Route::get('/home/index','HomeController@home')->name('home.index');
Route::get('/home/announcement','HomeController@announcement')->name('home.announcement');
Route::get('/home/postCard','HomeController@postCard')->name('home.postCard');
Route::get('/home/chatbox','HomeController@chatbox')->name('home.chatbox');