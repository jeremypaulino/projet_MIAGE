<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Panneau d'administration</title>

<s:include value="../cssjs.jsp"></s:include>




<script>
	$(document).ready(function() {
		$('.sucess:empty').hide();
	});
	</script>
	
	
</head>
<body>



	<div class="main">
<sx:head cache="false" compressed="false" />
		<s:include value="headerprof.jsp"></s:include>
  <!--==============================content================================-->
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
               
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
                    <!--  <object type="text/html" data="/calend/cal.jsp" width="650" height="1000">
                      <embed src="/calend/cal.jsp" width="650" height="1000"></embed>
                    </object>
                    <s:include value="./calend/cal.jsp"></s:include>-->
                    
                    <%@ include file="calend/contactform2.jsp" %>
                    
                    
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