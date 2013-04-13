<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<title>Business Adda</title>
	<script src="./javascript/commons.js" language="JavaScript"></script>
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  	
  	<link href="./themes/2/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="./themes/2/js-image-slider.js" type="text/javascript"></script>
    <link href="./css/generic.css" rel="stylesheet" type="text/css" />
  	
	<style>
		body{
			font-family: Verdana, Arial, Helvetica, sans-serif;
		}
		#top-div{
			/* background:#0066FF;*/
		    background:#000081 !important;
		    background: -moz-linear-gradient(top, #1E2121, #484a4a) !important;
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#1E2121), to( #484a4a)) !important;
		    
		    /*Making the shadow effect into the menu bar */
		    box-shadow: inset 1px 1px 21px #393939 !important;
		    -moz-box-shadow: inset 1px 1px 21px #393939 !important;
		    -webkit-box-shadow: inset 1px 1px 21px #393939 !important;
		    border-top-right-radius:10px;
		    border-top-left-radius:10px;
		}
		#header-div{
			width:auto;
			height:55px;
			border:none;			
		    border:0px solid #000;
		    color:#ffffff;
		    font-size:24px;
		    font-weight: bold;
		    border-top-right-radius:5px;
		    border-top-left-radius:5px;
		    margin-top:-10px;
		}
		
		#middle-div{
			width:auto;
			height:390px;
			border:none;
				    
		    color:#ffffff;
		    font-size:24px;
		    font-weight: bold;		
		}
		#login-div{
			width:auto;
			height:35px;
			border:none;
			margin-top: 0px;
			border-bottom-radius:3px;
		    
		    color:#ffffff;
		    font-size:14;
		    font-weight: normal;
		}
		
		.plain-div{
			width:100px;
			height:100px;
			background-color:#0389FF;
			border-radius:5px;
			color:#ffffff;
			font-size:30px;
			font-weight:bold;
			text-align:center;
			vertical-align:middle;
		}
		
		#bottom-div{
			/*Styling the background with fading effect*/
		    background:#FFFFFF !important;
		     
		  /*Making the shadow effect into the menu bar */
		    box-shadow: 1px 1px 21px #393939 inset;
		    border:none;
		}
		
		.regi-text{
		  	background-color: seashell;
		    border-radius: 5px;
		    color: #A4A4A4;
		    font-weight: bold;
		    height: 25px;
		    text-align: center;
		    width: 200px;
		}
		
		.login-text{
			background-color: seashell;
		    border-radius: 5px 5px 5px 5px;
		    color: #A4A4A4;
		    font-weight: bold;
		    height: 23px;
		    text-align: center;
		    width: 180px;
		}
		html > body div.bsap_1284446 a.adhere {
			height: 25px;
			width: 172px;
		}
		div.bsap_1284446 a.adhere {			
			line-height: 2;			
		}
		div.bsap_1284446 a.adhere {
			background: none repeat scroll 0 0 #E7E7E7;
			border: 1px solid #CCCCCC;
			color: #666666;
			font-size: 12px;
			font-weight: bold;
			text-align: center;
		}
		.bsap .red {
			background: none repeat scroll 0 0 #E42B2B !important;
		}
		.bsap .grn {
			background: none repeat scroll 0 0 #7cbf45 !important;
		}
		.bsap .ylw {
			background: none repeat scroll 0 0 #ffd000 !important;
		}
		.bsap .blu {
			background: none repeat scroll 0 0 #3fa0d1 !important;
		}
		.bsap .org {
			background: none repeat scroll 0 0 #E8670C !important;
		}
		.bsap .brn {
			background: none repeat scroll 0 0 #993333 !important;
		}
		.bsap .brn1 {
			background: none repeat scroll 0 0 #996600 !important;
		}
		div.bsap_1284446 a {
			line-height: 0%;
		}
		div.bsap_1284446 a {
			color: #888888;
			display: block;
			font-family: verdana,sans-serif;
			font-size: 11px;
			margin: 0;
			overflow: hidden;
			text-align: center;
			text-decoration: none;
		}
		
		.bsap a {
			border: 0 none !important;
			border-bottom-left-radius: 80px;
			border-top-right-radius: 80px;
			color: #EEEEEE !important;
			margin: 0 -55px 10px 0 !important;
			overflow: visible !important;
			padding: 4px !important;
			text-shadow: 1px 1px 1px #111111 !important;
			transition: all 0.2s ease 0s;
			float:left;
		}
		
		.bsap a:hover{			
			border-bottom-left-radius: 0px;
			border-top-right-radius: 0px;
			border-bottom-right-radius: 80px;
			border-top-left-radius: 80px;
			background: none repeat scroll 0 0 #a1acad !important;
		}
		.tryit{
			float:right;
			width:150px;
			height:25px;
			font-family: verdana,sans-serif;
			font-size: 11px;
			background-color:#FFCC99;
			font-weight:bold;
			margin-left:10px; 
			color: #FF4242;
			margin-right: 60px;			
			border-radius:5px !important;
		}
		
	</style>
	<script type="text/javascript">
		var loginFormFlag = true;
		var regFormFlag = true;
		function toggleLoginForm(){
			//$("#login-form-div").toggle("slow");
			if(loginFormFlag){
				$("#login-form-div").show("slide", { direction: "right" }, 1000);
				$("#hideRegFormId").show();
				$("#showRegFormId").hide();
				loginFormFlag = false;
			}else{
				$("#login-form-div").hide("slide", { direction: "right" }, 1000);
				$("#hideRegFormId").hide();
				$("#showRegFormId").show();
				loginFormFlag = true;				
			}
		}
		function toggleRegistrationForm(){
			//$("#login-form-div").toggle("slow");
			if(regFormFlag){
				$("#login-form-div1").show("slide", { direction: "up" }, 1000);
				$("#video-div").hide();
				regFormFlag = false;
			}else{
				$("#login-form-div1").hide("slide", { direction: "up" }, 1000);
				$("#video-div").show();
				regFormFlag = true;				
			}
		}
		
		// Javascript: removes Default text when textbox is focused.
		$(document).ready(function(){
			$('input[class=regi-text]').focus(function () {
				if ($(this).val() == $(this).attr("title")) {
					$(this).val("");
				}
			}).blur(function () {
				if ($(this).val() == "") {
					$(this).val($(this).attr("title"));
				}
			});
			
			$('input[class=login-text]').focus(function () {
				if ($(this).val() == $(this).attr("title")) {
					$(this).val("");
				}
			}).blur(function () {
				if ($(this).val() == "") {
					$(this).val($(this).attr("title"));
				}
			});
		});
	</script>
	<script type="text/javascript">
        imageSlider.thumbnailPreview(function (thumbIndex) { return "<img src='./images/" + (thumbIndex + 1) + ".GIF' style='width:70px;height:44px;' />"; });
    </script>
	</head>
	<body>
		<div id="main-div" style="width:auto;height:800px;border-radius: 5px;">
			<div id="top-div">
		  		<div id="header-div">
		  			<div style="margin-top:10px;">&nbsp;&nbsp;Business Adda</div>
		  		</div>
		  		<div style="margin-left:316px		;">
					<div id="bsap_1284446" class="bsap_1284446 bsap" style="float:left">
						<a class="adhere red odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">Home</a>
						<a class="adhere grn odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">Features</a>
						<a class="adhere ylw odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">FAQs</a>
						<a class="adhere blu odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">Pricing</a>
						<a class="adhere org odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">Blog</a>
						<a class="adhere brn odd" target="_blank" title="Advertise Here" href="http://buysellads.com/buy/detail/65360/zone/1284446?utm_source=site_65360&utm_medium=website&utm_campaign=adhere&utm_content=zone_1284446">Live Support</a>
						<a class="adhere brn1 odd" target="_blank" href="javascript:toggleRegistrationForm();">Try It Yourself</a>
					</div>
					<!-- <div class="tryit">
						<a style="text-decoration: normal;" href="javascript:toggleRegistrationForm();">Try It Yourself</a>
					</div> -->		
				</div>
		  		<div id="middle-div">
		  			<div style="float:left;width:100%;height:330px;">
		  				<!-- <img style="margin-top:-9px;border-radius:10px;" width="931px" height="345px" src="./images/2.GIF"/> -->
		  				<!-- <div id="sliderFrame">
					        <div id="slider">
					            <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
					                <img src="./images/1.GIF" alt="#cap1" style="width:300px !important;height:300px !important;"/>
					            </a>
					            <img src="./images/2.GIF" alt="Lorem ipsum dolor sit amet" style="width:300px !important;height:300px !important;"/>
					            <img src="./images/3.GIF" alt="Pure Javascript. No jQuery. No flash." style="width:300px !important;height:300px !important;"/>
					            <img src="./images/4.GIF" alt="#cap2" style="width:300px !important;height:300px !important;"/>
					            <img src="./images/5.GIF" alt="Excepteur sint occaecat cupidatat" style="width:300px !important;height:300px !important;"/>
					        </div>
					        <div style="display: none;">
					            <div id="cap1">
					                Welcome to <a href="http://www.menucool.com/">Menucool.com</a>.
					            </div>
					            <div id="cap2">
					                <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
					            </div>
					        </div>
					    </div> -->
					    <div id="sliderFrame" style="height:300px;">
					        <div id="slider">
					            <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
					                <img src="./images/1.GIF" alt="#cap1" style="width:300px !important;height:300px !important;"/>
					            </a>
					            <img src="./images/2.GIF" alt="Lorem ipsum dolor sit amet" style="width:300px !important;height:300px !important;"/>
					            <img src="./images/3.GIF" alt="Pure Javascript. No jQuery. No flash." style="width:300px !important;height:300px !important;"/>
					            <img src="./images/4.GIF" alt="#cap2" style="width:300px !important;height:300px !important;"/>
					        </div>
					        <!--thumbnails-->
					        <div id="thumbs">
					            <div class="thumb">
					                <div class="frame"><img src="./images/1.GIF" /></div>
					                <div class="thumb-content"><p>HTML Content</p>Thumbnails allows any HTML content</div>
					                <div style="clear:both;"></div>
					            </div>
					            <div class="thumb">
					                <div class="frame"><img src="./images/2.GIF" /></div>
					                <div class="thumb-content"><p>Customizable</p>Thumbnail style is customizable</div>
					                <div style="clear:both;"></div>
					            </div>
					            <div class="thumb">
					                <div class="frame"><img src="./images/3.GIF" /></div>
					                <div class="thumb-content"><p>Variety of Layouts</p>Just a CSS tweak.</div>
					                <div style="clear:both;"></div>
					            </div>
					            <div class="thumb">
					                <div class="frame"><img src="./images/4.GIF" /></div>
					                <div class="thumb-content"><p>Integration</p>Built-in functions for the thumbnails</div>
					                <div style="clear:both;"></div>
					            </div>
					        </div>	  			
		  			</div>
		  			<!-- <div style="float:left;width:0.25%;height:330px;border-radius:5px;margin-top: -1px;"></div> -->
		  			<div id="login-form-div1" align="center" style="float:left;margin-left:160px; margin-top: 20px;width:width:29.5%;display:none;">
		  				<form method="POST" action="reg.htm">
			  				<input class="regi-text" type="text" value="First Name" title="First Name"/><br/><br/>
			  				<input class="regi-text" type="text" value="Last Name" title="Last Name"/><br/><br/>
			  				<input class="regi-text" type="text" value="Email" title="Email"/><br/><br/>
			  				<input class="regi-text" type="password" value="Password" title="Password"/><br/><br/>
			  				<input class="regi-text" type="text" value="Phone" title="Phone"/><br/><br/>
			  				<input style="border-radius:3px;width:80px;height:30px;" type="submit" value="Sign Up" title="Sign Up"/>
			  			</form>
		  			</div>
		  			<!-- <div id="video-div" style="z-index:-1;float:left;width:29.5%;margin-top: -1px;">
		  				<img width="396px" height="340px" src="./images/v.GIF" style="margin-top: 0px;">
		  			</div> -->
		  			</div>
		  		</div>
		  		<div id="login-div">
		  			<div id="login-form-div-1" style="float:left; margin-top: 10px;width:20%;">
		  			</div>
		  			<div id="login-form-div" style="float:left; margin-top: 4px;width:60%;display:none">
		  				<form method="POST" action="login.htm">
			  				&nbsp;&nbsp;&nbsp;&nbsp;<input id="username" name="username" class="login-text" type="text" value="Username" title="Username"/>&nbsp;&nbsp;
			  				<input id="password" name="password" class="login-text" type="password" value="Password" title="Password"/>&nbsp;&nbsp;
			  				<input style="border-radius:80px;width:50px;height:22px;" type="submit" value="Go" />
		  				</form>
		  			</div>
		  			<div style="float:right; margin-top: 4px;margin-right:10px;width:100px"><img id="hideRegFormId" style="display:none;margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/rarrw.gif" onclick="javascript:toggleLoginForm();" />
		  				<img id="showRegFormId" style="margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/larrw.gif" onclick="javascript:toggleLoginForm();" />
		  				<p style="float: right;margin-top: 2px;margin-left:4px;">Sign&nbsp;In</p>
		  			</div>
		  		</div>
		  		<div align="center" id="bottom-div" >
		  			<div style="float:left;width:10%">
		  				<div style="height: 245px;margin-top: 0px;width: 5px;background:#F2B6FF;border-radius:3px;"></div>
		  			</div>
		  			<div style="float:left;width:80%">
			  			<table style="margin-left:50px;" align="center" width="100%">
			  				<tr>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb1.jpg"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb2.jpg"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb3.jpg"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb4.jpg"/></td>
			  				</tr>
			  				<tr>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb5.png"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb6.jpg"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb7.jpg"/></td>
			  					<td><img class="plain-div" src="./images/thumbnails/thumb8.jpg"/></td>
			  				</tr>
			  			</table>
		  			</div>
		  			<div style="float:left;width:10%">
		  				<div style="height: 245px;margin-top: 0px;width: 5px;background:#F2B6FF;border-radius:3px;"></div>
		  			</div>
		  		</div>
	  		</div>	  		
	  	</div>
	</body>
</html>
