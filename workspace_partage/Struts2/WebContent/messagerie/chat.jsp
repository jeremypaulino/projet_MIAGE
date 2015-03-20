<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<title>Messagerie</title>



<!-- ============================LE CSS========================== -->
<link rel="stylesheet" type="text/css" media="screen" href="./css/reset.css">

<link rel="stylesheet" type="text/css" media="screen" href="./css/style.css">

<link rel="stylesheet" type="text/css" media="screen" href="./css/grid_12.css">

<link rel="stylesheet" type="text/css" media="screen" href="./css/slider.css">

<link href='http://fonts.googleapis.com/css?family=Condiment'rel='stylesheet' type='text/css'>

<link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="./css/jquery-ui.css">


<!-- ==========================Les librairies JS ====================	 -->
<script src="./js/jquery-1.7.min.js"></script>

<script src="./js/jquery.easing.1.3.js"></script>

<script src="./js/jquery-ui.js"></script>

<script type="text/javascript" charset="utf-8"src="./js/jquery.leanModal.min.js"></script>

<script src="./js/tms-0.4.x.js"></script>


	
<!-- S'identifier	 -->

<script type="text/javascript">
     $(function(){
      $('#modaltrigger').leanModal(
    		  { top: 110, overlay: 0.45, closeButton: ".hidemodal" }
    		  );
     });
</script>


</head>
<body>
	<div class="main">
		<!--==============================header================================= -->
		<s:include value="../wrapheader.jsp"></s:include>
		<!--==============================content================================ -->
		<section id="content">
			<div class="container_12">
				<div class="aside">
					<div id=test99>
						<iframe src="chat2" width="1500" height="1000" scrolling="no" frameborder="0"></iframe>

					</div>

				</div>

			</div>


		</section>
	</div>
	<!--==============================footer================================= -->
	<s:include value="../footer.jsp"></s:include>





</body>





</html>