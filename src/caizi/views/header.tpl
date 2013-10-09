<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="shortcut icon" href="/static/img/favicon.png" />
		<meta name="author" content="Hiler" />
		<meta name="description" content="才子社区 关注社会，关注人文，社会辣评" />
		<meta name="keywords" content="社会，人文，怪现状，文学，小说"/>

		 
		<link href="/static/css/bootstrap-custom.css" rel="stylesheet" />
		<link href="/static/css/main.css" rel="stylesheet" />
		<link href="/static/css/link.css" rel="stylesheet" />
		<link href="/static/css/github.css" rel="stylesheet" />
		
		{{if .LoginCSS}}
			<link href="/static/css/signin.css" rel="stylesheet" />
		{{end}}

		<title>才子社 - 关注人文、关注社会</title>
	</head>	

	<body>
		
		<div class="navbar navbar-static-top">
		    <div class="navbar-inner navbar-fixed-top ">
		        <div class="container">
		            <div class="brand">
		                <a class="logo" href="/">
		                    <img src="/static/img/caizi.gif" alt="才子社" title="才子社" style="height: 60px;">
		                </a>
		                <sub class="shortintro">关注人文、关注社会</sub>
		            </div>
		
		            <ul class="nav pull-right">
		                <li class="{{.Navhome}}"><a href="/" title="首页">首页</a></li>
		                <li class="{{.Navabout}}"><a href="/about" title="关于 才子社">关于 才子社</a></li>
		                {{if .Logedin}}
		                	<li class="{{.Navlogin}}">
								<div class="dropdown">
								  <button class="btn dropdown-toggle sr-only" type="button" id="dropdownMenu1" data-toggle="dropdown">
								    {{.UserName}}
								    <span class="caret"></span>
								  </button>
								  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
								    <li role="presentation"><a role="menuitem" class="disabled" tabindex="-1" href="#">个人资料</a></li>
								    <li role="presentation" class="divider"></li>
								    <li role="presentation"><a role="menuitem" tabindex="-1" href="/admin/logout/">退出</a></li>
								  </ul>
								</div>
		                	</li>
		                {{else}}
		                	<li class="{{.Navlogin}}"><a href="/admin/login" title="用户登录">登录</a></li>
		                {{end}}
		            </ul>
		        </div>
		    </div>
		</div>

		<a target="_blank" href="https://github.com/hilerchyn/caizi"><img style="position: absolute; top: 70; right: 0; border: 0; z-index: 22" src="/static/img/fork-us-on-github.png" alt="Fork us on GitHub"></a>