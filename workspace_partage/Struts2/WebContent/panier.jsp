<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>

<html lang="fr">

<head>


<title>Panier</title>

<s:include value="cssjs.jsp"></s:include>


<script>
var valeur1=0;
var valeur2=0;
var valeur3=0;

var rs1=9.50;
var rs2=39.50;
var rs3=99.50;
var resT=0;

function total() {

	var resT1=+document.getElementById('res1').value;
	var resT2=+document.getElementById('res2').value;
	var resT3=+document.getElementById('res3').value;
	resT=resT1+resT2+resT3;
	document.getElementById('resT').value=resT + "euro";
	//get(valeur1, valeur2, valeur3);
	//alert("val1="+valeur1+""+"val2="+valeur2+""+"val3="+valeur3);
	}


function modifier(increment) {

valeur1+=increment;
document.getElementById('champ1').value=valeur1;
calcul1(valeur1);

}

function calcul1(mult){
	rs1=mult*rs1;	
	//alert(rs1);
	document.getElementById('res1').value=rs1;
	total();
	rs1=9.50;
}

function modifier2(increment) {
	valeur2+=increment;
	document.getElementById('champ2').value=valeur2;
	calcul2(valeur2);
	}
	
function calcul2(mult){
	rs2=mult*rs2;	
	//alert(rs2);
	document.getElementById('res2').value=rs2;
	total();
	rs2=39.50;
}
	
function modifier3(increment) {
	valeur3+=increment;
	document.getElementById('champ3').value=valeur3;
	calcul3(valeur3);
	}
	
function calcul3(mult){
	rs3=mult*rs3;	
	//alert(rs3);
	document.getElementById('res3').value=rs3;
	total();
	rs3=99.50;
}

function pcheque(){
	var idSession2 = "<s:property value='#session.id' />";
	//alert(idSession2);
	var type="CHEQUE";
	var credit=(valeur1*5)+(valeur2*20)+(valeur3*100);
	alert(type+credit+idSession2);
	//alert(credit);
	$.ajax({
		url : "soumettrepaiement",
		data : {

			idEleve : idSession2,
			typep : type,
			montant : credit
			

		}
		
	})
}
</script>

</head>
<body>
	<div class="main">

		<s:include value="wrapheader.jsp"></s:include>
		<!--==============================content================================-->
		<section id="content">
			<div class="container_12">
				<div class="grid_12">
					<div class="pad-0 border-1">
						<h2 class="top-1 p0">
							Votre panier
						</h2>


					</div>
					
					
					<table class="table">
					<thead>
						<tr class="cart_menu">
							<td class="coll1">Pack</td>
							<td class="coll2"></td>
							<td class="coll3">Prix</td>
							<td class="coll4">Quantite</td>
							<td class="coll5">Total</td>
							<td></td>
						</tr>
						
					</thead>
					<tbody>
						<tr class="ligntab">
							<td class="cart_product coll1">
								<a href=""><img src="images/pack1.png" alt=""></a>
							</td>
							<td class="cart_description coll2">
								<h4><a>Pack de 5 credits</a></h4>
								
							</td>
							<td class="cart_price coll3">
								<p>9,50&euro;</p>
							</td>
							<td class="cart_quantity coll4">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" type="button" onClick="modifier(+1)"> + </a>
									<!-- <input type="button" value="+1" onClick="modifier(+1)"> -->
									<input id="champ1" class="cart_quantity_input" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
									<a class="cart_quantity_down" type="button" onClick="modifier(-1)"> - </a>
								</div>
							</td>
							<td class="cart_total coll5">
							 <input id="res1" class="cart_quantity_input champmain" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
								<!--<p id="res1" class="cart_total_price">0</p> -->
							</td>
							
						</tr>
						
						
					<tr class="ligntab">
							<td class="cart_product coll1">
								<a href=""><img src="images/pack2.png" alt=""></a>
							</td>
							<td class="cart_description coll2">
								<h4><a>Pack de 20 credits</a></h4>
								
							</td>
							<td class="cart_price coll3">
								<p>39,50&euro;</p>
							</td>
							<td class="cart_quantity coll4">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" type="button" onClick="modifier2(+1)"> + </a>
									<input id="champ2" class="cart_quantity_input" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
									<a class="cart_quantity_down" type="button" onClick="modifier2(-1)"> - </a>
								</div>
							</td>
							<td class="cart_total coll5">
							<input id="res2" class="cart_quantity_input champmain" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
							
								<!--<p class="cart_total_price">39,99euro</p>-->
							</td>
							
						</tr>
						
						<tr class="ligntab">
							<td class="cart_product coll1">
								<a href=""><img src="images/pack3.png" alt=""></a>
							</td>
							<td class="cart_description coll2">
								<h4><a>Pack de 100 credits</a></h4>
								
							</td>
							<td class="cart_price coll3">
								<p>99,50&euro;</p>
							</td>
							<td class="cart_quantity coll4">
								<div class="cart_quantity_button" >
									<a class="cart_quantity_up" type="button" onClick="modifier3(+1)"> + </a>
									<input id="champ3" class="cart_quantity_input" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
									<a class="cart_quantity_down" type="button" onClick="modifier3(-1)"> - </a>
								</div>
							</td>
							<td class="cart_total coll5">
							<input id="res3" class="cart_quantity_input champmain" type="text" name="quantity" value="0" autocomplete="off" size="2" disabled>
							
								<!-- <p class="cart_total_price">99,99euro</p> -->
							</td>
							
						</tr>
						
					
					</tbody>
					
					<tfoot>
						<tr class="cart_menu">
							<td class="coll1">A payer</td>
							<td class="coll2"></td>
							<td class="coll3"></td>
							<td class="coll4"></td>
							<td class="coll5">
							<input id="resT" class="cart_quantity_input" type="text" name="quantity" value="0" autocomplete="off" size="4" disabled>
							
							</td>
							<td></td>
						</tr>
						
					</tfoot>
					</table>
					
					<div id="btnachat">
							<a href="#" class="button">Passer au paiement</a>
						</div>
						
					
<div id="paiement">

<input id="btnp1" type="image" name="photo" src="images/paypal.png"></input>
<input id="btnp2" type="image" name="photo" src="images/pcheque2.png" onClick="javascript:pcheque()"></input>  
</div>
				</div>
				<div class="clear"></div>
			</div>

		</section>
	</div>

	<s:include value="footer.jsp"></s:include>

</body>


<script>

$(document).ready(function() {
	$("#paiement").hide();
	
	//$("#up1").click(function() {
		//var elem = document.getElementById('champ1').value;
		//document.getElementById('champ1').value="2";
		//document.getElementById("champ1").value = 12
		//elem.value = "2";
		//$("champ1").val("000000");
		//alert(document.getElementById("champ1").value);
	
//});
	
	$("#btnachat").click(function() {
		
		$("#paiement").show();
		//alert("coucou2");
	
});
	
	

});




</script>


</html>