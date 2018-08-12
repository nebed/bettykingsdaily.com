@extends('main')

@section('title', 'Login | BettyKings Daily')

@section('content')

<body id="top">

    <!-- pageheader
    ================================================== -->
    <div class="s-pageheader">

         @include('partials._nav')

    </div> <!-- end s-pageheader -->


    <!-- s-content
    ================================================== -->
    <section class="s-content s-content--narrow">

        <div class="row">

            <div class="s-content__header col-full">
                <h1 class="s-content__header-title">
                    Login to Create Posts
                </h1>
            </div> <!-- end s-content__header -->

            <div class="col-full s-content__main">

                <h3>Login</h3>

                {!! Form::open() !!}
                <div class="form-field">
                    {{Form::label('email','Your Email:')}}
                {{Form::email('email',null,['class'=>'full-width'])}}
                </div>
                <div class="form-field">
                    {{Form::label('password','Your Password:')}}
                {{Form::password('password',['class'=>'full-width'])}}
                </div>
                <div class="form-field">
                {{Form::checkbox('remember')}}{{Form::label('remember','Remember Me')}}
                </div>
                {{Form::submit('Login',['class'=>'submit btn btn--primary full-width'])}}
                <p><a href="{{ url('password/reset') }}">Forgot My Password</a></p>

                {!! Form::close() !!}
            </div> <!-- end s-content__main -->

        </div> <!-- end row -->

    </section> <!-- s-content -->

@endsection