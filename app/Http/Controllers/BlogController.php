<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Http\Requests;

class BlogController extends Controller
{
    public function getSingle($slug){
    	//fetch post with slug from db
    	$post= Post::where('slug', '=', $slug)->first(); //first is like limit 1

    	//return the view and pass in the post 
    	return view('blog.single')->withPost($post);
    }
}
 