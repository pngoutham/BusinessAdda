<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<title>Business Adda</title>
	<script src="./javascript/commons.js" language="JavaScript"></script>
	<script type="text/javascript" src="classpath:javascript/commons.js"></script>
	<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	<style>
		body{
			font-family: Verdana, Arial, Helvetica, sans-serif;
		}
		#header-div{
			width:auto;
			height:55px;
			border:none;
			/*Styling the background with fading effect*/
		   /* background:#0066FF;*/
		    background:#000081;
		    /*background: -moz-linear-gradient(top, #0066FF, #0066FF);
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0066FF), to( #0066FF));*/
		    background: -moz-linear-gradient(top, #000081, #6283EA);
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#000081), to( #6283EA));
		    
		    /*Making the shadow effect into the menu bar */
		    box-shadow: inset 1px 1px 21px #393939;
		    -moz-box-shadow: inset 1px 1px 21px #393939;
		    -webkit-box-shadow: inset 1px 1px 21px #393939;
		    border:1px solid #000;
		    color:#ffffff;
		    font-size:24px;
		    font-weight: bold;
		    border-radius: 5px;
		}
		
		#middle-div{
			width:auto;
			height:350px;
			border:none;
			/*Styling the background with fading effect*/
		    background:#88dcfc;
		    background: -moz-linear-gradient(bottom , #88DCFC, #A7A7A7);
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#88DCFC), to( #A7A7A7));
		     
		  /*Making the shadow effect into the menu bar */
		    box-shadow: inset 1px 1px 10px #FFFFFF;
		    -moz-box-shadow: inset 1px 1px 10px #FFFFFF;
		    -webkit-box-shadow: inset 1px 1px 10px #FFFFFF;
		    border:none;
		    
		    color:#ffffff;
		    font-size:24px;
		    font-weight: bold;		
		}
		#login-div{
			width:auto;
			height:40px;
			border:none;
			/*Styling the background with fading effect*/
		    background:#630C78;
		    background: -moz-linear-gradient(top, #630C78, #6082E9);
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#630C78), to( #630C78));
		     
		  /*Making the shadow effect into the menu bar */
		    box-shadow: inset 1px 1px 10px #FFFFFF;
		    -moz-box-shadow: inset 1px 1px 10px #FFFFFF;
		    -webkit-box-shadow: inset 1px 1px 10px #FFFFFF;
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
		#menu{
		    /*Styling the menu width and height*/
		    list-style:none;
		    margin:-1px auto 0px auto;
		    width:auto;
		    height:35px;
		    padding:0px 20px 0px 20px;
		     
		  /* Creating the curved corner of the border*/
		    border-radius:1px;
		    -moz-border-radius:1px;
		    -webkit-border-radius:1px;
		 
		  /*Styling the background with fading effect*/
		    background:#0066FF;
		    background: -moz-linear-gradient(top, #630C78, #6082E9);
		    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#630C78), to( #6082E9));
		     
		  /*Making the shadow effect into the menu bar */
		    box-shadow: inset 1px 1px 10px #FFFFFF;
		    -moz-box-shadow: inset 1px 1px 10px #FFFFFF;
		    -webkit-box-shadow: inset 1px 1px 10px #FFFFFF;
		    border:none;
		     
		     
		}
		#menu li /*Styling the li part of the menu*/
		{
		    float:left;
		    padding:4px 10px 4px 10px;
		    display: block;
		    position:relative;
		    text-align: left;
		    margin-right:36px;
		    margin-top:7px;
		    border-right:1px solid #ffffff;
		    
		    /*color:#CCCCCC;*/
		     
		}
		 
		#menu li a /*Styling the link part of the menu li*/
		{
		    text-decoration:none;
		    color: #FFFFFF;
    		font-size: 11px;
		    text-shadow:1px 1px 10px #FFCC99;
		    margin-right: 36px;
		}
		#menu li:hover a /*Styling the link part of the menu li in hover state*/
		{
		    color:#999999;
		    text-shadow:1px 1px 10px #CCC;
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
	</head>
	<body>
		<div id="main-div" style="width:auto;height:800px;border-radius: 5px;">
	  		<div id="header-div">
	  			<div style="margin-top:10px;">&nbsp;&nbsp;Business Adda</div>
	  		</div>
	  		<div id="menu-div">
		  		<ul id="menu">
					<li><a href="home.htm">Home</a></li>
					<li><a href="#">Features</a></li>
					<li><a href="#">FAQs</a></li>
					<li><a href="#">Pricing</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">LiveSupport</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
					<li style="width:117px;border-right:none;background-color:#FFCC99;border-radius:5px;font-weight:bold;"><a style="margin-left:10px; color: #FF4242;margin-left: 10px;text-decoration: underline;" href="javascript:toggleRegistrationForm();">Try It Yourself</a></li>
				</ul>
	  		</div>
	  		<div id="middle-div">
	  			<div style="float:left;width:70%;height:330px;"><img style="margin-top:5px;border-radius:10px;" width="931px" height="345px" src="./images/2.GIF"/></div>
	  			<div style="float:left;width:0.25%;height:330px;border-radius:5px;margin-top: 12px;"></div>
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
	  			<div id="video-div" style="z-index:-1;float:left;width:29.5%;margin-top: 12px;">
	  				<img width="396px" height="345px" src="./images/v.GIF" style="margin-top: -8px;">
	  			</div>
	  		</div>
	  		<div id="login-div">
	  			<div id="login-form-div-1" style="float:left; margin-top: 10px;width:20%;">
	  			</div>
	  			<div id="login-form-div" style="float:left; margin-top: 10px;width:60%;display:none">
	  				<form method="POST" action="login.htm">
		  				&nbsp;&nbsp;&nbsp;&nbsp;<input id="username" name="username" class="login-text" type="text" value="Username" title="Username"/>&nbsp;&nbsp;
		  				<input id="password" name="password" class="login-text" type="password" value="Password" title="Password"/>&nbsp;&nbsp;
		  				<input style="border-radius:3px;width:50px;height:24px;" type="submit" value="Go" />
	  				</form>
	  			</div>
	  			<div style="float:right; margin-top: 10px;"><img id="hideRegFormId" style="display:none;margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/rarrw.gif" onclick="javascript:toggleLoginForm();" />
	  			<img id="showRegFormId" style="margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/larrw.gif" onclick="javascript:toggleLoginForm();" /><p style="float: right;margin-top: 2px">&nbsp;&nbsp;Sign In&nbsp;&nbsp;</p>
	  			
	  			</div>
	  		</div>
	  		<br/><br/>
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
	</body>
</html>
