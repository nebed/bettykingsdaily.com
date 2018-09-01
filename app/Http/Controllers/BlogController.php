<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Tag;
use App\Category;
use App\Http\Requests;

class BlogController extends Controller
{

	public function getIndex(){
        $categorylist = Category::all();
		$posts = Post::orderBy('created_at', 'desc')->paginate(12);
        $tagfoot = Tag::all();
		return view('blog.index')->withPosts($posts)->withTagfoot($tagfoot)->withCategorylist($categorylist);
	}

    public function getSingle($slug){
        $categorylist = Category::all();
    	//fetch post with slug from db
        $tagfoot = Tag::all();
    	$post= Post::where('slug', '=', $slug)->first(); //first is like limit 1
        $prev = Post::where('id', '<', $post->id)->orderBy('id', 'desc')->first();;
        $next = Post::where('id', '>', $post->id)->orderBy('id', 'desc')->first();

    	//return the view and pass in the post 
    	return view('blog.single')->withPost($post)->withTagfoot($tagfoot)->withCategorylist($categorylist)->withPrev($prev)->withNext($next);
    }

    public function getList($name){
        $categorylist = Category::all();
        $tagfoot = Tag::all();
        $category_id = Category::where('name', '=', $name)->first()->id;
        $posts =Post::whereHas("category", function($q) use ($category_id){
   $q->where('id','=',$category_id);
})->paginate(12);
        return view('blog.index')->withPosts($posts)->withTagfoot($tagfoot)->withCategorylist($categorylist);

    }

}
 