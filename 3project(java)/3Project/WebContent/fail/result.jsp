<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>������</title>
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
	font-family: "G���� �꽺 TTF";
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
				<a href="index.jsp" class="title">������</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp#one">��ǰ/����</a></li>
	                  	<li><a href="index.jsp#three">����������</a></li>
	                  	<li><a href="LogoutService">�α׾ƿ�</a></li>
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
     result = "��ȣ : 0";
  }else if(result.equals("1")){
     result = "���� : 1";
  }else{
     result = "�ɰ� : 2";
  }
  
  
  
%>

<%
if(result.equals("��ȣ : 0")&&sur.equals("0")){
   check = "��ȣ";
}else if(result.equals("��ȣ : 0")&&sur.equals("1")){
   check = "��ȣ";
}else if(result.equals("��ȣ : 0")&&sur.equals("2")){
   check = "����";
}else if(result.equals("���� : 1")&&sur.equals("0")){
   check = "��ȣ";
}else if(result.equals("���� : 1")&&sur.equals("1")){
   check = "����";
}else if(result.equals("���� : 1")&&sur.equals("2")){
   check = "�ɰ�";
}else if(result.equals("�ɰ� : 2")&&sur.equals("0")){
   check = "����";
}else if(result.equals("�ɰ� : 2")&&sur.equals("1")){
   check = "�ɰ�";
}else if(result.equals("�ɰ� : 2")&&sur.equals("2")){
   check = "�ɰ�";
}


%>
  

<center><h1>
��� = <%=result %><br>
��Ȯ�� = <%=result2+"%" %><br>
�������� = <%=sur %><br>
���� = <%=check %>
<br>
<%
if(check.equals("�ɰ�")){%>
<li>
   <img src="images/2.png" data-position="center center" width="300" height="210"/>
   </li>
<% }else if(check.equals("����")){%>
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