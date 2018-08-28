<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Post;
use App\Tag;

use Mail;
use Session;


class PagesController extends Controller {
	public function getHome(){
		$posts = Post::orderBy('created_at', 'desc')->paginate(6);
		$tagfoot = Tag::all();
		return view('pages.index')->withPosts($posts)->withTagfoot($tagfoot);
	}
	public function getAbout(){
		$tagfoot = Tag::all();
		return view('pages.about')->withTagfoot($tagfoot);
	}
	public function getContact(){
		$tagfoot = Tag::all();
		return view('pages.contact')->withTagfoot($tagfoot);
	}
	public function postContact(Request $request){

		$this->validate($request, [
			'cName' => 'required|max:255',
			'cEmail' => 'required|email|max:255',
			'message' => 'required|min:10',
            'cSubject' => 'required|min:5',
		]);
		$data = array(
			'cEmail'=> $request->cEMail,
			'cName'=> $request->cName,
			'cSubject'=> $request->cSubject,
			'bodyMessage'=> $request->message

		);

		Mail::send('emails.contact', $data, function($message) use($data){
			$message->from($data['cEmail']);
			$message->to('hello@bettykingsdaily.com');
			$message->subject($data['cSubject']);

		});
		Session::flash('success','Your Email was Sent!');
		return redirect('/');

	}
}

