{
	"auto_complete":
	{
		"selected_items":
		[
			[
				"featured_",
				"featured_image"
			],
			[
				"ra",
				"randIndex1"
			],
			[
				"ca",
				"category_id"
			],
			[
				"cat",
				"category_one"
			],
			[
				"categ",
				"category_id"
			],
			[
				"is",
				"isImage"
			],
			[
				"file",
				"file_uploaded"
			],
			[
				"featured",
				"featured_image"
			],
			[
				"come",
				"Comment"
			],
			[
				"form",
				"form-control"
			],
			[
				"category",
				"category_id"
			],
			[
				"users",
				"users"
			],
			[
				"btn",
				"btn-default"
			],
			[
				"btn-",
				"btn-block"
			]
		]
	},
	"buffers":
	[
		{
			"file": "/C/Users/nebed/campaigns.php",
			"settings":
			{
				"buffer_size": 22165,
				"encoding": "UTF-8",
				"line_ending": "Unix"
			}
		},
		{
			"contents": " <!doctype html>\n<html lang=\"en\">\n  <head>\n    <!-- Required meta tags -->\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n\n    <!-- Bootstrap CSS -->\n    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n    {!! Html::style('css/select2.min.css') !!}\n  <script src=\"https://cloud.tinymce.com/stable/tinymce.min.js\"></script>\n  <script>tinymce.init({ selector:'textarea', plugins: \"link, emoticons, code, fullscreen\", menubar: true});</script>\n    <title>Create Post | BettyKings Daily</title>\n  </head>\n  <body>\n\n\t\t    <nav class=\"navbar navbar-default\">\n  <div class=\"container-fluid\">\n    <!-- Brand and toggle get grouped for better mobile display -->\n    <div class=\"navbar-header\">\n      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n        <span class=\"sr-only\">Toggle navigation</span>\n        <span class=\"icon-bar\"></span>\n        <span class=\"icon-bar\"></span>\n        <span class=\"icon-bar\"></span>\n      </button>\n      <a class=\"navbar-brand\" href=\"#\">Brand</a>\n    </div>\n\n    <!-- Collect the nav links, forms, and other content for toggling -->\n    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n      <ul class=\"nav navbar-nav\">\n        <li class=\"active\"><a href=\"#\">Link <span class=\"sr-only\">(current)</span></a></li>\n        <li><a href=\"#\">Link</a></li>\n      </ul>\n      <ul class=\"nav navbar-nav navbar-right\">\n        <li><a href=\"#\">Link</a></li>\n        <li class=\"dropdown\">\n          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Dropdown <span class=\"caret\"></span></a>\n          <ul class=\"dropdown-menu\">\n            <li><a href=\"#\">Action</a></li>\n            <li><a href=\"#\">Another action</a></li>\n            <li><a href=\"#\">Something else here</a></li>\n            <li role=\"separator\" class=\"divider\"></li>\n            <li><a href=\"#\">Separated link</a></li>\n          </ul>\n        </li>\n      </ul>\n    </div><!-- /.navbar-collapse -->\n  </div><!-- /.container-fluid -->\n</nav>\n\n\t\t<div class=\"container\">\n\t\t\t<br>\n\t\t\t<div class=\"row justify-content-md-center\">\n\t\t\t\t<div class=\"col-md-8 col-md-offset-2\">\n\t\t\t\t\t@include('partials._messages')\n\t\t\t\t\t<h1>Create New Post</h1>\n\t\t\t\t\t<hr>\n\n\t\t\t\t\t{!! Form::open(['route' => 'posts.store', 'files'=>true]) !!}\n\t\t\t\t\t{{Form::label('title','Title:')}}\n\t\t\t\t\t{{Form::text('title',null,array('class'=>'form-control','required' => 'yes'))}}\n\t\t\t\t\t{{Form::label('slug','URL:')}}\n\t\t\t\t\t{{Form::text('slug',null,array('class'=>'form-control','required' => 'yes','min-length'=>'5', 'max-length'=>'70'))}}\n          {{ Form::label('category_id','Category:') }}\n          <select class=\"form-control\" name=\"category_id\">\n            \n            @foreach($categories as $category)\n            <option value='{{$category->id}}'>{{$category->name}}</option>\n            @endforeach\n\n          </select>\n\n          {{ Form::label('featured_image','Upload Featured Image:') }}\n          {{ Form::file('featured_image') }}\n\n          {{ Form::label('tags','Tags:') }}\n          <select class=\"form-control multiple-tags-select2\" multiple=\"multiple\" name=\"tags[]\">\n            \n            @foreach($tags as $tag)\n            <option value='{{$tag->id}}'>{{$tag->name}}</option>\n            @endforeach\n\n          </select>\n\t\t\t\t\t{{Form::label('body','Post Body:')}}\n\t\t\t\t\t{{Form::textarea('body',null,array('class'=>'form-control'))}}\n\t\t\t\t\t{{Form::submit('Create Post',array('class'=>'btn btn-info btn-lg btn-block','style'=>'margin-top:20px;'))}}\n\t\t\t\t\t{!! Form::close() !!}\n\t\t\t\t\t\n\t\t\t\t</div>\n\t\t\t</div>\n\t\t</div>\n\n    <!-- Optional JavaScript -->\n    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n    {!! Html::script('js/select2.min.js') !!}\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n    <script type=\"text/javascript\"> \n      $('.multiple-tags-select2').select2();\n    </script>\n  </body>\n</html>",
			"file": "resources/views/posts/create.blade.php",
			"file_size": 4847,
			"file_write_time": 131798798293077653,
			"settings":
			{
				"buffer_size": 4744,
				"line_ending": "Windows"
			}
		},
		{
			"file": "composer.json",
			"settings":
			{
				"buffer_size": 1404,
				"line_ending": "Unix"
			}
		}
	],
	"build_system": "",
	"build_system_choices":
	[
	],
	"build_varint": "",
	"command_palette":
	{
		"height": 0.0,
		"last_filter": "",
		"selected_items":
		[
			[
				"insta",
				"Package Control: Install Package"
			],
			[
				"Package Control: insta",
				"Package Control: Install Package"
			],
			[
				"pack",
				"Package Control: Install Package"
			],
			[
				"Package Control",
				"Package Control: Install Package"
			]
		],
		"width": 0.0
	},
	"console":
	{
		"height": 266.0,
		"history":
		[
			"import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)"
		]
	},
	"distraction_free":
	{
		"menu_visible": true,
		"show_minimap": false,
		"show_open_files": false,
		"show_tabs": false,
		"side_bar_visible": false,
		"status_bar_visible": false
	},
	"expanded_folders":
	[
		"/C/xampp/htdocs/bettykingsdaily.com",
		"/C/xampp/htdocs/bettykingsdaily.com/config"
	],
	"file_history":
	[
		"/C/Users/nebed/Documents/kropmann/Enterprise WiFi/AccessBank/login.html",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/blog/single.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/edit.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PagesController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PostController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/filesystems.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/blog/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_mainfooter.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_nav.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/Auth/AuthController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Category.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/BlogController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/routes.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_tags.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_popularposts.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_28_072701_add_thumbnail_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/comments/edit.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_27_214937_add_image_col_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Kernel.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/comments/delete.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/create.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/app.php",
		"/C/xampp/htdocs/bettykingsdaily.com/.env",
		"/C/xampp/htdocs/bettykingsdaily.com/composer.json",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/CommentsController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/vendor/intervention/image/composer.json",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_javascript.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/purifier.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_head.blade.php",
		"/D/.fseventsd/fseventsd-uuid",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Comment.php",
		"/C/xampp/htdocs/bettykingsdaily.com/vendor/symfony/dom-crawler/Form.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Post.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_25_085557_create_comments_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/contact.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/emails/contact.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/TagController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/show.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/edit.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/index.blade.php",
		"/C/xampp/htdocs/mpulse/index.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/CategoryController.php",
		"/C/xampp/htdocs/mpulse/mpulsefunctions/collectdetails.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Tag.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_22_173026_create_tags_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_22_174623_create_post_tag_table.php",
		"/C/xampp/htdocs/mpulse/validate.php",
		"/C/xampp/htdocs/mpulse/new.php",
		"/C/xampp/htdocs/accessbank/accessfunctions/collectdetails.php",
		"/C/xampp/htdocs/drimo/index.html",
		"/C/xampp/htdocs/drimo/js/custom.js",
		"/C/xampp/htdocs/prantokon/index-video.html",
		"/C/xampp/htdocs/drimo/vendores/typedjs/typed.min.js",
		"/C/xampp/htdocs/mpulse/css/style.css",
		"/C/xampp/htdocs/mpulse/css/stylead.css",
		"/C/xampp/htdocs/mpulse/slides.php",
		"/C/xampp/htdocs/mpulse/css/freelancer.min.css",
		"/C/xampp/htdocs/mpulse/guest_info.php",
		"/C/xampp/htdocs/sterlingoau/new.php",
		"/C/xampp/htdocs/accessbank/new.php",
		"/C/xampp/htdocs/accessbank/index.php",
		"/C/xampp/htdocs/accessbank/slides.php",
		"/C/xampp/htdocs/cta.html",
		"/C/xampp/htdocs/mpulse/mpulsefunctions/check_user_func.php",
		"/C/xampp/htdocs/mpulse/accessfunctions/check_user_func.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/categories/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Catergory.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_13_075134_add_category_id_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_13_073404_create_categories_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/passwords/reset.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/login.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/passwords/email.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/emails/password.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/mail.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/Auth/PasswordController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/register.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/main.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/User.php",
		"/C/xampp/htdocs/accessbank/guest_info.php",
		"/C/Users/nebed/Downloads/campaigns.php",
		"/C/xampp/htdocs/sterlingoau/validate.php",
		"/C/xampp/htdocs/accessbank/validate.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2014_10_12_000000_create_users_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/logout.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_05_220540_add_description_to_users.php",
		"/C/xampp/htdocs/bettykingsdaily.com/public/css/base.css",
		"/C/xampp/htdocs/bettykingsdaily.com/public/css/main.css",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_messages.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_02_154318_add_slugs_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/about.blade.php",
		"/C/Users/nebed/AppData/Roaming/Sublime Text 3/Packages/Package Control/Package Control.sublime-settings",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/standard.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show3.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_07_31_084112_create_posts_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/session.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_loader.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_about.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_bottomfooter.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_scripts.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/about.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/index.blade.php",
		"/C/xampp/htdocs/laravel/resources/views/about.blade.php",
		"/C/xampp/htdocs/laravel/app/Http/routes.php",
		"/C/xampp/htdocs/laravel/app/Http/Controllers/PagesController.php",
		"/C/xampp/htdocs/laravel/resources/views/index.blade.php"
	],
	"find":
	{
		"height": 27.0
	},
	"find_in_files":
	{
		"height": 0.0,
		"where_history":
		[
		]
	},
	"find_state":
	{
		"case_sensitive": false,
		"find_history":
		[
			"nav ",
			"nav",
			"id"
		],
		"highlight": true,
		"in_selection": false,
		"preserve_case": false,
		"regex": false,
		"replace_history":
		[
		],
		"reverse": false,
		"show_context": true,
		"use_buffer2": true,
		"whole_word": false,
		"wrap": true
	},
	"folders":
	[
		{
			"path": "C:\\xampp\\htdocs\\bettykingsdaily.com"
		}
	],
	"groups":
	[
		{
			"selected": 1,
			"sheets":
			[
				{
					"buffer": 0,
					"file": "/C/Users/nebed/campaigns.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 22165,
						"regions":
						{
						},
						"selection":
						[
							[
								8870,
								8870
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 2,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 1539.0,
						"zoom_level": 1.0
					},
					"stack_index": 2,
					"type": "text"
				},
				{
					"buffer": 1,
					"file": "resources/views/posts/create.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 4744,
						"regions":
						{
						},
						"selection":
						[
							[
								1,
								1
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 2,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 1691.0,
						"zoom_level": 1.0
					},
					"stack_index": 0,
					"type": "text"
				},
				{
					"buffer": 2,
					"file": "composer.json",
					"semi_transient": true,
					"settings":
					{
						"buffer_size": 1404,
						"regions":
						{
						},
						"selection":
						[
							[
								0,
								0
							]
						],
						"settings":
						{
							"syntax": "Packages/JavaScript/JSON.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 1,
					"type": "text"
				}
			]
		}
	],
	"incremental_find":
	{
		"height": 27.0
	},
	"input":
	{
		"height": 42.0
	},
	"layout":
	{
		"cells":
		[
			[
				0,
				0,
				1,
				1
			]
		],
		"cols":
		[
			0.0,
			1.0
		],
		"rows":
		[
			0.0,
			1.0
		]
	},
	"menu_visible": true,
	"output.find_results":
	{
		"height": 0.0
	},
	"pinned_build_system": "",
	"project": "",
	"replace":
	{
		"height": 50.0
	},
	"save_all_on_build": true,
	"select_file":
	{
		"height": 0.0,
		"last_filter": "",
		"selected_items":
		[
		],
		"width": 0.0
	},
	"select_project":
	{
		"height": 0.0,
		"last_filter": "",
		"selected_items":
		[
		],
		"width": 0.0
	},
	"select_symbol":
	{
		"height": 0.0,
		"last_filter": "",
		"selected_items":
		[
		],
		"width": 0.0
	},
	"selected_group": 0,
	"settings":
	{
	},
	"show_minimap": true,
	"show_open_files": false,
	"show_tabs": true,
	"side_bar_visible": true,
	"side_bar_width": 238.0,
	"status_bar_visible": true,
	"template_settings":
	{
	}
}
