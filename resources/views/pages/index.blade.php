@extends('main')

@section('title', 'Home | BettyKings Daily')

@section('content')

<body id="top">

    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader s-pageheader--home">

          @include('partials._nav')

        <div class="pageheader-content row">
            <div class="col-full">
                <div class="featured">
                    <div class="featured__column featured__column--big">
                        <div class="entry" style="background-image:url('{{ asset('images/'.$postsall[0]->featured_image) }}');">
                            
                            <div class="entry__content">
                                <span class="entry__category"><a href="{{route('category.index',$postsall[0]->category->name)}}">{{$postsall[0]->category->name}}</a></span>

                                <h1><a href="{{route('blog.single', $postsall[0]->slug)}}" title="">{{$postsall[0]->title}}</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="{{ URL::asset('images/avatars/user-03.jpg') }}" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">BettyKings</a></li>
                                        <li>{{date('F j, Y g:ia',strtotime($postsall[0]->created_at))}}</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->
                            
                        </div> <!-- end entry -->
                    </div> <!-- end featured__big -->

                    <div class="featured__column featured__column--small">

                        <div class="entry" style="background-image:url('{{ asset('images/'.$postsall[1]->featured_image
                        ) }}');">
                            
                            <div class="entry__content">
                                <span class="entry__category"><a href="{{route('category.index',$postsall[1]->category->name)}}">{{$postsall[1]->category->name}}</a></span>

                                <h1><a href="{{route('blog.single', $postsall[1]->slug)}}" title="">{{$postsall[1]->title}}</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="{{ URL::asset('images/avatars/user-03.jpg') }}" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">BettyKings</a></li>
                                        <li>{{date('F j, Y g:ia',strtotime($postsall[1]->created_at))}}</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->
                          
                        </div> <!-- end entry -->

                        <div class="entry" style="background-image:url('{{ asset('images/'.$postsall[2]->featured_image) }}');">

                            <div class="entry__content">
                                <span class="entry__category"><a href="{{route('category.index',$postsall[2]->category->name)}}">{{$postsall[2]->category->name}}</a></span>

                                <h1><a href="{{route('blog.single', $postsall[2]->slug)}}" title="">{{$postsall[2]->title}}</a></h1>

                                <div class="entry__info">
                                    <a href="#0" class="entry__profile-pic">
                                        <img class="avatar" src="{{ URL::asset('images/avatars/user-03.jpg') }}" alt="">
                                    </a>

                                    <ul class="entry__meta">
                                        <li><a href="#0">BettyKings</a></li>
                                        <li>{{date('F j, Y g:ia',strtotime($postsall[2]->created_at))}}</li>
                                    </ul>
                                </div>
                            </div> <!-- end entry__content -->

                        </div> <!-- end entry -->

                    </div> <!-- end featured__small -->
                </div> <!-- end featured -->

            </div> <!-- end col-full -->
        </div> <!-- end pageheader-content row -->

    </section> <!-- end s-pageheader -->


    <!-- s-content
    ================================================== -->
    <section class="s-content">
        
        <div class="row masonry-wrap">
            <div class="masonry">

                <div class="grid-sizer"></div>

@foreach($posts as $post)
                <article class="masonry__brick entry format-standard" data-aos="fade-up">
                        
                    <div class="entry__thumb">
                        <a href="{{route('blog.single', $post->slug)}}" class="entry__thumb-link">
                            <img src="{{ asset('images/'.$post->featured_image) }}"  alt="">
                        </a>
                    </div>
    
                    <div class="entry__text">
                        <div class="entry__header">
                            
                            <div class="entry__date">
                                <a href="single-standard.html">{{date('F j, Y g:ia',strtotime($post->created_at))}}</a>
                            </div>
                            <h1 class="entry__title"><a href="{{route('blog.single', $post->slug)}}">{{$post->title}}</a></h1>
                            
                        </div>
                        <div class="entry__excerpt">
                            <p>
                                {!!substr($post->body, 0,150)!!}{{strlen($post->body) >150 ? "..." : ""}}
                            </p>
                        </div>
                        <div class="entry__meta">
                            <span class="entry__meta-links">
                                <a href="{{route('category.index',$post->category->name)}}">{{$post->category->name}}</a> 
                            </span>
                        </div>
                    </div>
    
                </article> <!-- end article -->
@endforeach
                <article class="masonry__brick entry format-quote" data-aos="fade-up">
                        
                    <div class="entry__thumb">
                        <blockquote>
                                <p>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</p>
    
                                <cite>Dieter Rams</cite>
                        </blockquote>
                    </div>   
    
                </article> <!-- end article -->

                
                <article class="masonry__brick entry format-link" data-aos="fade-up">
                    
                    <div class="entry__thumb">
                        <div class="link-wrap">
                            <p>The Only Resource You Will Need To Start a Blog Using WordPress.</p>
                            <cite>
                                <a target="_blank" href="https://colorlib.com/">https://colorlib.com</a>
                            </cite>
                        </div>
                    </div>
                    
                </article> <!-- end article -->

                
            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->

        <div class="row">
            <div class="col-full">
                <nav class="pgn">
                    {!!$posts->links()!!}   
                </nav>
            </div>
        </div>

    </section> <!-- s-content -->
@endsection