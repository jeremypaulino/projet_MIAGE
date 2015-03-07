<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Clients</title>
    <meta charset="utf-8">
    <s:include value="cssjs.jsp"></s:include>

</head>
<body>
  <div class="main">
  <!--==============================header=================================-->
	<s:include value="header.jsp"></s:include>
  <!--==============================content================================-->
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3>Clients List</h3>
                     <ul class="list-1">
                    	<li><a href="#">At vero eos et accusam</a></li>
                        <li><a href="#">Justo duo dolores et ea rebum</a></li>
                        <li><a href="#">Stet clita kasd gubergren, no sea</a></li>
                        <li><a href="#">Takimata sanctus est lorem</a></li>
                        <li><a href="#">Lorem ipsum dolor sit</a></li>
                        <li><a href="#">Amet consetetur sadipscing elitr</a></li>
                        <li><a href="#">Sed diam nonumy eirmod</a></li>
                        <li><a href="#">Tempor invidunt ut labore et dolore</a></li>
                        <li><a href="#">Magna aliquyam erat sed diam</a></li>
                        <li><a href="#">Voluptua vero eos et accusam et</a></li>
                        <li><a href="#">Justo duo dolores et ea</a></li>
                    </ul>
                </div>
                <div class="block-6">
                    <h3 class="p6">Be Our Client!</h3>
                    <div class="wrap">
                    	<img src="images/page5-img1.jpg" alt="" class="img-border img-indent-2">
                        <div class="extra-wrap">
                            <p><a href="#" class="link"><strong>Ut wisi enim ad minim veniam, quis nostrud exerci tation</strong></a></p>
                            <p class="p6">Duis autem vel eum iriure dolor in hendrerit in vulputate velit diam voluptua. At vero eos et accusam esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto.</p>
                    	</div>
                    	<p class="p1">Odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
                    	<a href="#" class="button">More</a>
                    </div>
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="aside">
            <div class="container_12">	
                <div class="grid_12">
                    <div class="pad-2 wrap">
                        <h3 class="p5">Our Most Respected Clients</h3>
                        <div class="wrap box-2">
                        	<a href="#"><img src="images/banner-1.jpg" alt=""></a><a href="#"><img src="images/banner-2.jpg" alt=""></a><a href="#"><img src="images/banner-3.jpg" alt=""></a><a href="#"><img src="images/banner-4.jpg" alt=""></a><a href="#" class="last"><img src="images/banner-5.jpg" alt=""></a>
                        </div>	
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>  
    </section> 
  </div>    
<!--==============================footer=================================-->
    	<s:include value="footer.jsp"></s:include>
	    
</body>
</html>