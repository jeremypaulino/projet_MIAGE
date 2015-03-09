<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Panneau d'administration</title>



<!-- Grid CSS File (only needed for demo page) -->
<link rel="stylesheet" href="calend/css/paragridma.css">

<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="calend/css/eventCalendar.css">

<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet"
	href="calend/css/eventCalendar_theme_responsive.css">

<script src="calend/js/test.js" type="text/javascript"></script>

<script src="calend/js/jquery.timeago.js" type="text/javascript"></script>
<script src="calend/js/jquery.eventCalendar.js" type="text/javascript"></script>


<script>
	$(document).ready(function() {
		$('.sucess:empty').hide();
	});
</script>



<s:include value="../cssjs.jsp"></s:include>

</head>
<body>



	<div class="main">

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
<!-- 							  <object type="text/html" data="calend/contactform2.jsp" width="650" height="1000"> -->
<!--                       <embed src="calend/contactform2.jsp" width="650" height="1000"></embed> -->
<!--                     </object>   -->
                    
                    	  <object type="text/html" data="calend/cal2.jsp" width="1550" height="1000">
                      <embed src="calend/cal2.jsp" width="1550" height="1000"></embed>
                    </object> 


<%-- 					<s:include value="calend/cal.jsp"></s:include> --%>





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

