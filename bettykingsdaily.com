{
	"auto_complete":
	{
		"selected_items":
		[
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
			"file": "resources/views/blog/single.blade.php",
			"settings":
			{
				"buffer_size": 19536,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/posts/show.blade.php",
			"settings":
			{
				"buffer_size": 13277,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "app/Http/routes.php",
			"settings":
			{
				"buffer_size": 2190,
				"encoding": "UTF-8",
				"line_ending": "Unix"
			}
		},
		{
			"file": "app/Http/Controllers/CommentsController.php",
			"settings":
			{
				"buffer_size": 2595,
				"encoding": "UTF-8",
				"line_ending": "Unix"
			}
		},
		{
			"file": "resources/views/comments/edit.blade.php",
			"settings":
			{
				"buffer_size": 3479,
				"encoding": "UTF-8",
				"line_ending": "Windows"
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
		"/C/xampp/htdocs/bettykingsdaily.com/app",
		"/C/xampp/htdocs/bettykingsdaily.com/resources",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/comments",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags"
	],
	"file_history":
	[
		"/D/.fseventsd/fseventsd-uuid",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Comment.php",
		"/C/xampp/htdocs/bettykingsdaily.com/vendor/symfony/dom-crawler/Form.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/routes.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Post.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_25_085557_create_comments_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PagesController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/contact.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/emails/contact.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PostController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/TagController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/show.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/edit.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/tags/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_javascript.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/edit.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/create.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_head.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/blog/single.blade.php",
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
		"/C/xampp/htdocs/bettykingsdaily.com/app/Category.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/categories/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Catergory.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_nav.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_13_075134_add_category_id_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_13_073404_create_categories_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Kernel.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/Auth/AuthController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/.env",
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
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/auth/logout.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_05_220540_add_description_to_users.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/BlogController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/blog/index.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/public/css/base.css",
		"/C/xampp/htdocs/bettykingsdaily.com/public/css/main.css",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_messages.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_08_02_154318_add_slugs_to_posts.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/about.blade.php",
		"/C/Users/nebed/AppData/Roaming/Sublime Text 3/Packages/Package Control/Package Control.sublime-settings",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/standard.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show3.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/composer.json",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_07_31_084112_create_posts_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/app.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/session.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_popularposts.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_loader.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_about.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_tags.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_bottomfooter.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_mainfooter.blade.php",
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
			"selected": 0,
			"sheets":
			[
				{
					"buffer": 0,
					"file": "resources/views/blog/single.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 19536,
						"regions":
						{
						},
						"selection":
						[
							[
								11511,
								11512
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 3743.0,
						"zoom_level": 1.0
					},
					"stack_index": 0,
					"type": "text"
				},
				{
					"buffer": 1,
					"file": "resources/views/posts/show.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 13277,
						"regions":
						{
						},
						"selection":
						[
							[
								12762,
								12762
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 6848.0,
						"zoom_level": 1.0
					},
					"stack_index": 1,
					"type": "text"
				},
				{
					"buffer": 2,
					"file": "app/Http/routes.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 2190,
						"regions":
						{
						},
						"selection":
						[
							[
								1587,
								1587
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"translate_tabs_to_spaces": false
						},
						"translation.x": 0.0,
						"translation.y": 641.0,
						"zoom_level": 1.0
					},
					"stack_index": 4,
					"type": "text"
				},
				{
					"buffer": 3,
					"file": "app/Http/Controllers/CommentsController.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 2595,
						"regions":
						{
						},
						"selection":
						[
							[
								2390,
								2390
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 1470.0,
						"zoom_level": 1.0
					},
					"stack_index": 3,
					"type": "text"
				},
				{
					"buffer": 4,
					"file": "resources/views/comments/edit.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 3479,
						"regions":
						{
						},
						"selection":
						[
							[
								2690,
								2690
							]
						],
						"settings":
						{
							"syntax": "Packages/Laravel Blade Highlighter/blade.sublime-syntax",
							"tab_size": 2,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 1502.0,
						"zoom_level": 1.0
					},
					"stack_index": 2,
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
	"side_bar_width": 50.0,
	"status_bar_visible": true,
	"template_settings":
	{
	}
}
