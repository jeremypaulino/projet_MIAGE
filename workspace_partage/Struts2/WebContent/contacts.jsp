<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Contacts</title>
    <meta charset="utf-8">
	<s:include value="cssjs.jsp"></s:include>
	
</head>
<body>
  <div class="main">
  <!--==============================header=================================-->
       <header>
  
		<s:include value="wrapheader.jsp"></s:include>

    </header>  
  <!--==============================content================================-->
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3 class="p5">Nous Contacter</h3>
                    <div class="map img-border">
                      <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=evry+boulevard+de+france&amp;aq=&amp;sll=37.424915,-122.072205&amp;sspn=0.178586,0.37405&amp;ie=UTF8&amp;hq=&amp;hnear=Boulevard+de+France,+91000+%C3%89vry,+France&amp;t=m&amp;z=14&amp;ll=48.626974,2.439081&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=evry+boulevard+de+france&amp;aq=&amp;sll=37.424915,-122.072205&amp;sspn=0.178586,0.37405&amp;ie=UTF8&amp;hq=&amp;hnear=Boulevard+de+France,+91000+%C3%89vry,+France&amp;t=m&amp;z=14&amp;ll=48.626974,2.439081" style="color:#0000FF;text-align:left"></a></small>
                    </div>
							<ul>
								<li>IBISC - IBGBI - 2eme étage<br>23, Boulevard de France<br>91034 - EVRY
								</li>

								<li><span>Telephone: </span>01 64 98 78 87</li>
								<li><span>Fax: </span>01 64 98 78 88</li>
								<li><span>E-mail: </span><a href="#" class="link">support@ischool.fr</a></li>
								<li><script type="text/javascript" src="http://www.skypeassets.com/i/scom/js/skype-uri.js"></script>
									<div id="SkypeButton_Call_zosta91_1">
										<script type="text/javascript">
											Skype
													.ui({
														"name" : "call",
														"element" : "SkypeButton_Call_zosta91_1",
														"participants" : [ "zosta91" ],
														"imageSize" : 32
													});
										</script>
									</div></li>
							</ul>
						</div>
                <div class="block-6">
               
                    <!--<h3>Entrer En Contact</h3>
                    <form id="form" method="post" >
                      <fieldset>
                        <label><input type="text" value="Name" onBlur="if(this.value=='') this.value='Name'" onFocus="if(this.value =='Name' ) this.value=''"></label>
                        <label><input type="text" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''"></label>
                        <label><input type="text" value="Phone" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''"></label>
                        <label><textarea onBlur="if(this.value==''){this.value='Message'}" onFocus="if(this.value=='Message'){this.value=''}">Message</textarea></label>
                        <div class="btns"><a href="#" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>
                      </fieldset>  
                    </form> 
                    -->
                    <object type="text/html" data="./contactform2.html" width="650" height="1000">
                      <embed src="./contactform2.jsp" width="650" height="1000"></embed>
                    </object>
                </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
    </section> 
  </div>    
<!--==============================footer=================================-->
	<s:include value="footer.jsp"></s:include>
    
</body>
</html>