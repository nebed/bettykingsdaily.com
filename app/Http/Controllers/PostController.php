<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Post;
use App\Category;
use App\Tag;
use Session;
use Purifier;
use Image;
use Storage;

class PostController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //create a variable and stroe all the blog posts in it from the database 
        $posts = Post::orderBy('id', 'desc')->paginate(10);
        //return a view and pass in the above variable
        return view('posts.index')->withPosts($posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Category::all();
        $tags=Tag::all();
        return view('posts.create')->withCategories($categories)->withTags($tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request);  die and dump request information
        //validate the data
        $this->validate($request, array(
            'title' => 'required|max:255',
            'slug' => 'required|alpha_dash|min:5|max:70|unique:posts,slug',
            'category_id'=>'required|integer',
            'body' => 'required',
            'featured_image' => 'sometimes|image'

        )); 

        //store in the database
        $post = new Post;
        $post->title = $request->title;
        $post->slug = $request->slug;
        $post->category_id = $request->category_id;
        $post->body = Purifier::clean($request->body);

        //save featured image
        if ($request->hasFile('featured_image')) {
            $file_uploaded = $request->featured_image;
            $extensions = array('jpg', 'JPG', 'png' ,'PNG' ,'jpeg' ,'JPEG', 'GIF','gif');
            $isImage = $file_uploaded->getClientOriginalExtension();
            if (in_array($isImage , $extensions)){
                $filename = time().'.'.$isImage;
                $thumbname = time().'x150'.'.'.$isImage;
                $location = public_path('images\\'.$filename);
                $thumb_location = public_path('images\\thumbs\\'.$thumbname);
                Image::make($file_uploaded)->resize(null, 500, function ($constraint) { $constraint->aspectRatio();})->save($location);
                Image::make($file_uploaded)->resize(null, 150, function ($constraint) { $constraint->aspectRatio();})->crop(150, 150)->save($thumb_location);
                $post->featured_image = $filename;
                $post->thumbnail = $thumbname;
            }
        }


        $post->save();

        $post->tags()->sync($request->tags, false);

        Session::flash('success', 'The blog post was successfully saved!');
        //redirect to another page
        return redirect()->route('posts.show', $post->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $categorylist = Category::all();
        $tagfoot = Tag::all();
        $post = Post::find($id); 
        return view('posts.show')->withPost($post)->withTagfoot($tagfoot)->withCategorylist($categorylist);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categorylist = Category::all();
        $tagfoot = Tag::all();
        // find the post in the database and save as a variable
        $post = Post::find($id); 
        $categories = Category::all();
        $cats=[];
        foreach ($categories as $category){
            $cats[$category->id]=$category->name;
        }

        $tags = Tag::all();
        $tags2 = array();
        foreach ($tags as $tag) {
            $tags2[$tag->id] = $tag->name;
        }
        // return the view and pass in the var we previously craeted
        return view('posts.edit')->withPost($post)->withCategories($cats)->withTags($tags2)->withTagfoot($tagfoot)->withCategorylist($categorylist);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //Validate the data
        //dd($request);
        $post= Post::find($id);
    
    $this->validate($request, array(
                    'title' => 'required|max:255',
                    'slug' => "required|alpha_dash|min:5|max:70|unique:posts,slug,$id",
                    'category_id'=>'required|integer',
                    'body' => 'required',
                    'featured_image' => 'image'
                )); 
        //Save the data to the database
        $post->title = $request->input('title');
        $post->slug = $request->input('slug');
        $post->category_id = $request->input('category_id');
        $post->body  = Purifier::clean($request->input('body'));

        if ($request->hasFile('featured_image')) {
            $file_uploaded = $request->featured_image;
            $extensions = array('jpg', 'JPG', 'png' ,'PNG' ,'jpeg' ,'JPEG', 'GIF','gif');
            $isImage = $file_uploaded->getClientOriginalExtension();
            if (in_array($isImage , $extensions)){
                $filename = time().'.'.$isImage;
                $thumbname = time().'x150'.'.'.$isImage;
                $location = public_path('images\\'.$filename);
                $thumb_location = public_path('images\\thumbs\\'.$thumbname);
                Image::make($file_uploaded)->resize(null, 500, function ($constraint) { $constraint->aspectRatio();})->save($location);
                Image::make($file_uploaded)->resize(null, 150, function ($constraint) { $constraint->aspectRatio();})->crop(150, 150)->save($thumb_location);
                $oldFilename = $post->featured_image;
                $oldthumb = $post->thumbnail;
                Storage::delete($oldFilename);
                Storage::delete('thumbs\\'.$oldthumb);
                $post->featured_image = $filename;
                $post->thumbnail = $thumbname;
            }
        }

        $post->save();

        if (isset($request->tags)){

            $post->tags()->sync($request->tags);
        } else {
                $post->tags()->sync(array());
          }
        //set flash data with success message
        Session::flash('success','This post was successfully saved.');
        //redirect with flash message to posts.show
        return redirect()->route('posts.show', $post->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $oldFilename = $post->featured_image;
        $oldthumb = $post->thumbnail;
        Storage::delete($oldFilename);
        Storage::delete('thumbs\\'.$oldthumb);
        $post->tags()->detach();
        $post->delete();
        Session::flash('success', 'The post was successfully deleted');
        return redirect()->route('posts.index');
    }
} 
