		<div class="footer-landscape">
		    <div class="footer-landscape-image">
		        
		        <div class="container">
		            <div class="row">
		                <div class="span12 footer">
		                    <div class="span8 tbox">
		                    	beego 应用框架是一个开源项目，初经 <a href="https://github.com/astaxie">Asta谢</a> 发起，现由 beego 开发者社区维护。授权许可遵循 <a href="http://www.apache.org/licenses/LICENSE-2.0.html">apache 2.0 licence</a>。
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