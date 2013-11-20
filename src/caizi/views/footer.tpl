		<div class="footer-landscape">
		    <div class="footer-landscape-image">
		        
		        <div class="container">
		            <div class="row">
		                <div class="span12 footer">
		                    <div class="span8 tbox">
		                    <span class="text"><span class="en-code" style="font-family: arial;font-size: 14px;">©</span> 2007-2013 Hiler.Chen(陈涛)版权所有</span>
		                    	&nbsp;&nbsp;&nbsp;&nbsp;<b>MAIL</b>:hilerchyn@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;<b>SKYPE</b>:hilerchyn
		                    </div>
		
		                    <div class="span4 tbox textright social links">
		                        <!--a class="twitter" href="">Twitter</a-->
		                        <a class="github" href="https://github.com/hilerchyn/caizi">GitHub</a>
		                        <!--a class="googleplus" href="">Goolge+</a-->
		                    </div>
		                </div>
		            </div>
		        </div>
		        
		    </div>
		</div>

		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<script src="/static/js/bootstrap.min.js"></script>
		<script src="/static/js/jquery.scrollTo-min.js"></script>
		
		<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=1005599" ></script>
		<script type="text/javascript" id="bdshell_js"></script>
		<script type="text/javascript">
		document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
		</script>
		   

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