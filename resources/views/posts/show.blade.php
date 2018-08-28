@extends('main')

@section('title', 'Post | BettyKings Daily')

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
                    <li class="cat"><a href="{{route('blog.single', $post->slug)}}">{{ url('blog/'.$post->slug) }}</a></li>
                    <li class="cat">
                        In
                        <a href="#0">{{$post->category->name}}</a>
                    </li>
                </ul>
            </div> <!-- end s-content__header -->
    
            <div class="s-content__media col-full">
                <div class="s-content__post-thumb">
                    <img src="{{ asset('images/'.$post->featured_image) }}" alt="" >
                </div>
            </div> <!-- end s-content__media -->

            <div class="col-full s-content__main">

                {!!$post->body!!}

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
