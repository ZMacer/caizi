	<!-- Custom styles for this template -->
    
    

 	<div class="container">
		
      <form class="form-signin" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <input type="text" name="username" class="form-control" placeholder="用户名" autofocus>
        <input type="password" name="password" class="form-control" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 记住我
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        <div class="error">{{.message}}</div>
      </form>

    </div> <!-- /container -->