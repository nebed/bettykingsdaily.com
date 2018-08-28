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
                {!! Form::model($post, ['route'=> ['posts.update', $post->id], 'files'=>true,'method' => 'PUT']) !!}
                <h1 class="s-content__header-title">
                    {{ Form::label('title', 'Title:') }}
                    {{ Form::text('title', null, ["class" => 'full-width', 'style' => 'font-size:24px; font-weight:700; text-align:center;']) }}
                </h1>
                {{ Form::label('slug', 'URL:') }}
                    {{ Form::text('slug', null, ["class" => 'full-width']) }}
                        In
                        {{ Form::label('category_id', 'Category:') }}
                    {{ Form::select('category_id', $categories, null, ["class" => 'full-width']) }}
                  
                {{ Form::label('tags', 'Tags:') }}
                    {{ Form::select('tags[]', $tags, null, ["class" => "multiple-tags-select2 full-width",'multiple'=>'multiple']) }}
                    <ul class="s-content__header-meta">
                    <li class="date">{{date('F j, Y g:ia',strtotime($post->created_at))}}</li>
                </ul>
            </div> <!-- end s-content__header -->
    
            <div class="s-content__media col-full">
                {{ Form::label('featured_image','Upload Featured Image:') }}
                {{ Form::file('featured_image') }}
                <div class="s-content__post-thumb">
                    <img src="{{ asset('images/'.$post->featured_image) }}"  alt="" >
                </div>
            </div> <!-- end s-content__media -->

            <div class="col-full s-content__main">
                 {{ Form::label('body', 'Body:') }}
                {{ Form::textarea('body', null, ["class" => 'full-width']) }}

                <p>
                <img src="{{ URL::asset('images/wheel-1000.jpg') }}" 
                     srcset="{{ URL::asset('images/wheel-2000.jpg') }} 2000w, {{ URL::asset('images/wheel-1000.jpg') }} 1000w, {{ URL::asset('images/wheel-500.jpg') }} 500w" 
                     sizes="(max-width: 2000px) 100vw, 2000px" alt="">
                </p>

                {!!Html::linkRoute('posts.show', 'Cancel', array($post->id), array('class' => 'btn btn--danger btn--primary btn--medium full-width'))!!}
                {!!Form::submit('Save Changes', array('class' => 'submit btn btn--primary btn--medium full-width'))!!}
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
                            <a href="#0">BettyKings</a>
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

@section('select_include')
{!! Html::script('js/select2.min.js') !!}
@endsection
@section('select_js')
$('.multiple-tags-select2').select2();
      $('.multiple-tags-select2').select2().val({!! json_encode($post->tags()->getRelatedIds()) !!}).trigger('change');
@endsection