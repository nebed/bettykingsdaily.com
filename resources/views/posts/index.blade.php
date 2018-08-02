<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <title>Create Post | BettyKings Daily</title>
  </head>
  <body>

		    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

			<div class="container">
			<br>
			<div class="row justify-content-md-center">
				@include('partials._messages')
				<div class="col-md-10">
					<h1>All Posts</h1>
				</div>
				<div class="col-md-2">
					<a href="{{route('posts.create')}}" class="btn btn-lg btn-block btn-primary">Create Post</a>
				</div>
				<hr>
			</div>


			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<th>#</th>
							<th>Title</th>
							<th>Body</th>
							<th>Created At</th>
							<th></th>
						</thead>
						<tbody>
							@foreach($posts as $post)
								<tr>
									<th>{{$post->id}}</th>
									<td>{{$post->title}}</td>
									<td>{{substr($post->body,0,50)}}{{ strlen($post->body) > 50 ? "..." : ""}}</td>
									<td>{{date('M j, Y', strtotime($post->created_at))}}</td>
									<td><a href="{{route('posts.show', $post->id)}}" class="btn btn-default btn-sm">View</a><a href="{{route('posts.edit', $post->id)}}" class="btn btn-default btn-sm">Edit</a>
								{!! Form::open(['route' => ['posts.destroy',$post->id], 'method'=>'delete']) !!}
								{!!Form::submit('Delete',array('class' => ' btn btn-danger btn-sm'))!!}
                				{!! Form::close() !!}</td>
								</tr>
							@endforeach
						</tbody>
					</table>

						 <div class="text-center">
						 {!!$posts->links()!!}
						</div>
			</div>
		</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>