<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Clients</title>
    <meta charset="utf-8">
    <s:include value="cssjs.jsp"></s:include>

</head>
<body>
  <div class="main">
  <!--==============================header=================================-->
		<s:include value="wrapheader.jsp"></s:include>
  <!--==============================content================================-->
    <section id="content">
        <div class="container_12">	
          <div class="grid_12">
            <div class="wrap pad-3">
                <div class="block-5">
                    <h3>Liste Des Universités Partenaires</h3>
                     <ul class="list-1">
                    	<li><a href="#">L'Université Harvard</a></li>
                        <li><a href="#">Le MIT, Massachusetts Institute of Technology</a></li>
                        <li><a href="#">L'Université Stanford</a></li>
                        <li><a href="#">Le California Institute of Technology</a></li>
                        <li><a href="#">L'université Columbia</a></li>
                        <li><a href="#">L'Université Oxford</a></li>
                        <li><a href="#">Paris Sorbonne</a></li>
                        <li><a href="#">L'Université de Cambridge</a></li>
                        <li><a href="#">L'Université Paris Saclay</a></li>
                        <li><a href="#">École Polytechnique</a></li>
                        <li><a href="#">Ecole Normale Supérieure de Lyon</a></li>
                    </ul>
                </div>
                <div class="block-6">
                    <h3 class="p6">Des Professeurs Qualifiés</h3>
                    <div class="wrap">
                    	<img src="images/page5-img1.jpg" alt="" class="img-border img-indent-2">
                        <div class="extra-wrap">
                         
                            <p class="p6">Tous les professeurs, quelques soit leur niveau d'enseignement, sont séléctionnés par nos soins. </p>
                    	</div>
                    	<p class="p1">Ils viennent des universités les plus cotés et les préstigieuses, et sont donc, par conséquent, les plus aptes a vous soutenir, a vous encadrer, a vous accompagner pendant toute votre scolarité. Mettez toutes les chances de votre cotés et rejoignez nous !</p>
                    	<a href="#" class="button">Plus</a>
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
                        <h3 class="p5">Mais aussi quelques plateformes partenaires</h3>
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