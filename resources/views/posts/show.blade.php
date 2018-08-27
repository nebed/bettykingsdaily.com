@extends('main')

@section('title', 'Post | BettyKings Daily')

@section('content')
<body id="top">

    <!-- pageheader
    ================================================== -->
    <div class="s-pageheader">

        <header class="header">
            <div class="header__content row">

                <div class="header__logo">
                    <a class="logo" href="index.html">
                        <img src="{{ URL::asset('images/logo.svg') }}" alt="Homepage">
                    </a>
                </div> <!-- end header__logo -->

                <ul class="header__social">
                    <li>
                        <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a href="#0"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    </li>
                </ul> <!-- end header__social -->

                <a class="header__search-trigger" href="#0"></a>

                <div class="header__search">

                    <form role="search" method="get" class="header__search-form" action="#">
                        <label>
                            <span class="hide-content">Search for:</span>
                            <input type="search" class="search-field" placeholder="Type Keywords" value="" name="s" title="Search for:" autocomplete="off">
                        </label>
                        <input type="submit" class="search-submit" value="Search">
                    </form>
        
                    <a href="#0" title="Close Search" class="header__overlay-close">Close</a>

                </div>  <!-- end header__search -->


                <a class="header__toggle-menu" href="#0" title="Menu"><span>Menu</span></a>

                <nav class="header__nav-wrap">

                    <h2 class="header__nav-heading h6">Site Navigation</h2>

                    <ul class="header__nav">
                        <li><a href="index.html" title="">Home</a></li>
                        <li class="has-children">
                            <a href="#0" title="">Categories</a>
                            <ul class="sub-menu">
                            <li><a href="category.html">Lifestyle</a></li>
                            <li><a href="category.html">Health</a></li>
                            <li><a href="category.html">Family</a></li>
                            <li><a href="category.html">Management</a></li>
                            <li><a href="category.html">Travel</a></li>
                            <li><a href="category.html">Work</a></li>
                            </ul>
                        </li>
                        <li class="has-children current">
                            <a href="#0" title="">Blog</a>
                            <ul class="sub-menu">
                            <li><a href="single-video.html">Video Post</a></li>
                            <li><a href="single-audio.html">Audio Post</a></li>
                            <li><a href="single-gallery.html">Gallery Post</a></li>
                            <li><a href="single-standard.html">Standard Post</a></li>
                            </ul>
                        </li>
                        <li><a href="style-guide.html" title="">Styles</a></li>
                        <li><a href="about.html" title="">About</a></li>
                        <li><a href="contact.html" title="">Contact</a></li>
                    </ul> <!-- end header__nav -->

                    <a href="#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>

                </nav> <!-- end header__nav-wrap -->

            </div> <!-- header-content -->
        </header> <!-- header -->

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
                    <li class="cat"><a href="{{route('blog.single', $post->slug)}}">{{ url('blog/'.$post->slug) }}</a></li>
                    <li class="cat">
                        In
                        <a href="#0">{{$post->category->name}}</a>
                    </li>
                </ul>
            </div> <!-- end s-content__header -->
    
            <div class="s-content__media col-full">
                <div class="s-content__post-thumb">
                    <img src="{{ URL::asset('images/thumbs/single/standard/standard-1000.jpg') }}" 
                         srcset="{{ URL::asset('images/thumbs/single/standard/standard-2000.jpg') }} 2000w, 
                                 {{ URL::asset('images/thumbs/single/standard/standard-1000.jpg') }} 1000w, 
                                 {{ URL::asset('images/thumbs/single/standard/standard-500.jpg') }} 500w" 
                         sizes="(max-width: 2000px) 100vw, 2000px" alt="" >
                </div>
            </div> <!-- end s-content__media -->

            <div class="col-full s-content__main">

                {!!$post->body!!}
               <p>
                <img src="{{ URL::asset('images/wheel-1000.jpg') }}" 
                     srcset="{{ URL::asset('images/wheel-2000.jpg') }} 2000w, {{ URL::asset('images/wheel-1000.jpg') }} 1000w, {{ URL::asset('images/wheel-500.jpg') }} 500w" 
                     sizes="(max-width: 2000px) 100vw, 2000px" alt="">
                </p>

                {!!Html::linkRoute('posts.edit', 'Edit Post', array($post->id), array('class' => 'btn btn--primary btn--medium full-width'))!!}

                {!! Form::open(['route' => ['posts.destroy',$post->id], 'method'=>'delete']) !!}

                {!!Form::submit('Delete Post',array('class' => 'submit btn btn--danger btn--primary btn--medium full-width'))!!}

                {!! Form::close() !!}
                <p class="s-content__tags">
                    <span>Post Tags</span>

                    <span class="s-content__tag-list">
                        @foreach ($post->tags as $tag)
                        <a href="#0">{{ $tag->name }} </a>
                        @endforeach
                    </span>
                </p> <!-- end s-content__tags -->

                <div class="s-content__author">
                    <img src="images/avatars/user-03.jpg" alt="">

                    <div class="s-content__author-about">
                        <h4 class="s-content__author-name">
                            <a href="#0">Jonathan Doe</a>
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


        
        <div class="row add-bottom">

            <div class="col-twelve">

                <h3>Comments <small>{{ $post->comments()->count() }} total comments</small></h3>
                <p>Be sure to use properly formed table markup with <code>&lt;thead&gt;</code> and <code>&lt;tbody&gt;</code> when building a <code>table</code>.</p>

                <div class="table-responsive">

                    <table>
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Comment</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                 @foreach($post->comments as $comment)
                            <tr>
                                <td>{{$comment->name}}</td>
                                <td>{{$comment->email}}</td>
                                <td>{{$comment->comment}}</td>
                                <td><a href="{{route('comments.edit',$comment->id)}}"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <a  href="{{route('comments.delete',$comment->id)}}"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                    </table>

                </div>

            </div>
            
        </div> <!-- end row -->


    </section> <!-- s-content -->

@endsection
