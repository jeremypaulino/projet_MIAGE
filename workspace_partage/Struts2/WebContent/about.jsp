<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>About</title>
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
            <div class="wrap block-3 pad-2">
                <div>
                    <h3 class="p5">Qui Somme Nous</h3>
                    <img src="images/page2-img1.jpg" alt="" class="img-border">
                    <p class="top-1"><a href="#" class="link"><strong>Duis autem eum iriure dolor</strong></a></p>
                    <p class="p6">Hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros.</p>
                    <p class="p4">Accumsan et iusto odio dignissim qui blandit praesent luptatum zril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer.</p>
                    <a href="#" class="button">More</a>
                </div>
                <div>
                    <h3 class="p6">Our History</h3>
                    <div class="box-1">
                        <span>2001 -</span>
                        <p class="extra-wrap">Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invid aliquyam erat.</p>
                    </div>
                    <div class="box-1">
                        <span>2004 -</span>
                        <p class="extra-wrap">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est lorem ipsum.</p>
                    </div>
                    <div class="box-1">
                        <span>2009 -</span>
                        <p class="extra-wrap">Lorem ipsum dolor sit amet, conse tetur sadipscing elitr, sed diam nonumy eirmod.</p>
                    </div>
                    <div class="box-1 p4">
                        <span>2012 -</span>
                        <p class="extra-wrap">Tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores etea.</p>
                    </div>
                    <a href="#" class="button">More</a>
                </div>
                <div class="last">
                    <h3 class="p6">Job Opportunities</h3>
                    <p class="p6"><a href="#" class="link"><strong>Duis autem vel eum iriure dolor in hendrerit in vulputate</strong></a></p>
                    <p>Velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan:</p>
                    <ul class="list-1 p4 left-1">
                    	<li><a href="#">Lusto odio dignissim qui</a></li>
                        <li><a href="#">Blandit praesent luptatum zzril</a></li>
                        <li><a href="#">Delenit augue duis dolore</a></li>
                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                        <li><a href="#">Consectetuer adipiscing elit sed</a></li>
                        <li><a href="#">Diam nonummy nibh</a></li>
                        <li><a href="#">Euismod tincidunt ut laoreet</a></li>
                    </ul>
                    <a href="#" class="button">More</a>
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="aside">
            <div class="container_12">	
                <div class="grid_12">
                    <div class="pad-2 wrap">
                        <h3 class="p5">The Best Professionals</h3>
                        <div class="wrap block-4">
                        	<div>
                            	<img src="images/page2-img2.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Mark Jameson</strong></a></p>
                                <p>Soluta nobis eleifend option congue nihil imperdiet doming id quod mazim.</p>
                            </div>
                            <div>
                            	<img src="images/page2-img3.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Dylan Moore</strong></a></p>
                                <p>Placerat facer possim assumom ipsum dolor sit amet, contetuer adipiscing.</p>
                            </div>
                            <div>
                            	<img src="images/page2-img4.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Sebastian Howard</strong></a></p>
                                <p>Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.</p>
                            </div>
                            <div class="last">
                            	<img src="images/page2-img5.jpg" alt="" class="img-border">
                                <p><a href="#" class="link"><strong>Stan Lee</strong></a></p>
                                <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.</p>
                            </div>
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