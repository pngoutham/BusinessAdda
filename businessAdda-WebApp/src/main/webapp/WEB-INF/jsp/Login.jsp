<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<link href="./javascript/jquery/development-bundle/themes/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css"/>
  	<script src="./javascript/jquery/js/jquery-1.4.2.min.js"></script>
  	<script src="./javascript/jquery/development-bundle/ui/jquery-ui-1.7.2.custom.js"></script>

	<style type="text/css">
		#login-div-inline{
			width:1142px;
			height:35px;
			border-bottom-radius:5px;
		    font-size:12;
		    font-weight: normal;
		    border-bottom: 1px solid #CCCCCC;
    		box-shadow: 0 0 5px #BBBBBB;
    		background: -moz-linear-gradient(top, #CCCCCC, #3A4DB4);
    		border-radius:5px;
		}
		.login-text{
			background-color: seashell;
		    border-radius: 5px 5px 5px 5px;
		    color: #A4A4A4;
		    font-weight: bold;
		    height: 50px;
		    text-align: center;
		    width: 350px;
		}
		
		.loginName {
			float: right;
			font-family:'Comic Sans MS',Arial,Helvetica,sans-serif;
			font-size:14px;
			font-weight: bold;
			margin-top: 2px;
			margin-left:4px;
			margin-right:4px;
		    text-shadow: 2px 2px 2px #000000, 2px 2px 4px #FFFFFF;
		}
		
		.goBtn {
			background: none repeat scroll 0 0 #BF5D9B;
 			border-radius: 80px 80px 0 0 !important;
    		box-shadow: 1px 1px 1px #FFFFFF inset !important;
    		font-family: Verdana,Arial,Helvetica,sans-serif;
    		font-size: 11px;
    		font-weight: bold;
    		width:140px;
    		height:40px;
		}
	</style>
	<script type="text/javascript">
		var loginFormFlag = true;
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
		
		// Javascript: removes Default text when textbox is focused.
		$(document).ready(function(){
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
	<div id="" align="center">
	<br/><br/><br/>
		<form method="POST" action="login.htm">
			<input id="username" name="username" class="login-text" type="text" value="Username" title="Username"/><br/><br/>
			<input id="password" name="password" class="login-text" type="password" value="Password" title="Password"/><br/><br/>
			<input class="goBtn" type="submit" value="Login" />
		</form>
 		<!-- <div style="float:left; margin-top: 4px;margin-right:50%"> </div>
		<div id="login-form-div" style="float:left; margin-top: 4px;margin-right:45% width:90%; display:none">
			<form method="POST" action="login.htm">
				&nbsp;&nbsp;&nbsp;&nbsp;<input id="username" name="username" class="login-text" type="text" value="Username" title="Username"/>&nbsp;&nbsp;
				<input id="password" name="password" class="login-text" type="password" value="Password" title="Password"/>&nbsp;&nbsp;
				<input class="goBtn" type="submit" value="Go" />
			</form>
		</div>
		<div style="float:right; margin-top: 4px;margin-right:20px;width:100px" style="width:10%"><img id="hideRegFormId" style="display:none;margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/rarrw.gif" onclick="javascript:toggleLoginForm();" />
			<img id="showRegFormId" style="margin-left:10px; color: #FFCC99;font-weight:bold;text-decoration: none;cursor:pointer;" src="./images/larrw.gif" onclick="javascript:toggleLoginForm();" />
			<p class="loginName">Sign&nbsp;In</p>
		</div> -->
	</div>
</body>
</html>