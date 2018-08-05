<?php

namespace App\Http\Controllers;

use App\Post;


class PagesController extends Controller {
	public function getHome(){
		$posts = Post::orderBy('created_at', 'desc')->paginate(6);
		return view('pages.index')->withPosts($posts);
	}
	public function getAbout(){
		return view('pages.about');
	}
	public function getContact(){
		return view('pages.contact');
	}
}