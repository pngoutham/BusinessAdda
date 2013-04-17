<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="./themes/2/js-image-slider.css" rel="stylesheet"
	type="text/css" />
<script src="./themes/2/js-image-slider.js" type="text/javascript"></script>
<link href="./css/generic.css" rel="stylesheet" type="text/css" />
<style>
	.thumb-data{
		background:#BF5D9B;
		border-radius: 80px 80px 0px 0px !important;
		width:115px;height:25px;
		box-shadow: 1px 1px 11px #FFFFFF inset !important;
		-moz-box-shadow: 1px 1px 11px #FFFFFF inset !important;
		-webkit-box-shadow: 1px 1px 11px #FFFFFF inset !important;
	}
	.thumb-text{
		position: relative;
		text-decoration: none;
		top: 5px;
		font-weight:bold;
		color:#000000;
	}
	#thumbs{
		width:293px;
	}
	#thumbs .thumb{
		height:52px;
	}
	#thumbs .thumb-content {
	    width: 115px;
	}
</style>
</head>
<body>
	<div id="sliderFrame" style="width:1103px;height:300px;border-radius: 0px 0px 5px 5px;">
		<div id="slider">


			<img src="./images/gaosmall.gif" alt="#cap1"
				style="width: 300px !important; height: 300px !important;" /> <img
				src="./images/2.GIF" alt="Lorem ipsum dolor sit amet"
				style="width: 300px !important; height: 300px !important;" /> <img
				src="./images/3.GIF" alt="Pure Javascript. No jQuery. No flash."
				style="width: 300px !important; height: 300px !important;" /> <img
				src="./images/4.GIF" alt="#cap2"
				style="width: 300px !important; height: 300px !important;" />
		</div>
		<!--thumbnails-->
		<div id="thumbs">
			<div class="thumb">
				<div class="frame">
					<img src="./images/gaosmall.gif" />
				</div>
				<div class="thumb-content">
					<p><div class="thumb-data"><a id="signUpId" class="thumb-text" href="javascript:createPopup();">Sign&nbsp;Up</a></div></p>
					Sign up for free.
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="thumb">
				<div class="frame">
					<img src="./images/2.GIF" />
				</div>
				<div class="thumb-content">
					<p><div class="thumb-data"><a id="signInId" class="thumb-text" href="javascript:createPopup();">Sign&nbsp;In</a></div></p>
					Sign In and Create your Web site easily.
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="thumb">
				<div class="frame">
					<img src="./images/3.GIF" />
				</div>
				<div class="thumb-content">
					<p><div class="thumb-data"><a id="chooseTempId" class="thumb-text" href="javascript:createPopup();">Choose Template</a></div></p>
					Choose your template that suits you firm.
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="thumb">
				<div class="frame">
					<img src="./images/4.GIF" />
				</div>
				<div class="thumb-content">
					<p><div class="thumb-data"><a id="custId" class="thumb-text" href="javascript:createPopup();">Customize</a></div></p>
					Customize the template according to you.
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
</body>
</html>