<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Panneau d'administration</title>

<s:include value="../cssjs.jsp"></s:include>


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




</head>
<body>



	<div class="main">

		<s:include value="headerprof.jsp"></s:include>
		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="wrap pad-3">

<!-- 						<div class="block-6" style="width:50%;"> -->
						
						
						
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

							<object type="text/html" data="calend/cal2.jsp" width="1000px"
								height="1000px">
								<embed src="calend/cal2.jsp" width="1000px" height="1000px"></embed>
							</object>

<!-- 						</div> -->


<!-- 						<div id="resultat2" > -->

<!-- <div class="resultat3"> -->
<!-- <div class="resultat4" > -->

<!-- 							<table> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check"> <label -->
<%-- 										for="check" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>8h00 - 9h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check1"> <label -->
<%-- 										for="check1" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>9h00 - 10h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check2"> <label -->
<%-- 										for="check2" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>10h00 - 11h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check3"> <label -->
<%-- 										for="check3" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>11h00 - 12h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check4"> <label -->
<%-- 										for="check4" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>12h00 - 13h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check5"> <label -->
<%-- 										for="check5" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>13h00 - 14h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check6"> <label -->
<%-- 										for="check6" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>14h00 - 15h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check7"> <label -->
<%-- 										for="check7" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>15h00 - 16h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check8"> <label -->
<%-- 										for="check8" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>16h00 - 17h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check9"> <label -->
<%-- 										for="check9" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>17h00 - 18h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check10"> <label -->
<%-- 										for="check10" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>18h00 - 19h00</td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<td><input type="checkbox" id="check11"> <label -->
<%-- 										for="check11" class="loadcheck" id="loadcheck"> <span --%>
<%-- 											class="entypo-cancel">&#10008;</span> <span class="load"></span> --%>
<%-- 											<span class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="load"></span> <span class="load"></span> <span --%>
<%-- 											class="entypo-check">&#10004;</span> --%>
<!-- 									</label></td> -->
<!-- 									<td>19h00 - 20h00</td> -->
<!-- 								</tr> -->

<!-- 							</table> -->
<!-- 							</div>	 -->
<!-- 							</div> -->
<!-- 						</div> -->
					
					
					
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</section>
	</div>

	<!--==============================footer=================================-->
	<s:include value="../footer.jsp"></s:include>
	
</body>


</html>

