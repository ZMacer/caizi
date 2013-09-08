<!DOCTYPE html>
<html lang="en">
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

		<title>{{.Title}}</title>
		<style type="text/css">
			* {
				margin:0;
				padding:0;
			}

			body {
				background-color:#EFEFEF;
				font: .9em "Lucida Sans Unicode", "Lucida Grande", sans-serif;
			}

			#wrapper{
				width:600px;
				margin:40px auto 0;
				text-align:center;
				-moz-box-shadow: 5px 5px 10px rgba(0,0,0,0.3);
				-webkit-box-shadow: 5px 5px 10px rgba(0,0,0,0.3);
				box-shadow: 5px 5px 10px rgba(0,0,0,0.3);
			}

			#wrapper h1{
				color:#FFF;
				text-align:center;
				margin-bottom:20px;
			}

			#wrapper a{
				display:block;
				font-size:.9em;
				padding-top:20px;
				color:#FFF;
				text-decoration:none;
				text-align:center;
			}

			#container {
				width:600px;
				padding-bottom:15px;
				background-color:#FFFFFF;
			}

			.navtop{
				height:40px;
				background-color:#24B2EB;
				padding:13px;
			}

			.content {
				padding:10px 10px 25px;
				background: #FFFFFF;
				margin:;
				color:#333;
			}

			a.button{
				color:white;
				padding:15px 20px;
				text-shadow:1px 1px 0 #00A5FF;
				font-weight:bold;
				text-align:center;
				border:1px solid #24B2EB;
				margin:0px 200px;
				clear:both;
				background-color: #24B2EB;
				border-radius:100px;
				-moz-border-radius:100px;
				-webkit-border-radius:100px;
			}

			a.button:hover{
				text-decoration:none;
				background-color: #24B2EB;
			}

		</style>
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
		                <li ><a href="/" title="首页">首页</a></li>
		                <li ><a href="/about" title="关于 beego">关于 beego</a></li>
		                <li ><a href="/community" title="开发者社区">开发者社区</a></li>
		                <li ><a href="/quickstart" title="快速入门">快速入门</a></li>
		                <li ><a href="/docs" title="beego 开发文档">开发文档</a></li>
		                <li ><a href="/samples" title="beego 示例程序">示例程序</a></li>
		                <li><a target="_blank" href="http://blog.beego.me" title="官方博客">博客</a></li>
		            </ul>
		        </div>
		    </div>
		</div>
		
	
		<br/>
		<div id="wrapper">
			<div id="container">
				<div class="navtop">
					<h1>{{.Title}}</h1>
				</div>
				<div id="content">
					{{.Content}}
					<a href="/" title="Home" class="button">Go Home</a><br />

					<br>Powered by ShareFood {{.BeegoVersion}}
				</div>
			</div>
		</div>
		
		
		<div class="footer-landscape">
		    <div class="footer-landscape-image">
		        
		        <div class="container">
		            <div class="row">
		                <div class="span12 footer">
		                    <div class="span8 tbox">
		                    	beego 应用框架是一个开源项目，初经 <a href="https://github.com/astaxie">Asta谢</a> 发起，现由 beego 开发者社区维护。授权许可遵循 <a href="http://www.apache.org/licenses/LICENSE-2.0.html">apache 2.0 licence</a>。
		                        <strong>语言选项：</strong>
							    <div class="btn-group dropup">
								    <button class="btn dropdown-toggle" data-toggle="dropdown">简体中文 <span class="caret"></span></button>
								    <ul class="dropdown-menu">
									
								    	
								    	<li><a href="?lang=en&q=">English</a></li>
								    	
								    </ul>
							    </div>
		                    </div>
		
		                    <div class="span4 tbox textright social links">
		                        <a class="twitter" href="https://twitter.com/xiemengjun">Twitter</a>
		                        <a class="github" href="https://github.com/astaxie/beego">GitHub</a>
		                        <a class="googleplus" href="https://plus.google.com/111292884696033638814">Goolge+</a>
		                    </div>
		                </div>
		            </div>
		        </div>
		        
		    </div>
		</div>
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<script src="/static/js/bootstrap.min.js"></script>
		
		
	</body>
</html>