@extends('main')

@section('title', "Post | $post->title" )

@section('content')
<body id="top">

    <!-- pageheader
    ================================================== -->
    <div class="s-pageheader">

         @include('partials._nav')

    </div> <!-- end s-pageheader -->


    <!-- s-content
    ================================================== -->
    <section class="s-content s-content--narrow s-content--no-padding-bottom">

        <article class="row format-standard">

            <div class="s-content__header col-full">

                @include('partials._messages')

                <h1 class="s-content__header-title">
                    {{$post->title}}
                </h1>
                <ul class="s-content__header-meta">
                    <li class="date">{{date('F j, Y g:ia',strtotime($post->created_at))}}</li>
                    <li class="cat">
                        In
                        <a href="#0">{{$post->category->name}}</a>
                    </li>
                </ul>
            </div> <!-- end s-content__header -->
             @if(!empty($post->featured_image))
            <div class="s-content__media col-full">
                <div class="s-content__post-thumb">
                    <img src="{{ asset('images/'.$post->featured_image) }}" 
                         sizes="(max-width: 2000px) 100vw, 2000px" alt="" >
                </div>
            </div> <!-- end s-content__media -->
            @endif

            <div class="col-full s-content__main">
                {!!$post->body!!}
                <p class="s-content__tags">
                    <span>Post Tags</span>

                    <span class="s-content__tag-list">
                        @foreach ( $post->tags as $tag)
                        <a href="#0">{{$tag->name}}</a>
                        @endforeach
                    </span>
                </p> <!-- end s-content__tags -->

                <div class="s-content__author">
                    <img src="images/avatars/user-03.jpg" alt="">

                    <div class="s-content__author-about">
                        <h4 class="s-content__author-name">
                            <a href="#0">Betty Kings</a>
                        </h4>
                    
                        <p>Alias aperiam at debitis deserunt dignissimos dolorem doloribus, fuga fugiat impedit laudantium magni maxime nihil nisi quidem quisquam sed ullam voluptas voluptatum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        </p>

                        <ul class="s-content__author-social">
                           <li><a href="#0">Facebook</a></li>
                           <li><a href="#0">Twitter</a></li>
                           <li><a href="#0">GooglePlus</a></li>
                           <li><a href="#0">Instagram</a></li>
                        </ul>
                    </div>
                </div>

                <div class="s-content__pagenav">
                    <div class="s-content__nav">
                        <div class="s-content__prev">
                            <a href="#0" rel="prev">
                                <span>Previous Post</span>
                                Tips on Minimalist Design 
                            </a>
                        </div>
                        <div class="s-content__next">
                            <a href="#0" rel="next">
                                <span>Next Post</span>
                                Less Is More 
                            </a>
                        </div>
                    </div>
                </div> <!-- end s-content__pagenav -->

            </div> <!-- end s-content__main -->

        </article>


        <!-- comments
        ================================================== -->
        <div class="comments-wrap">

            <div id="comments" class="row">
                <div class="col-full">

                    <h3 class="h2">{{$post->comments()->count() }} Comments</h3>

                    <!-- commentlist -->
                    <ol class="commentlist">

                    @foreach($post->comments as $comment)  
                        <li class="depth-1 comment">

                            <div class="comment__avatar">
                                <img width="50" height="50" class="avatar" src="{{ "https://www.gravatar.com/avatar/" . md5(strtolower(trim($comment->email))). "?s=50&d=monsterid" }}" alt="">
                            </div>

                            <div class="comment__content">

                                <div class="comment__info">
                                    <cite>{{$comment->name}}</cite>

                                    <div class="comment__meta">
                                        <time class="comment__time">{{date('F j, Y g:ia',strtotime($comment->created_at))}}</time>
                                        <a class="reply" href="#0">Reply</a>
                                    </div>
                                </div>

                                <div class="comment__text">
                                {{$comment->comment}}
                                </div>

                            </div>

                        </li> <!-- end comment level 1 -->
                    @endforeach

                    </ol> <!-- end commentlist -->


                    <!-- respond
                    ================================================== -->
                    <div class="respond">

                        <h3 class="h2">Add Comment</h3>

                        {{Form::open(['route' => ['comments.store', $post->id], 'method'=>'POST'])}}

                            <fieldset>

                                <div class="form-field">

                                    {{Form::text('name',null,['class'=>'full-width','placeholder'=>'Your Name'])}}
                                </div>

                                <div class="form-field">
                                        {{Form::text('email',null,['class'=>'full-width','placeholder'=>'Your Email'])}}
                                </div>

                                <div class="message form-field">
                                    {{Form::textarea('comment',null,['class'=>'full-width','PlaceHolder'=>'Your Message','rows'=>'5'])}}
                                </div>

                                {{Form::submit('Add Comment',['class'=>'btn--primary btn--large full-width'])}}

                            </fieldset>
                       {{Form::close()}}

                    </div> <!-- end respond -->

                </div> <!-- end col-full -->

            </div> <!-- end row comments -->
        </div> <!-- end comments-wrap -->

    </section> <!-- s-content -->

@endsection