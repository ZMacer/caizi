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
                <li class="active"><a href="/" title="首页">首页</a></li>
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

		<a target="_blank" href="https://github.com/hilerchyn/sharefood"><img style="position: absolute; top: 70; right: 0; border: 0; z-index: 22" src="/static/img/fork-us-on-github.png" alt="Fork us on GitHub"></a>

		<div class="">
		    <div id="top" class="main-banner">
		        <div class="text-center ">
		            <div class="copy-headline">
		                <h1>一样的故事，不一样的视角！</h1>
		                <img id="main-image" src="/static/img/banner.png" alt="Banner">
		            </div>
		        </div>
		    </div>
		</div>

		<div class="container">
		
			<div id="markdown" class="markdown span12"><h2>安装</h2>

<p>beego 包含一些示例应用程序以帮您学习并使用 beego 应用框架。</p>

<p>您需要安装 Go 1.1 以确保所有功能的正常使用。</p>

<p>beego 是可以通过 “go get” 安装的 Go 项目：<code>go get github.com/astaxie/beego</code></p>

<p>您或许希望安装 <a href="/docs/Reference_BeeTool">Bee</a> 工具以协助您开发：<code>go get github.com/astaxie/bee</code></p>

<p>为了更加方便的操作，请将 <code>$GOPATH/bin</code> 加入到你的 $PATH 变量中。</p>

<p>想要快速建立一个应用来检测安装？</p>

<pre><code>$ cd $GOPATH/src
$ bee new hello
$ cd hello
$ bee run hello
</code></pre>

<p>这些指令帮助您：</p>

<ol>
<li>安装 beego 到您的 $GOPATH 中。</li>
<li>在您的计算机上安装 Bee 工具。</li>
<li>创建一个名为 “hello” 的应用程序。</li>
<li>启动热编译。</li>
</ol>

<p>一旦程序开始运行，您就可以在浏览器中打开 <a href="http://localhost:8080/">http://localhost:8080/</a> 进行访问。</p>

<h2>简单示例</h2>

<p>下面这个示例程序将会在浏览器中打印 “Hello world”，以此说明使用 beego 构建 Web 应用程序是多么的简单！</p>

<pre><code>package main

import (
    &quot;github.com/astaxie/beego&quot;
)

type MainController struct {
    beego.Controller
}

func (this *MainController) Get() {
    this.Ctx.WriteString(&quot;hello world&quot;)
}

func main() {
    beego.Router(&quot;/&quot;, &amp;MainController{})
    beego.Run()
}
</code></pre>

<p>把上面的代码保存为 hello.go，然后通过命令行进行编译并执行：</p>

<pre><code>$ go build hello.go
$ ./hello
</code></pre>

<p>这个时候你可以打开你的浏览器，通过这个地址浏览 <a href="http://127.0.0.1:8080">http://127.0.0.1:8080</a> 返回 “hello world”。</p>

<p>那么上面的代码到底做了些什么呢？</p>

<ol>
<li>首先我们导入了包 <code>github.com/astaxie/beego</code>。我们知道 Go 语言里面被导入的包会按照深度优先的顺序去执行导入包的初始化（变量和 init 函数，<a href="https://github.com/astaxie/build-web-application-with-golang/blob/master/ebook/02.3.md#maininit">更多详情</a>），beego 包中会初始化一个 BeeAPP 的应用和一些参数。</li>
<li>定义 Controller，这里我们定义了一个 struct 为 <code>MainController</code>，充分利用了 Go 语言的组合的概念，匿名包含了 <code>beego.Controller</code>，这样我们的 <code>MainController</code> 就拥有了 <code>beego.Controller</code> 的所有方法。</li>
<li>定义 RESTful 方法，通过匿名组合之后，其实目前的 <code>MainController</code> 已经拥有了 <code>Get</code>、<code>Post</code>、<code>Delete</code>、<code>Put</code> 等方法，这些方法是分别用来对应用户请求的 Method 函数，如果用户发起的是 POST 请求，那么就执行 <code>Post</code> 函数。所以这里我们定义了 <code>MainController</code> 的 <code>Get</code> 方法用来重写继承的 <code>Get</code> 函数，这样当用户发起 GET 请求的时候就会执行该函数。</li>
<li>定义 main 函数，所有的 Go 应用程序和 C 语言一样都是 main 函数作为入口，所以我们这里定义了我们应用的入口。</li>
<li>Router 注册路由，路由就是告诉 beego，当用户来请求的时候，该如何去调用相应的 Controller，这里我们注册了请求 <code>/</code> 的时候，请求到 <code>MainController</code>。这里我们需要知道，Router 函数的两个参数函数，第一个是路径，第二个是 Controller 的指针。</li>
<li>Run 应用，最后一步就是把在步骤 1 中初始化的 BeeApp 开启起来，其实就是内部监听了 8080 端口：Go 默认情况会监听你本机所有的 IP 上面的 8080 端口。</li>
</ol>

<p>停止服务的话，请按 <code>ctrl+c</code>。</p>
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
<script src="/static/js/jquery.scrollTo-min.js"></script>
   

<script type="text/javascript">
    function moveRight() {
        $('#tweets-container').scrollTo( '+=620px', 300 );
    }
    function moveLeft() {
        $('#tweets-container').scrollTo( '-=620px', 300 );
    }
    function showLeftShadow() {
        $('.tweet-navigator-left').addClass('shadow').show();
    }

    $('document').ready(function() {
        $('.tweet-navigator-right').click(moveRight);
        $('.tweet-navigator-left').click(moveLeft);

        $('#tweets-container').scroll(showLeftShadow);
    })
</script>


	</body>
</html>
