<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>모락모락</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<style type="text/css" >
		html {
	height: 100%;
	}
		body {
	margin: 0;
	height: 100%;
	font-family: "G마켓 산스 TTF";
	}
	#wrapper {
	min-height: 100%;
	position: relative;
	padding-bottom: 19px; /* footer height */
	}
		footer{position:absolut;
				bottom:0;
				}
</style>
	<body class="is-preload">
<%
  String sur = (String)session.getAttribute("num1");
  String result = request.getParameter("result");
  String result2 = request.getParameter("result2");
  String check = "";
  %>

		<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="title">모락모락</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp#one">제품/병원</a></li>
	                  	<li><a href="index.jsp#three">마이페이지</a></li>
	                  	<li><a href="LogoutService">로그아웃</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper" style="background-color:#EDEDED">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div align="center" class="inner">
							  <%
  if(result.equals("0")){
     result = "양호 : 0";
  }else if(result.equals("1")){
     result = "주의 : 1";
  }else{
     result = "심각 : 2";
  }
  
  
  
%>

<%
if(result.equals("양호 : 0")&&sur.equals("0")){
   check = "양호";
}else if(result.equals("양호 : 0")&&sur.equals("1")){
   check = "양호";
}else if(result.equals("양호 : 0")&&sur.equals("2")){
   check = "주의";
}else if(result.equals("주의 : 1")&&sur.equals("0")){
   check = "양호";
}else if(result.equals("주의 : 1")&&sur.equals("1")){
   check = "주의";
}else if(result.equals("주의 : 1")&&sur.equals("2")){
   check = "심각";
}else if(result.equals("심각 : 2")&&sur.equals("0")){
   check = "주의";
}else if(result.equals("심각 : 2")&&sur.equals("1")){
   check = "심각";
}else if(result.equals("심각 : 2")&&sur.equals("2")){
   check = "심각";
}


%>
  

<center><h1>
결과 = <%=result %><br>
정확도 = <%=result2+"%" %><br>
설문조사 = <%=sur %><br>
최종 = <%=check %>
<br>
<%
if(check.equals("심각")){%>
<li>
   <img src="images/2.png" data-position="center center" width="300" height="210"/>
   </li>
<% }else if(check.equals("주의")){%>
<li>
   <img src="images/1.png" data-position="center center"width="300" height="210" />
   </li>

<% }else {%>
<li>
   <img src="images/0.png" data-position="center center"width="300" height="210" />
   </li>
<% }%> 



</center></h1>

						</div>
					</section>
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>