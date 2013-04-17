<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Business Adda</title>
		<link href="./javascript/jquery/development-bundle/themes/smoothness/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css"/>
  		<script src="./javascript/jquery/js/jquery-1.4.2.min.js"></script>
  		<script src="./javascript/jquery/development-bundle/ui/jquery-ui-1.7.2.custom.js"></script>
		<link rel="stylesheet" href="./css/style.css" type="text/css" media="screen" />
		<script src="./javascript/popup.js"></script>
		<style>
			#mainPage{
				font-family: Verdana, Arial, Helvetica, sans-serif;
				font-size:12px;
				background: #EEEEEE;
				/* IE9 SVG, needs conditional override of 'filter' to 'none' 
				background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzA2MDcwOCIgc3RvcC1vcGFjaXR5PSIwIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjglIiBzdG9wLWNvbG9yPSIjMDYwNzA4IiBzdG9wLW9wYWNpdHk9IjAuOCIvPgogICAgPHN0b3Agb2Zmc2V0PSI5JSIgc3RvcC1jb2xvcj0iIzA2MDcwOCIgc3RvcC1vcGFjaXR5PSIwLjgiLz4KICAgIDxzdG9wIG9mZnNldD0iNTIlIiBzdG9wLWNvbG9yPSIjMDkwYTBiIiBzdG9wLW9wYWNpdHk9IjAuOCIvPgogICAgPHN0b3Agb2Zmc2V0PSI5MiUiIHN0b3AtY29sb3I9IiMwNjA3MDgiIHN0b3Atb3BhY2l0eT0iMC44Ii8+CiAgICA8c3RvcCBvZmZzZXQ9IjkzJSIgc3RvcC1jb2xvcj0iIzA2MDcwOCIgc3RvcC1vcGFjaXR5PSIwLjciLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzA2MDcwOCIgc3RvcC1vcGFjaXR5PSIwIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
				background: -moz-linear-gradient(left,  rgba(6,7,8,0) 0%, rgba(6,7,8,0.8) 8%, rgba(6,7,8,0.8) 9%, rgba(9,10,11,0.8) 52%, rgba(6,7,8,0.8) 92%, rgba(6,7,8,0.7) 93%, rgba(6,7,8,0) 100%); /* FF3.6+ */
				/*background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(6,7,8,0)), color-stop(8%,rgba(6,7,8,0.8)), color-stop(9%,rgba(6,7,8,0.8)), color-stop(52%,rgba(9,10,11,0.8)), color-stop(92%,rgba(6,7,8,0.8)), color-stop(93%,rgba(6,7,8,0.7)), color-stop(100%,rgba(6,7,8,0))); /* Chrome,Safari4+ */
				/*background: -webkit-linear-gradient(left,  rgba(6,7,8,0) 0%,rgba(6,7,8,0.8) 8%,rgba(6,7,8,0.8) 9%,rgba(9,10,11,0.8) 52%,rgba(6,7,8,0.8) 92%,rgba(6,7,8,0.7) 93%,rgba(6,7,8,0) 100%); /* Chrome10+,Safari5.1+ */
				/*background: -o-linear-gradient(left,  rgba(6,7,8,0) 0%,rgba(6,7,8,0.8) 8%,rgba(6,7,8,0.8) 9%,rgba(9,10,11,0.8) 52%,rgba(6,7,8,0.8) 92%,rgba(6,7,8,0.7) 93%,rgba(6,7,8,0) 100%); /* Opera 11.10+ */
				/*background: -ms-linear-gradient(left,  rgba(6,7,8,0) 0%,rgba(6,7,8,0.8) 8%,rgba(6,7,8,0.8) 9%,rgba(9,10,11,0.8) 52%,rgba(6,7,8,0.8) 92%,rgba(6,7,8,0.7) 93%,rgba(6,7,8,0) 100%); /* IE10+ */
				/*background: linear-gradient(to right,  rgba(6,7,8,0) 0%,rgba(6,7,8,0.8) 8%,rgba(6,7,8,0.8) 9%,rgba(9,10,11,0.8) 52%,rgba(6,7,8,0.8) 92%,rgba(6,7,8,0.7) 93%,rgba(6,7,8,0) 100%); /* W3C */
				/*filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00060708', endColorstr='#00060708',GradientType=1 ); /* IE6-8 */
			}
			#left-div{
				float:left;
				width:7%;
				height:1000px;
			}
			#middle-div{
				float:left;
				width:86%;
				height:1000px;
			}
			#right-div{
				float:left;
				width:7%;
				height:900px;
			}
			#container {
			   min-height:100%;
			   position:relative;
			}
			#header-div{
				/*width:1145px;
				height:100px;*/
				
			}
			#header-div {
			    /* background: -moz-linear-gradient(center top , #7D7D7D, #000000, #7D7D7D) repeat scroll 0 0 transparent; */
			    background: -moz-linear-gradient(left top , #20204C, #333366, #AEAEE1) repeat scroll 0 0 transparent;
			    border: 1px solid #FFFFFF;
			    border-radius: 10px 10px 10px 10px;
			    height: 100px;
			    margin-left: 4px;
			    width: 1152px;
			}
			#content-div{
				width:1154px;
				height:760px;
				margin-left:4px;
			}
			#footer-div{
				width:1145px;
				height:40px;
				background:#FFFFFF;
			   	text-transform:capitalize;
			   	border-top-left-radius:100px;
			   	border-top-right-radius:100px;
			   	position:absolute;
	   			bottom:0;
			}
			#slider-div{
				background: none repeat scroll 0 0 #FFFFFF;
   				border-radius: 5px;
    			height: 855px;
			}
			.ui-widget-content {
			    background: none !important;
			    border: 0px solid #ffffff !important;
			    color: #222222;
			}
			.ui-state-active, .ui-widget-content .ui-state-active{
				background:-moz-linear-gradient(center bottom , #CCCCCC, #3A4DB4) repeat scroll 0 0 transparent !important;
			}
			.ui-widget-header {
			    background: #CCCCCC !important;
			    border: 1px solid #AAAAAA;
			    color: #222222;
			    font-weight: bold;
			    border-radius: 5px 15px 5px 5px !important;
				-moz-border-radius: 5px 15px 5px 5px !important;
				-webkit-border-radius: 5px 15px 5px 5px !important;
			}			
		</style>
		<script>
		 $(function() {
			 $( "#tabs" ).tabs();
		 });
		</script>
	</head>
	<body id="mainPage">
		<div id="left-div"></div>	
		<div id="middle-div">
			<div id="container">
				<br/>
				<div id="header-div"><jsp:include page="Header.jsp" /></div>
				<div id="content-div" align="center">
					<div id="slider-div"><jsp:include page="ImageSlider.jsp" />
						<%-- <div id="login-div"><jsp:include page="Login.jsp" /></div> --%>
						<%-- <div id="reg-div" style="display:none;"><jsp:include page="Login.jsp" /></div> --%>
						<div id="categories-div"><jsp:include page="Categories.jsp" /></div>
					</div>
				</div>
				<div id="footer-div" align="center"><jsp:include page="Footer.jsp" /></div>
			</div>
		</div>
		<div id="right-div"></div>
		<div id="myPopup" style="">
			<jsp:include page="Signup.jsp" />
		</div>
		<div id="backgroundPopup"></div>
	</body>
</html>