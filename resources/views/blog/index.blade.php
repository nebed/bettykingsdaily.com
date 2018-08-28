@extends('main')

@section('title', 'All | BettyKings Daily')

@section('content')

<body id="">

    <!-- pageheader
    ================================================== -->
    <div class="s-pageheader">

            @include('partials._nav')

    </div> <!-- end s-pageheader -->
    <section class="s-extra" style="padding-top:2rem;padding-bottom:5rem;">
	<div class="row">

            <div class="col-twelve md-eight tab-full popular">
                
                <h3>All Posts</h3>

                <div class="block-1-4 block-m-full popular__posts">
                	@foreach($posts as $post)
					<article class="col-block popular__post">
                        <a href="#0" class="popular__thumb">
                            <img src="{{ asset('images/thumbs/'.$post->thumbnail) }}" alt="">
                        </a>
                        <h5><a href="{{route('blog.single', $post->slug)}}">{{$post->title}}</a></h5>
                        <section class="popular__meta">
                                <span class="popular__author"><span>By</span> <a href="#0">BettyKings</a></span>
                            <span class="popular__date"><span>on</span> <time datetime="2017-12-19">{{date('F j, Y',strtotime($post->created_at))}}</time></span>
                        </section>
                    </article>
                    @endforeach
                    </div> <!-- end popular_posts --> 
                    <div class="pgn">
                    {!!$posts->links()!!} 
                    </div>              
            </div> <!-- end popular -->
            
        </div>
</section>



@endsection