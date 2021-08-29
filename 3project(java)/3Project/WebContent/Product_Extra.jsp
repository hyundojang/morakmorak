<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<% request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
      <title>������</title>
      <meta charset="UTF-8" />
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
   }
   #wrapper {
   min-height: 100%;
   position: relative;
   padding-bottom: 19px; /* footer height */
   }
      footer{position:absolute;
            bottom:0;
            }
      p { margin:20px 0px; }
</style>
   <body class="is-preload" >
<%
		String ID = (String)session.getAttribute("id");
		System.out.println("�α����� ������� �̸��� �� : " + ID);
	%>
      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">������</a>
            <nav>
               <ul>
                  <%if(ID != null){ %> <!-- �α��� -->
                  	<li><a href="index.jsp">Home</a></li>
                  	<li><a href="product.jsp">����</a></li>
                  	<li><a href="index.jsp#three">����������</a></li>
                  	<li><a href="LogoutService">�α׾ƿ�</a></li>
            	  <%}else{ %> <!-- �α׾ƿ� -->
            		<li><a href="index.jsp">Home</a></li>
            		<li><a href="product.jsp">����</a></li>
            		<li><a href="login.jsp">�α���</a></li>
            		<li><a href="Join.jsp">ȸ������</a></li>
  			      <%} %>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper" style="background-color: #EDEDED;">

            <!-- Main -->
               <section id="main" class="wrapper">
                  <div class="inner">
                     <h1 align= "center" class="major">��ä&��Ÿ ��ǰ���</h1>
  <div class="container">
      <div class="row">
        <div class="col-4" align="center">
          <p align="left">NO.1</p>
          <div class="card">
            <div class="card-header">
             <img src="images/blackmonster_heakchae-removebg-preview.png">
            </div>
            <div class="card-body">
            <input type="hidden" class="please" id="pro_url16" value="https://search.shopping.naver.com/search/all?query=��������ä">
            <input type="hidden" class="please" id="pro_name16" value="������ ��ä">
              <h5 class="card-title">������ ��ä</h5>
              <p class="card-text">#������ ��Ÿ�ϸ� #���б� ����</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%B8%94%EB%9E%99%EB%AA%AC%EC%8A%A4%ED%84%B0%20%ED%9D%91%EC%B1%84" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
               <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(16)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.2</p>
          <div class="card">
            <img src="images/DASHU_frist-removebg-preview.png" width="400px">
            <div class="card-body">
            <input type="hidden" class="please" id="pro_url17" value="https://search.shopping.naver.com/search/all?query=�ٽ���ä">
            <input type="hidden" class="please" id="pro_name17" value="�ٽ� ��ä">
              <h5 class="card-title">�ٽ� ��ä</h5>
              <p class="card-text">#�ڿ������� #��ü�� #����������</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A4%EC%8A%88%20%ED%9D%91%EC%B1%84" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(17)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.3</p>
          <div class="card">
          <img src="images/furad_heakchae-removebg-preview.png" width="400px">
            <div class="card-body">    
            <input type="hidden" class="please" id="pro_url18" value="https://search.shopping.naver.com/search/all?query=ǻ������ä">
            <input type="hidden" class="please" id="pro_name18" value="ǻ���� ��ä">       
              <h5 class="card-title">ǻ���� ��ä</h5>
              <p class="card-text">#�Ϻ��� Ŀ�� #õ������ #����������</p>
              <a href="https://search.shopping.naver.com/search/all?query=%ED%93%A8%EB%A0%88%EB%93%9C%20%ED%9D%91%EC%B1%84" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(18)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.4</p>
          <div class="card">
          <img src="images/Park_heakchae-removebg-preview.png">
            <div class="card-body">         
            <input type="hidden" class="please" id="pro_url19" value="https://search.shopping.naver.com/search/all?query=�ڸ����ġ��ä">
            <input type="hidden" class="please" id="pro_name19" value="�ڸ�� ��ġ ��ä">   
              <h5 class="card-title">�ڸ�� ��ġ ��ä</h5>
              <p class="card-text">#�ڽŰ� #��Ÿ�ϸ� #�ڸ��</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%B0%95%EB%AA%85%EC%88%98%20%ED%97%A4%EC%96%B4%EB%A6%AC%EC%B9%98%20%ED%9D%91%EC%B1%84&frm=NVSHATC&prevQuery=%ED%93%A8%EB%A0%88%EB%93%9C%20%ED%9D%91%EC%B1%84" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
             <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(19)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.5</p>
          <div class="card">
          <img src="images/Aheads_brush-removebg-preview.png">
            <div class="card-body">           
            <input type="hidden" class="please" id="pro_url20" value="https://search.shopping.naver.com/search/all?query=���������귯��">
            <input type="hidden" class="please" id="pro_name20" value="������ ���귯��">
              <h5 class="card-title">������ ���귯��</h5>
              <p class="card-text">#���� �������� #������ #��ü������ ������</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EC%96%B4%ED%95%B4%EC%B8%A0+%ED%97%A4%EC%96%B4%EB%B8%8C%EB%9F%AC%EC%89%AC&cat_id=&frm=NVSHATC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(20)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.6</p>
          <div class="card">
          <img src="images/lglglg.png" >
            <div class="card-body">           
            <input type="hidden" class="please" id="pro_url21" value="https://search.shopping.naver.com/search/all?query=LG���󿤸޵����">
            <input type="hidden" class="please" id="pro_name21" value="LG���� �޵����">	
            	<br><br><br>
              <h5 class="card-title">LG���� �޵����</h5>
              <p class="card-text">#Ż��ġ�� ����� #������ ġ��ȿ��</p>
              <a href="https://search.shopping.naver.com/search/all?query=LG%ED%94%84%EB%9D%BC%EC%97%98%20%EB%A9%94%EB%94%94%ED%97%A4%EC%96%B4&frm=NVSHATC&prevQuery=%EC%96%B4%ED%95%B4%EC%A6%88%20%ED%97%A4%EC%96%B4%EB%B8%8C%EB%9F%AC%EC%89%AC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>              
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(21)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>               
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </div>
     <div align="center"><a href="Product_Extra.jsp"><img src="images/top.png"/></a></div>
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
          <script>
          
          function ajaxCall(num) {
              var pro_name = "";
              var pro_url = "";
              
              if(num==16){
                 pro_name = document.getElementById("pro_name16").value;
                 pro_url = document.getElementById("pro_url16").value;               
              }else if(num==17){
                 pro_name = document.getElementById("pro_name17").value;
                 pro_url = document.getElementById("pro_url17").value;                     
              }else if(num==18){
                 pro_name = document.getElementById("pro_name18").value;
                 pro_url = document.getElementById("pro_url18").value;                     
              }else if(num==19){
                 pro_name = document.getElementById("pro_name19").value;
                 pro_url = document.getElementById("pro_url19").value;                     
              }else if(num==20){
                 pro_name = document.getElementById("pro_name20").value;
                 pro_url = document.getElementById("pro_url20").value;                     
              }else if(num==21){
                 pro_name = document.getElementById("pro_name21").value;
                 pro_url = document.getElementById("pro_url21").value;                     
              }
              
              $.ajax({
                  type :"post" ,
                  url : "InterestService?pro_name="+pro_name+"&pro_url="+pro_url,
                  dataType : "text",
                  success : function(data) {
                     alert("���ɻ�ǰ���� ��ϵǾ����ϴ�!") 
                  },
                  error : function() {
        
                 }
              });
              
           }
         
         </script>
         
         

   </body>
</html>