<!DOCTYPE html>
<html lang="en">
<head>
    <title>Clients</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
    <link href='http://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
    	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
</head>
<body>
  <div class="main">
  <!--==============================header=================================-->
   
  
     <header>
        <h1><a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </h1>
        <section class="header-login">
        <form name="login" action="index_submit" method="get" accept-charset="utf-8">
        <ul>
       <li><a href="espaceperso.jsp">Espace Personnel</a></li>
       <li><a href="../index.jsp">Se déconnecter</a></li>
     <!-- <li><button type="submit"><img> Text</button></li>
       <li class="header-panier"><a href="index.jsp"></a></li>-->
       <li class="header-panier"><a href="panier.jsp"><img src="images/PAnier.png" alt=""></a></li>
       
       
       
       <div id="loginmodal" style="display:none;">
       <center>
       <h1>Entrez Vos Identifiants</h1>
       </center>
       <br>
      
       <form id="loginform" name="loginform" method="post" action="index.jsp">
       
       <label for="username">Email:</label>
       <input type="text" name="username" id="username" class="txtfield" tabindex="1">
       
       <label for="password">Mot de passe:</label>
       <input type="password" name="password" id="password" class="txtfield" tabindex="2">
       
       <br>
       <center>
       <div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Se Connecter" tabindex="3"></div>
       </center>
       </form>
       </div>
       <script type="text/javascript">
       $(function(){
       $('#loginform').submit(function(e){
       return false;
       });
       
       $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
       });
       </script>

        
        
        
        
        
        </ul>
        </form>
        </section>
        
        <div class="clear"></div>    
        <nav class="box-shadow">
            <div>
                <ul class="menu">
                    <li class="home-page current"><a href="index.jsp"><span></span></a></li>
                    <li><a href="aboutL.jsp">À Propos De Nous</a></li>
                    <li><a href="servicesL.jsp">Nos Offres</a></li>
                    <li><a href="clientsL.jsp">Nos Partenaires</a></li>
                    <li><a href="contactsL.jsp">Contacts</a></li>
                </ul>
                <div class="social-icons">
                    <span>Nous suivre:</span>
                    <a href="#" class="icon-3"></a>
                    <a href="#" class="icon-2"></a>
                    <a href="#" class="icon-1"></a>
                </div>
                <div class="clear"></div>
            </div>
        </nav>
    </header>  
  <!--==============================content================================-->
        
       
            <div>
            
                
                <center>
            <h1>Quelle type d'inscription souhaitez-vous:</h1>
            <br>
             <br>
                <ul class="segmented-control">
                
  

    
    
    <li id="prof"><a href="#prof" onclick="bascule('boite');">Professeur</a></li>
    <li id="eleve"><a href="#eleve" onclick="bascule2('boite','boite2')">Elève</a></li>
    </center>
    
</ul>


               <br>
                
               
               
           


<!--
    if (isset($_POST['test2'])) {

  include( "./contacts.html" );
}
else
{
  include( "./inscriptione.html" );
}

-->
<!--
<script type="text/javascript">
 
var c,c2, ch;
 
// ajouter un champ avec son "name" propre;
function prof(){
	
c=document.getElementById('cadre');
c2=c.getElementsByTagName('input');
ch=document.createElement('input');
 
ch.setAttribute('type','text');
ch.setAttribute('name','ch'+c2.length);
c.appendChild(ch);
 
document.getElementById('sup').style.display='inline';
}
 
// supprimer le dernier champ;
function eleve(){
if(c2.length>0){c.removeChild(c2[c2.length-1])}
if(c2.length==0){document.getElementById('sup').style.display='none'};
}
 
</script>


<form id="frm" action="">
<div id="cadre" style="margin-left:100px;width:200px">
</div>

</form>


           
        <input type="button" onClick="bascule('boite');" value="Poster un commentaire"> 
        -->
        


<!--<script src="http://max.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script> probleme capchata--> 
<script src="http://max.jotfor.ms/static/jotform.forms.js?3.2.4226" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.init(function(){
      $('input_13').hint('ex: myname@example.com');
      $('input_14').hint('ex: myname@example.com');
      JotForm.initCaptcha('input_7');
      JotForm.highlightInputs = false;
      JotForm.alterTexts({"alphabetic":"This field can only contain letters","alphanumeric":"This field can only contain letters and numbers.","confirmClearForm":"Are you sure you want to clear the form","confirmEmail":"E-mail does not match","email":"Enter a valid e-mail address","incompleteFields":"Please complete required (*) fields.","lessThan":"Your score should be less than","numeric":"This field can only contain numeric values","pleaseWait":"Please wait...","required":"This field is required.","uploadExtensions":"You can only upload following files:","uploadFilesize":"File size cannot be bigger than:"});
   });
</script>
<link href="http://max.jotfor.ms/static/formCss.css?3.2.4226" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="http://max.jotfor.ms/css/printForm.css?3.2.4226" />
<style type="text/css">
    .form-label-left{
        width:150px !important;
    }
    .form-line{
        padding-top:10px;
        padding-bottom:10px;
    }
    .form-label-right{
        width:150px !important;
    }
    .form-all{
		 position: relative; /* on positionne le conteneur */
  margin-left: auto;
  margin-right: auto;
        width:550px;
        color:#FFFFFF !important;
        font-family:'Verdana';
        font-size:12px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: #FFFFFF;
    }

    /* Injected CSS Code */
.form-all{
	
padding-top: 0;
}
.form-all *{
	
-moz-box-sizing: border-box;
-webkit-box-sizing: border-box;
box-sizing: border-box;
font-family:JennaSue, sans-serif;
}/*--label top styles--*/
.form-label-top, .form-label-left{
color:#ffffff !important;
}/*--remove focus border--*/
.form-textbox:focus, .form-textarea:focus{
outline: none;
}/*--form header style--*/
.form-all h3{
margin:0;
background:#57a700 url(http://cms.interlogy.com/uploads/image_upload/image_upload/global/6138_form_heading.gif) repeat-x;
color:#fff;
font-size:20px;
border:1px solid #57a700;
border-bottom:none;
margin-left: 1px;
}/*--mail icon--*/
.form-all h3 span{
display:block;
padding:10px 20px;
background:url(http://cms.interlogy.com/uploads/image_upload/image_upload/global/6139_form_ico.gif) no-repeat 93% 50%;
}/*--form section style--*/
.form-section{
	
border-radius:5px;
-webkit-border-radius:5px;
-moz-border-radius:5px;
margin:0;
border:1px;
border-top:3px solid #000;
background:#000 url(http://cms.interlogy.com/uploads/image_upload/image_upload/global/6142_form_top.gif) repeat-x;
}/*--textbox, textarea style--*/
.form-textbox, .form-textarea, .form-dropdown{
font-family:verdana;
width:100%;
border:1px solid #111;
background:#282828 url(http://cms.interlogy.com/uploads/image_upload/image_upload/global/6140_form_input.gif) repeat-x;
padding:5px 3px;
color:#fff;
}/*--form submit button style--*/
.form-submit-button{
padding:0 20px;
height:32px;
line-height:32px;
border:1px solid #70ad2e;
background:#5aae00 url(http://cms.interlogy.com/uploads/image_upload/image_upload/global/6141_form_button.gif) repeat-x;
color:#fff;
cursor:pointer;
text-align:center;
}/*--reduce form line--*/
.form-line{
padding:10px !important;
}/*--for html texts--*/
.form-html {
padding: 0px !important;
}/*--remove error message--*/
.form-error-message {
display: none !important;
}
.form-line-error {
background:none repeat scroll 0 0;
}/*--reduce error font size--*/
.form-button-error {
font-size: 11px !important;
}/*--fix captcha--*/
.form-captcha, .form-captcha:hover {
border:none;
background:none;
padding:0px !important;
}
.form-captcha-image {
border:0px;
background:none;
-moz-border-radius:0px !important;
-webkit-border-radius:0px !important;
border-radius:0px !important;
}/*--fix captcha box--*/
#input_7{
width:142px !important;
max-width:142px !important;
}/*--add red border on error--*/
.form-validation-error {
border: 1px solid red !important;
}span.form-sub-label-container+span.form-sub-label-container{
margin-right:0;
}
.form-address-city,
.form-address-line,
.form-address-postal,
.form-address-state,
.form-address-table .form-sub-label-container,
.form-address-table select{
width:100%;
}
table.form-address-table {
width: 100%;
}
.form-address-table td,.form-address-table th{
padding: 0 1px 18px;
}
.form-line {
width: 100%;
}
    /* Injected CSS Code */
</style>

<form class="jotform-form" action="http://submit.jotformeu.com/submit/43064433137348/" method="post" enctype="multipart/form-data" name="form_43064433137348" id="43064433137348" accept-charset="utf-8">
  <input type="hidden" name="formID" value="43064433137348" />
  <div class="form-all">
    <ul class="form-section">
      <li class="form-line" data-type="control_fullname" id="id_11">
        <label class="form-label form-label-top form-label-auto" id="label_11" for="input_11">
          Nom et prénom
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_11" class="form-input-wide">
          <span class="form-sub-label-container">
            <input class="form-textbox validate[required]" type="text" size="10" name="q11_nomEt11[first]" id="first_11" />
            <label class="form-sub-label" for="first_11" id="sublabel_first"> Prénom </label>
          </span>
          <span class="form-sub-label-container">
            <input class="form-textbox validate[required]" type="text" size="15" name="q11_nomEt11[last]" id="last_11" />
            <label class="form-sub-label" for="last_11" id="sublabel_last"> Nom de famille </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_10">
        <label class="form-label form-label-top form-label-auto" id="label_10" for="input_10"> Adresse </label>
        <div id="cid_10" class="form-input-wide">
          <table summary="" undefined class="form-address-table" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td colspan="2">
                <span class="form-sub-label-container">
                  <input class="form-textbox form-address-line" type="text" name="q10_adresse10[addr_line1]" id="input_10_addr_line1" />
                  <label class="form-sub-label" for="input_10_addr_line1" id="sublabel_10_addr_line1"> Adresse de la rue </label>
                </span>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <span class="form-sub-label-container">
                  <input class="form-textbox form-address-line" type="text" name="q10_adresse10[addr_line2]" id="input_10_addr_line2" size="46" />
                  <label class="form-sub-label" for="input_10_addr_line2" id="sublabel_10_addr_line2"> nom de rue ; 2ème ligne </label>
                </span>
              </td>
            </tr>
            <tr>
              <td width="50%">
                <span class="form-sub-label-container">
                  <input class="form-textbox form-address-city" type="text" name="q10_adresse10[city]" id="input_10_city" size="21" />
                  <label class="form-sub-label" for="input_10_city" id="sublabel_10_city"> Ville </label>
                </span>
              </td>
              <td>
                <span class="form-sub-label-container">
                  <input class="form-textbox form-address-state" type="text" name="q10_adresse10[state]" id="input_10_state" size="22" />
                  <label class="form-sub-label" for="input_10_state" id="sublabel_10_state"> État/Province </label>
                </span>
              </td>
            </tr>
            <tr>
              <td width="50%" function zip() {var iterator=Prototype.K,args=$A(arguments);if(Object.isFunction(args.last())) iterator=args.pop();var collections=[this].concat(args).map($A);return this.map(function(value,index){return iterator(collections.pluck(index));});}>
                <span class="form-sub-label-container">
                  <input class="form-textbox form-address-postal" type="text" name="q10_adresse10[postal]" id="input_10_postal" size="10" />
                  <label class="form-sub-label" for="input_10_postal" id="sublabel_10_postal"> Code Postal </label>
                </span>
              </td>
              <td>
                <span class="form-sub-label-container">
                  <select class="form-dropdown form-address-country" name="q10_adresse10[country]" id="input_10_country">
                    <option value="" selected> Merci de choisir </option>
                    <option value="United States"> United States </option>
                    <option value="Afghanistan"> Afghanistan </option>
                    <option value="Albania"> Albania </option>
                    <option value="Algeria"> Algeria </option>
                    <option value="American Samoa"> American Samoa </option>
                    <option value="Andorra"> Andorra </option>
                    <option value="Angola"> Angola </option>
                    <option value="Anguilla"> Anguilla </option>
                    <option value="Antigua and Barbuda"> Antigua and Barbuda </option>
                    <option value="Argentina"> Argentina </option>
                    <option value="Armenia"> Armenia </option>
                    <option value="Aruba"> Aruba </option>
                    <option value="Australia"> Australia </option>
                    <option value="Austria"> Austria </option>
                    <option value="Azerbaijan"> Azerbaijan </option>
                    <option value="The Bahamas"> The Bahamas </option>
                    <option value="Bahrain"> Bahrain </option>
                    <option value="Bangladesh"> Bangladesh </option>
                    <option value="Barbados"> Barbados </option>
                    <option value="Belarus"> Belarus </option>
                    <option value="Belgium"> Belgium </option>
                    <option value="Belize"> Belize </option>
                    <option value="Benin"> Benin </option>
                    <option value="Bermuda"> Bermuda </option>
                    <option value="Bhutan"> Bhutan </option>
                    <option value="Bolivia"> Bolivia </option>
                    <option value="Bosnia and Herzegovina"> Bosnia and Herzegovina </option>
                    <option value="Botswana"> Botswana </option>
                    <option value="Brazil"> Brazil </option>
                    <option value="Brunei"> Brunei </option>
                    <option value="Bulgaria"> Bulgaria </option>
                    <option value="Burkina Faso"> Burkina Faso </option>
                    <option value="Burundi"> Burundi </option>
                    <option value="Cambodia"> Cambodia </option>
                    <option value="Cameroon"> Cameroon </option>
                    <option value="Canada"> Canada </option>
                    <option value="Cape Verde"> Cape Verde </option>
                    <option value="Cayman Islands"> Cayman Islands </option>
                    <option value="Central African Republic"> Central African Republic </option>
                    <option value="Chad"> Chad </option>
                    <option value="Chile"> Chile </option>
                    <option value="People's Republic of China"> People's Republic of China </option>
                    <option value="Republic of China"> Republic of China </option>
                    <option value="Christmas Island"> Christmas Island </option>
                    <option value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </option>
                    <option value="Colombia"> Colombia </option>
                    <option value="Comoros"> Comoros </option>
                    <option value="Congo"> Congo </option>
                    <option value="Cook Islands"> Cook Islands </option>
                    <option value="Costa Rica"> Costa Rica </option>
                    <option value="Cote d'Ivoire"> Cote d'Ivoire </option>
                    <option value="Croatia"> Croatia </option>
                    <option value="Cuba"> Cuba </option>
                    <option value="Cyprus"> Cyprus </option>
                    <option value="Czech Republic"> Czech Republic </option>
                    <option value="Denmark"> Denmark </option>
                    <option value="Djibouti"> Djibouti </option>
                    <option value="Dominica"> Dominica </option>
                    <option value="Dominican Republic"> Dominican Republic </option>
                    <option value="Ecuador"> Ecuador </option>
                    <option value="Egypt"> Egypt </option>
                    <option value="El Salvador"> El Salvador </option>
                    <option value="Equatorial Guinea"> Equatorial Guinea </option>
                    <option value="Eritrea"> Eritrea </option>
                    <option value="Estonia"> Estonia </option>
                    <option value="Ethiopia"> Ethiopia </option>
                    <option value="Falkland Islands"> Falkland Islands </option>
                    <option value="Faroe Islands"> Faroe Islands </option>
                    <option value="Fiji"> Fiji </option>
                    <option value="Finland"> Finland </option>
                    <option value="France"> France </option>
                    <option value="French Polynesia"> French Polynesia </option>
                    <option value="Gabon"> Gabon </option>
                    <option value="The Gambia"> The Gambia </option>
                    <option value="Georgia"> Georgia </option>
                    <option value="Germany"> Germany </option>
                    <option value="Ghana"> Ghana </option>
                    <option value="Gibraltar"> Gibraltar </option>
                    <option value="Greece"> Greece </option>
                    <option value="Greenland"> Greenland </option>
                    <option value="Grenada"> Grenada </option>
                    <option value="Guadeloupe"> Guadeloupe </option>
                    <option value="Guam"> Guam </option>
                    <option value="Guatemala"> Guatemala </option>
                    <option value="Guernsey"> Guernsey </option>
                    <option value="Guinea"> Guinea </option>
                    <option value="Guinea-Bissau"> Guinea-Bissau </option>
                    <option value="Guyana"> Guyana </option>
                    <option value="Haiti"> Haiti </option>
                    <option value="Honduras"> Honduras </option>
                    <option value="Hong Kong"> Hong Kong </option>
                    <option value="Hungary"> Hungary </option>
                    <option value="Iceland"> Iceland </option>
                    <option value="India"> India </option>
                    <option value="Indonesia"> Indonesia </option>
                    <option value="Iran"> Iran </option>
                    <option value="Iraq"> Iraq </option>
                    <option value="Ireland"> Ireland </option>
                    <option value="Israel"> Israel </option>
                    <option value="Italy"> Italy </option>
                    <option value="Jamaica"> Jamaica </option>
                    <option value="Japan"> Japan </option>
                    <option value="Jersey"> Jersey </option>
                    <option value="Jordan"> Jordan </option>
                    <option value="Kazakhstan"> Kazakhstan </option>
                    <option value="Kenya"> Kenya </option>
                    <option value="Kiribati"> Kiribati </option>
                    <option value="North Korea"> North Korea </option>
                    <option value="South Korea"> South Korea </option>
                    <option value="Kosovo"> Kosovo </option>
                    <option value="Kuwait"> Kuwait </option>
                    <option value="Kyrgyzstan"> Kyrgyzstan </option>
                    <option value="Laos"> Laos </option>
                    <option value="Latvia"> Latvia </option>
                    <option value="Lebanon"> Lebanon </option>
                    <option value="Lesotho"> Lesotho </option>
                    <option value="Liberia"> Liberia </option>
                    <option value="Libya"> Libya </option>
                    <option value="Liechtenstein"> Liechtenstein </option>
                    <option value="Lithuania"> Lithuania </option>
                    <option value="Luxembourg"> Luxembourg </option>
                    <option value="Macau"> Macau </option>
                    <option value="Macedonia"> Macedonia </option>
                    <option value="Madagascar"> Madagascar </option>
                    <option value="Malawi"> Malawi </option>
                    <option value="Malaysia"> Malaysia </option>
                    <option value="Maldives"> Maldives </option>
                    <option value="Mali"> Mali </option>
                    <option value="Malta"> Malta </option>
                    <option value="Marshall Islands"> Marshall Islands </option>
                    <option value="Martinique"> Martinique </option>
                    <option value="Mauritania"> Mauritania </option>
                    <option value="Mauritius"> Mauritius </option>
                    <option value="Mayotte"> Mayotte </option>
                    <option value="Mexico"> Mexico </option>
                    <option value="Micronesia"> Micronesia </option>
                    <option value="Moldova"> Moldova </option>
                    <option value="Monaco"> Monaco </option>
                    <option value="Mongolia"> Mongolia </option>
                    <option value="Montenegro"> Montenegro </option>
                    <option value="Montserrat"> Montserrat </option>
                    <option value="Morocco"> Morocco </option>
                    <option value="Mozambique"> Mozambique </option>
                    <option value="Myanmar"> Myanmar </option>
                    <option value="Nagorno-Karabakh"> Nagorno-Karabakh </option>
                    <option value="Namibia"> Namibia </option>
                    <option value="Nauru"> Nauru </option>
                    <option value="Nepal"> Nepal </option>
                    <option value="Netherlands"> Netherlands </option>
                    <option value="Netherlands Antilles"> Netherlands Antilles </option>
                    <option value="New Caledonia"> New Caledonia </option>
                    <option value="New Zealand"> New Zealand </option>
                    <option value="Nicaragua"> Nicaragua </option>
                    <option value="Niger"> Niger </option>
                    <option value="Nigeria"> Nigeria </option>
                    <option value="Niue"> Niue </option>
                    <option value="Norfolk Island"> Norfolk Island </option>
                    <option value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </option>
                    <option value="Northern Mariana"> Northern Mariana </option>
                    <option value="Norway"> Norway </option>
                    <option value="Oman"> Oman </option>
                    <option value="Pakistan"> Pakistan </option>
                    <option value="Palau"> Palau </option>
                    <option value="Palestine"> Palestine </option>
                    <option value="Panama"> Panama </option>
                    <option value="Papua New Guinea"> Papua New Guinea </option>
                    <option value="Paraguay"> Paraguay </option>
                    <option value="Peru"> Peru </option>
                    <option value="Philippines"> Philippines </option>
                    <option value="Pitcairn Islands"> Pitcairn Islands </option>
                    <option value="Poland"> Poland </option>
                    <option value="Portugal"> Portugal </option>
                    <option value="Puerto Rico"> Puerto Rico </option>
                    <option value="Qatar"> Qatar </option>
                    <option value="Romania"> Romania </option>
                    <option value="Russia"> Russia </option>
                    <option value="Rwanda"> Rwanda </option>
                    <option value="Saint Barthelemy"> Saint Barthelemy </option>
                    <option value="Saint Helena"> Saint Helena </option>
                    <option value="Saint Kitts and Nevis"> Saint Kitts and Nevis </option>
                    <option value="Saint Lucia"> Saint Lucia </option>
                    <option value="Saint Martin"> Saint Martin </option>
                    <option value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </option>
                    <option value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </option>
                    <option value="Samoa"> Samoa </option>
                    <option value="San Marino"> San Marino </option>
                    <option value="Sao Tome and Principe"> Sao Tome and Principe </option>
                    <option value="Saudi Arabia"> Saudi Arabia </option>
                    <option value="Senegal"> Senegal </option>
                    <option value="Serbia"> Serbia </option>
                    <option value="Seychelles"> Seychelles </option>
                    <option value="Sierra Leone"> Sierra Leone </option>
                    <option value="Singapore"> Singapore </option>
                    <option value="Slovakia"> Slovakia </option>
                    <option value="Slovenia"> Slovenia </option>
                    <option value="Solomon Islands"> Solomon Islands </option>
                    <option value="Somalia"> Somalia </option>
                    <option value="Somaliland"> Somaliland </option>
                    <option value="South Africa"> South Africa </option>
                    <option value="South Ossetia"> South Ossetia </option>
                    <option value="Spain"> Spain </option>
                    <option value="Sri Lanka"> Sri Lanka </option>
                    <option value="Sudan"> Sudan </option>
                    <option value="Suriname"> Suriname </option>
                    <option value="Svalbard"> Svalbard </option>
                    <option value="Swaziland"> Swaziland </option>
                    <option value="Sweden"> Sweden </option>
                    <option value="Switzerland"> Switzerland </option>
                    <option value="Syria"> Syria </option>
                    <option value="Taiwan"> Taiwan </option>
                    <option value="Tajikistan"> Tajikistan </option>
                    <option value="Tanzania"> Tanzania </option>
                    <option value="Thailand"> Thailand </option>
                    <option value="Timor-Leste"> Timor-Leste </option>
                    <option value="Togo"> Togo </option>
                    <option value="Tokelau"> Tokelau </option>
                    <option value="Tonga"> Tonga </option>
                    <option value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </option>
                    <option value="Trinidad and Tobago"> Trinidad and Tobago </option>
                    <option value="Tristan da Cunha"> Tristan da Cunha </option>
                    <option value="Tunisia"> Tunisia </option>
                    <option value="Turkey"> Turkey </option>
                    <option value="Turkmenistan"> Turkmenistan </option>
                    <option value="Turks and Caicos Islands"> Turks and Caicos Islands </option>
                    <option value="Tuvalu"> Tuvalu </option>
                    <option value="Uganda"> Uganda </option>
                    <option value="Ukraine"> Ukraine </option>
                    <option value="United Arab Emirates"> United Arab Emirates </option>
                    <option value="United Kingdom"> United Kingdom </option>
                    <option value="Uruguay"> Uruguay </option>
                    <option value="Uzbekistan"> Uzbekistan </option>
                    <option value="Vanuatu"> Vanuatu </option>
                    <option value="Vatican City"> Vatican City </option>
                    <option value="Venezuela"> Venezuela </option>
                    <option value="Vietnam"> Vietnam </option>
                    <option value="British Virgin Islands"> British Virgin Islands </option>
                    <option value="Isle of Man"> Isle of Man </option>
                    <option value="US Virgin Islands"> US Virgin Islands </option>
                    <option value="Wallis and Futuna"> Wallis and Futuna </option>
                    <option value="Western Sahara"> Western Sahara </option>
                    <option value="Yemen"> Yemen </option>
                    <option value="Zambia"> Zambia </option>
                    <option value="Zimbabwe"> Zimbabwe </option>
                    <option value="other"> Autre </option>
                  </select>
                  <label class="form-sub-label" for="input_10_country" id="sublabel_10_country"> pays </label>
                </span>
              </td>
            </tr>
          </table>
        </div>
     
        
        
      </li>
 <li class="form-line" data-type="control_email" id="id_13">
        <label class="form-label form-label-top form-label-auto" id="label_13" for="input_13">
          Email
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_13" class="form-input-wide">
          <input type="email" class=" form-textbox validate[required, Email]" id="input_13" name="q13_email13" size="30" value="" />
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_14">
        <label class="form-label form-label-top form-label-auto" id="label_14" for="input_14">
          Confirmer Votre Email
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_14" class="form-input-wide">
          <input type="email" class=" form-textbox validate[required, Email]" id="input_14" name="q14_confirmerVotre" size="30" value="" />
        </div>
      </li>
      
      
      <li class="form-line" data-type="control_textbox" id="id_17">
<label class="form-label form-label-top form-label-auto" id="label_17" for="input_17">
Choisissez un mot de passe
<span class="form-required">
*
</span>
</label>
<div id="cid_17" class="form-input-wide">
<input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_17" name="q17_choisissezUn" size="20" value="" />
</div>
</li>

<div name="boite" id="boite" style="visibility: hidden"> 
      <li class="form-line" data-type="control_radio" id="id_15">
        <label class="form-label form-label-top form-label-auto" id="label_15" for="input_15">
          Niveau d'enseignement
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_15" class="form-input-wide">
          <div class="form-single-column">
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_0" name="q15_niveauDenseignement" value="Collège" />
              <label for="input_15_0"> Collège </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_1" name="q15_niveauDenseignement" value="Lycée" />
              <label for="input_15_1"> Lycée </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_2" name="q15_niveauDenseignement" value="Université" />
              <label for="input_15_2"> Université </label>
            </span>
            <span class="clearfix">
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_dropdown" id="id_9">
        <label class="form-label form-label-top form-label-auto" id="label_9" for="input_9"> Spécialité </label>
        <div id="cid_9" class="form-input-wide">
          <select class="form-dropdown" style="width:150px" id="input_9" name="q9_specialite">
            <option value="">  </option>
            <option value="Mathématique"> Mathématique </option>
            <option value="Français"> Français </option>
            <option value="Physique"> Physique </option>
            <option value="Chimie"> Chimie </option>
          </select>
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_4">
        <label class="form-label form-label-top form-label-auto" id="label_4" for="input_4">
          Vos Motivations
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_4" class="form-input-wide">
          <textarea id="input_4" class="form-textarea validate[required]" name="q4_vosMotivations" cols="30" rows="10"></textarea>
        </div>
      </li>
      <li class="form-line" data-type="control_fileupload" id="id_8">
        <label class="form-label form-label-top form-label-auto" id="label_8" for="input_8">
          Charger ici votre CV
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_8" class="form-input-wide">
          <input class="form-upload validate[required]" type="file" id="input_8" name="q8_chargerIci" file-accept="pdf, doc, docx, xls, xlsx, csv, txt, rtf, html, zip, mp3, wma, mpg, flv, avi, jpg, jpeg, png, gif" file-maxsize="1024" file-limit="0" />
        </div>
      </li>
      <li class="form-line" data-type="control_captcha" id="id_7">
        <label class="form-label form-label-top form-label-auto" id="label_7" for="input_7">
          Entrer le message suivant
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_7" class="form-input-wide">
          <div class="form-captcha">
            <label for="input_7"> <img alt="Captcha - Reload if it's not displayed" id="input_7_captcha" class="form-captcha-image" style="background:url(http://max.jotfor.ms/images/loader-big.gif) no-repeat center;" src="http://max.jotfor.ms/images/blank.gif" width="150" height="41" /> </label>
            <div style="white-space:nowrap;">
              <input type="text" id="input_7" class="form-textbox validate[required]" name="captcha" style="width:130px;" />
              <img src="http://max.jotfor.ms/images/reload.png" alt="Reload" align="absmiddle" style="cursor:pointer" onclick="JotForm.reloadCaptcha('input_7');" />
              <input type="hidden" name="captcha_id" id="input_7_captcha_id" value="0" />
            </div>
          </div>
        </div>
      </li>
      </div>
      
      
      <!--==============================eleve=================================-->
      
      
      <div name="boite2" id="boite2" style="visibility: hidden">
      </div>
      
      
      <li class="form-line" data-type="control_radio" id="id_15">
        <label class="form-label form-label-top form-label-auto" id="label_15" for="input_15">
          Niveau scolaire
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_15" class="form-input-wide">
          <div class="form-single-column">
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_0" name="q15_niveauDenseignement" value="Collège" />
              <label for="input_15_0"> Collège </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_1" name="q15_niveauDenseignement" value="Lycée" />
              <label for="input_15_1"> Lycée </label>
            </span>
            <span class="clearfix">
            </span>
            <span class="form-radio-item" style="clear:left;">
              <input type="radio" class="form-radio validate[required]" id="input_15_2" name="q15_niveauDenseignement" value="Université" />
              <label for="input_15_2"> Université </label>
            </span>
            <span class="clearfix">
            </span>
          </div>
        </div>
      </li>
      
      
      
      
      
      
      
      <li class="form-line" data-type="control_button" id="id_5">
        <div id="cid_5" class="form-input-wide">
          <div style="text-align:left" class="form-buttons-wrapper">
            <!--<button id="input_5" type="submit" class="form-submit-button">
              envoyer
            </button>-->
            <center>
            <a href="#" class="button">Valider</a>
          </center>
         
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <input type="hidden" id="simple_spc" name="simple_spc" value="43064433137348" />
  <script type="text/javascript">
  document.getElementById("si" + "mple" + "_spc").value = "43064433137348-43064433137348";
  </script>
</form>
 








            
              
                <br>
            </div>
        </div>
        
   
<!--==============================footer=================================-->
    <footer>
        <p>© 2012 Global</p>
        <p>Website template by <a href="http://www.templatemonster.com/" target="_blank" rel="nofollow">www.templatemonster.com</a></p>
    </footer>	    
</body>
</html>