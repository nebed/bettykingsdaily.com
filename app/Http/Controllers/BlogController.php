<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Tag;
use App\Http\Requests;

class BlogController extends Controller
{

	public function getIndex(){
		$posts = Post::orderBy('created_at', 'desc')->paginate(12);
        $tagfoot = Tag::all();
		return view('blog.index')->withPosts($posts)->withTagfoot($tagfoot);
	}

    public function getSingle($slug){
    	//fetch post with slug from db
        $tagfoot = Tag::all();
    	$post= Post::where('slug', '=', $slug)->first(); //first is like limit 1

    	//return the view and pass in the post 
    	return view('blog.single')->withPost($post)->withTagfoot($tagfoot);
    }

    public function getList($name){
        
    }

}
 