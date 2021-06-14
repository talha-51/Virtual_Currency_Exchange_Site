<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminHomeController extends Controller
{
    public function index(Request $req){

        $email = $req->session()->get('email');

        if($req->session()->has('email')){
            return view('adminHome', compact('email'));
        }else{
            $req->session()->flash('msg', 'Invalid request');
            return redirect('/login');
        }
    }

    public function editProfile(){
        return view('adminEditProfile');
    }

    public function viewAllUserInfo(){
        return view('adminViewAllUserInfo');
    }

    public function viewAllTransaction(){
        return view('adminViewAllTransaction');
    }

    public function userReports(){
        return view('adminUserReports');
    }

    public function announcement(){
        return view('adminAnnouncement');
    }
}
