{
	"auto_complete":
	{
		"selected_items":
		[
		]
	},
	"buffers":
	[
		{
			"file": "resources/views/pages/index.blade.php",
			"settings":
			{
				"buffer_size": 31108,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/partials/_head.blade.php",
			"settings":
			{
				"buffer_size": 1153,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/posts/create.blade.php",
			"settings":
			{
				"buffer_size": 3192,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/posts/show.blade.php",
			"settings":
			{
				"buffer_size": 19865,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/readme.txt",
			"settings":
			{
				"buffer_size": 2522,
				"line_ending": "Windows"
			}
		},
		{
			"file": "app/Http/routes.php",
			"settings":
			{
				"buffer_size": 698,
				"encoding": "UTF-8",
				"line_ending": "Unix"
			}
		},
		{
			"file": "app/Http/Controllers/PagesController.php",
			"settings":
			{
				"buffer_size": 322,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "resources/views/partials/_messages.blade.php",
			"settings":
			{
				"buffer_size": 362,
				"encoding": "UTF-8",
				"line_ending": "Windows"
			}
		},
		{
			"file": "app/Http/Controllers/PostController.php",
			"settings":
			{
				"buffer_size": 2176,
				"encoding": "UTF-8",
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
		],
		"width": 0.0
	},
	"console":
	{
		"height": 157.0,
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
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/Auth",
		"/C/xampp/htdocs/bettykingsdaily.com/resources",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts"
	],
	"file_history":
	[
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/standard.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show3.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_javascript.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/posts/show.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/contact.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/main.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/.env",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/routes.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Kernel.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PagesController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/composer.json",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/pages/about.blade.php",
		"/C/xampp/htdocs/bettykingsdaily.com/database/migrations/2018_07_31_084112_create_posts_table.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Http/Controllers/PostController.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/app.php",
		"/C/xampp/htdocs/bettykingsdaily.com/config/session.php",
		"/C/xampp/htdocs/bettykingsdaily.com/app/Post.php",
		"/C/xampp/htdocs/bettykingsdaily.com/resources/views/partials/_head.blade.php",
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
		"height": 40.0
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
			"selected": 8,
			"sheets":
			[
				{
					"buffer": 0,
					"file": "resources/views/pages/index.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 31108,
						"regions":
						{
						},
						"selection":
						[
							[
								18,
								62
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 8,
					"type": "text"
				},
				{
					"buffer": 1,
					"file": "resources/views/partials/_head.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 1153,
						"regions":
						{
						},
						"selection":
						[
							[
								520,
								552
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 6,
					"type": "text"
				},
				{
					"buffer": 2,
					"file": "resources/views/posts/create.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 3192,
						"regions":
						{
						},
						"selection":
						[
							[
								1994,
								1994
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax"
						},
						"translation.x": 0.0,
						"translation.y": 755.0,
						"zoom_level": 1.0
					},
					"stack_index": 7,
					"type": "text"
				},
				{
					"buffer": 3,
					"file": "resources/views/posts/show.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 19865,
						"regions":
						{
						},
						"selection":
						[
							[
								6196,
								6196
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 2220.0,
						"zoom_level": 1.0
					},
					"stack_index": 4,
					"type": "text"
				},
				{
					"buffer": 4,
					"file": "resources/views/readme.txt",
					"semi_transient": true,
					"settings":
					{
						"buffer_size": 2522,
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
							"syntax": "Packages/Text/Plain text.tmLanguage"
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 3,
					"type": "text"
				},
				{
					"buffer": 5,
					"file": "app/Http/routes.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 698,
						"regions":
						{
						},
						"selection":
						[
							[
								603,
								603
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax"
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 2,
					"type": "text"
				},
				{
					"buffer": 6,
					"file": "app/Http/Controllers/PagesController.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 322,
						"regions":
						{
						},
						"selection":
						[
							[
								143,
								143
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax"
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 1,
					"type": "text"
				},
				{
					"buffer": 7,
					"file": "resources/views/partials/_messages.blade.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 362,
						"regions":
						{
						},
						"selection":
						[
							[
								284,
								284
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax"
						},
						"translation.x": 0.0,
						"translation.y": 0.0,
						"zoom_level": 1.0
					},
					"stack_index": 5,
					"type": "text"
				},
				{
					"buffer": 8,
					"file": "app/Http/Controllers/PostController.php",
					"semi_transient": false,
					"settings":
					{
						"buffer_size": 2176,
						"regions":
						{
						},
						"selection":
						[
							[
								1699,
								1699
							]
						],
						"settings":
						{
							"syntax": "Packages/PHP/PHP.sublime-syntax",
							"tab_size": 4,
							"translate_tabs_to_spaces": true
						},
						"translation.x": 0.0,
						"translation.y": 919.0,
						"zoom_level": 1.0
					},
					"stack_index": 0,
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
		"height": 39.0
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
	"side_bar_width": 267.0,
	"status_bar_visible": true,
	"template_settings":
	{
	}
}
