<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("EUC-KR"); %>
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
		System.out.println("로그인한 사용자의 이메일 값 : " + ID);
	%>
      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">모락모락</a>
            <nav>
               <ul>
                   <%if(ID != null){ %> <!-- 로그인 -->
                  	<li><a href="index.jsp">Home</a></li>
                  	<li><a href="product.jsp">이전</a></li>
                  	<li><a href="index.jsp#three">마이페이지</a></li>
                  	<li><a href="LogoutService">로그아웃</a></li>
            	  <%}else{ %> <!-- 로그아웃 -->
            		<li><a href="index.jsp">Home</a></li>
            		<li><a href="product.jsp">이전</a></li>
            		<li><a href="login.jsp">로그인</a></li>
            		<li><a href="Join.jsp">회원가입</a></li>
  			      <%} %>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <section id="main" class="wrapper" style="background-color:#EDEDED;">
                  <div class="inner">
                     <h1 align= "center" class="major">토닉&트리트먼트 제품목록</h1>
  <div class="container">
      <div class="row">
        <div class="col-4" align="center">
          <p align="left">NO.1</p>
          <div class="card">
            <div class="card-header">
             <img src="images/Dalif_Tonic-removebg-preview.png">
            </div>
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url10" value="https://search.shopping.naver.com/search/all?query=달리프헤어토닉">
              <input type="hidden" class="please" id="pro_name10" value="달리프 헤어토닉">
              <h5 class="card-title">달리프 헤어토닉</h5>
              <p class="card-text">#탈모증상완화 #두피영양 #두피유수분밸런스</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%AC%EB%A6%AC%ED%94%84%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(10)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.2</p>
          <div class="card">
            <img src="images/DASHU_Tonic-removebg-preview.png">
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url11" value="https://search.shopping.naver.com/search/all?query=다슈헤어토닉">
              <input type="hidden" class="please" id="pro_name11" value="다슈 헤어토닉">
              <h5 class="card-title">다슈 헤어토닉</h5>
              <p class="card-text">#딥클렌징 #쿨링효과 #두피청결 #진정효과</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A4%EC%8A%88%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89&frm=NVSHATC&prevQuery=%EB%8B%AC%EB%A6%AC%ED%94%84%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(11)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.3</p>
          <div class="card">
          <img src="images/DR_Bang_Tonic-removebg-preview.png" height="500px">
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url12" value="https://search.shopping.naver.com/search/all?query=닥터방기원헤어토닉">
              <input type="hidden" class="please" id="pro_name12" value="닥터 방기원 헤어토닉">         
              <h5 class="card-title">닥터 방기원 헤어토닉</h5>
              <p class="card-text">#영양공급 #쿨링효과 #24가지 식물성 추출물</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89&frm=NVSHATC&prevQuery=%EB%8B%A4%EC%8A%88%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(12)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.4</p>
          <div class="card">
          <img src="images/DR_Bang_treatment-removebg-preview.png" height="500px">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url13" value="https://search.shopping.naver.com/search/all?query=닥터방기원헤어트리트먼트">
              <input type="hidden" class="please" id="pro_name13" value="닥터 방기원 헤어트리트먼트">
              <h5 class="card-title">닥터 방기원 헤어트리트먼트</h5>
              <p class="card-text">#저분자-식물성 단백질 #자연유래 영양성분</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(13)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.5</p>
          <div class="card">
          <img src="images/head_spa_treatment-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url14" value="https://search.shopping.naver.com/search/all?query=헤드스파헤어트리트먼트더프리미엄">
              <input type="hidden" class="please" id="pro_name14" value="헤드스파 헤어트리트먼트 더 프리미엄">
              <h5 class="card-title">헤드스파 헤어트리트먼트 더 프리미엄</h5>
              <p class="card-text">#7초 트리트먼트 #탄력케어 #부드러움</p>
              <a href="https://search.shopping.naver.com/search/all?query=%ED%97%A4%EB%93%9C%EC%8A%A4%ED%8C%8C%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%20%EB%8D%94%20%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(14)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.6</p>
          <div class="card">
          <img src="images/Ryo_treatment-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url15" value="https://search.shopping.naver.com/search/all?query=려헤어트리트먼트">
              <input type="hidden" class="please" id="pro_name15" value="려 헤어트리트먼트">
              <h5 class="card-title">려 헤어트리트먼트</h5>
              <p class="card-text">#강화 #영양 #두피탄력 #두피 피지케어</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%A0%A4%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8&frm=NVSHATC&prevQuery=%ED%97%A4%EB%93%9C%EC%8A%A4%ED%8C%8C%20%ED%97%A4%EC%96%B4%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%20%EB%8D%94%20%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(15)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>               
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
     </div>
      <div align="center"><a href="Product_Tonic_Treatment.jsp"><img src="images/top.png"/></a></div>
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
            
            if(num==10){
               pro_name = document.getElementById("pro_name10").value;
               pro_url = document.getElementById("pro_url10").value;               
            }else if(num==11){
               pro_name = document.getElementById("pro_name11").value;
               pro_url = document.getElementById("pro_url11").value;                     
            }else if(num==12){
               pro_name = document.getElementById("pro_name12").value;
               pro_url = document.getElementById("pro_url12").value;                     
            }else if(num==13){
               pro_name = document.getElementById("pro_name13").value;
               pro_url = document.getElementById("pro_url13").value;                     
            }else if(num==14){
               pro_name = document.getElementById("pro_name14").value;
               pro_url = document.getElementById("pro_url14").value;                     
            }else if(num==15){
               pro_name = document.getElementById("pro_name15").value;
               pro_url = document.getElementById("pro_url15").value;                     
            }
            
            $.ajax({
               type :"post" ,
                url : "InterestService?pro_name="+pro_name+"&pro_url="+pro_url,
                dataType : "text",
                success : function(data) {
                   alert("관심상품으로 등록되었습니다!") 
                },
                error : function() {
      
               }
            });
            
         }
        
         </script>
         
         

   </body>
</html>