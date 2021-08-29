<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<% request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
      <title>모락모락</title>
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
         <div id="wrapper" style="background-color: #EDEDED;">                                             
            <!-- Main -->
               <section id="main" class="wrapper" >
                  <div class="inner">
                     <h1 align= "center" class="major">샴푸 제품목록</h1> 
  <div class="container">
      <div class="row">
        <div class="col-4" align="center">
          <p align="left">NO.1</p>          
          <div class="card">
            <div class="card-header">
             <img src="images/TS_Premium-removebg-preview.png">
            </div>
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url1" value="https://search.shopping.naver.com/search/all?query=뉴프리미엄TS샴푸">            
              <input type="hidden" class="please" id="pro_name1" value="뉴프리미엄TS샴푸">            
              <h5 class="card-title">뉴프리미엄TS샴푸</h5>
              <p class="card-text">#탈모증상완화 #단백질영양 #생기있는 모발</p>                                          
              <a href="https://search.shopping.naver.com/search/all?query=%EB%89%B4%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84TS%EC%83%B4%ED%91%B8" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>             
              <!-- <a class = "heart" href="#" style="float:right; margin-right: 20%;">찜하기</a> -->
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(1)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>            
          </div> 
        </div>
        
        
        
        
        <div class="col-4" align="center">
          <p align="left">NO.2</p>
          <div class="card">
            <img src="images/Ryo_blue-removebg-preview.png">
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url2" value="https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어비듬케어비듬두피">
              <input type="hidden" class="please" id="pro_name2" value="자양윤모 탈모증상케어 비듬케어 비듬두피">            
              <h5 class="card-title">자양윤모 탈모증상케어 비듬케어 비듬두피</h5>
              <p class="card-text">#비듬쿨링케어 #시원한허벌향 #탈모케어</p>              
              <a href="https://search.shopping.naver.com/search/all?query=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EB%91%90%ED%94%BC&frm=NVSHATC&prevQuery=%EB%89%B4%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84TS%EC%83%B4%ED%91%B8" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
               <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(2)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        
        
        
        
        <div class="col-4" align="center">
          <p align="left">NO.3</p>
          <div class="card">
          <img src="images/Ryo_pink-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url3" value="https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어볼륨케어힘없는모발용">
              <input type="hidden" class="please" id="pro_name3" value="자양윤모 탈모증상케어 볼륨케어 힘없는 모발용">
              <h5 class="card-title">자양윤모 탈모증상케어 볼륨케어 힘없는 모발용</h5>
              <p class="card-text">#뿌리볼륨감케어 #풍성한플로럴향 #탈모케어</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EB%B3%BC%EB%A5%A8%EC%BC%80%EC%96%B4%20%ED%9E%98%EC%97%86%EB%8A%94%20%EB%AA%A8%EB%B0%9C%EC%9A%A9&frm=NVSHATC&prevQuery=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EB%91%90%ED%94%BC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(3)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.4</p>
          <div class="card">
          <img src="images/Ryo_puble_second-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url4" value="https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어중건성두피">
              <input type="hidden" class="please" id="pro_name4" value="자양윤모 탈모증상케어 중건성 두피">
              <h5 class="card-title">자양윤모 탈모증상케어 진센x카페인 중건성 두피</h5>
              <p class="card-text">#누적판매 1억개 #쫀쫀거품 #인삼전초추출물</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC&frm=NVSHATC&prevQuery=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A7%84%EC%84%BCx%EC%B9%B4%ED%8E%98%EC%9D%B8%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(4)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.5</p>
          <div class="card">
          <img src="images/Ryo_purple_third-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url5" value="https://search.shopping.naver.com/search/all?query=자양윤모탈모증상케어 지성두피">
              <input type="hidden" class="please" id="pro_name5" value="자양윤모 탈모증상케어 진센x카페인 지성 두피">
              <h5 class="card-title">자양윤모 탈모증상케어 진센x카페인 지성 두피</h5>
              <p class="card-text">#누적판매 1억개 #쫀쫀거품 #인삼전초추출물</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC&frm=NVSHATC&prevQuery=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A7%84%EC%84%BCx%EC%B9%B4%ED%8E%98%EC%9D%B8%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(5)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.6</p>
          <div class="card">
          <img src="images/DR_GROOT_white-removebg-preview.png">
            <div class="card-body">           
              <input type="hidden" class="please" id="pro_url6" value="https://search.shopping.naver.com/search/all?query=닥터그루트초기탈모증상케어비듬각질">
              <input type="hidden" class="please" id="pro_name6" value="닥터그루트 초기 탈모증상케어 비듬각질">
              <h5 class="card-title">닥터그루트 초기 탈모증상케어 비듬각질</h5>
              <p class="card-text">#탈모 #딥클렌징 #진정 #탈모증상케어</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%EC%B4%88%EA%B8%B0%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EA%B0%81%EC%A7%88&frm=NVSHATC&prevQuery=%EC%9E%90%EC%96%91%EC%9C%A4%EB%AA%A8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EC%A4%91%EA%B1%B4%EC%84%B1%20%EB%91%90%ED%94%BC" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
             <!--  <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
              <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(6)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.7</p>
          <div class="card">
          <img src="images/DR_GROOT_pink-removebg-preview.png">
            <div class="card-body"> 
              <input type="hidden" class="please" id="pro_url7" value="https://search.shopping.naver.com/search/all?query=닥터그루트초기탈모증상케어건조가려움">
              <input type="hidden" class="please" id="pro_name7" value="닥터그루트 초기 탈모증상케어 건조 가려움">        
              <h5 class="card-title">닥터그루트 초기 탈모증상케어 건조 가려움</h5>
              <p class="card-text">#푸석한 모발 #가려운두피 #케어솔루션</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%EC%B4%88%EA%B8%B0%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EA%B1%B4%EC%A1%B0%20%EA%B0%80%EB%A0%A4%EC%9B%80&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%EC%B4%88%EA%B8%B0%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EB%B9%84%EB%93%AC%EA%B0%81%EC%A7%88" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
            <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(7)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>        
        <div class="col-4" align="center">
          <p align="left">NO.8</p>
          <div class="card">
          <img src="images/DR_GROOT_black-removebg-preview.png">
            <div class="card-body">
              <input type="hidden" class="please" id="pro_url8" value="https://search.shopping.naver.com/search/all?query=닥터그루트탈모증상집중케어힘없는모발용" >
              <input type="hidden" class="please" id="pro_name8" value="닥터그루트  탈모증상 집중케어 힘없는 모발용">          
              <h5 class="card-title">닥터그루트  탈모증상 집중케어 힘없는 모발용</h5>
              <p class="card-text">#힘없는 모발 #지성두피 #손상모발 #두피토닉</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%20%EC%A7%91%EC%A4%91%EC%BC%80%EC%96%B4%20%ED%9E%98%EC%97%86%EB%8A%94%20%EB%AA%A8%EB%B0%9C%EC%9A%A9&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%EC%B4%88%EA%B8%B0%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%EC%BC%80%EC%96%B4%20%EA%B1%B4%EC%A1%B0%20%EA%B0%80%EB%A0%A4%EC%9B%80" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
            <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(8)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">
            </div>
          </div>
        </div>
        <div class="col-4" align="center">
          <p align="left">NO.9</p>
          <div class="card">
          <img src="images/DR_Bang_Shampoo.png">
            <div class="card-body">           
            <input type="hidden" class="please" id="pro_url9" value="https://search.shopping.naver.com/search/all?query=닥터방기원랩탈모샴푸" >
              <input type="hidden" class="please" id="pro_name9" value="닥터 방기원 랩 탈모 샴푸">
              <h5 class="card-title">닥터 방기원 랩 탈모 샴푸</h5>
              <p class="card-text">#강력한 세정력 #하이드롤라이즈드 단백질</p>
              <a href="https://search.shopping.naver.com/search/all?query=%EB%8B%A5%ED%84%B0%20%EB%B0%A9%EA%B8%B0%EC%9B%90%20%EB%9E%A9%20%ED%83%88%EB%AA%A8%20%EC%83%B4%ED%91%B8&frm=NVSHATC&prevQuery=%EB%8B%A5%ED%84%B0%EA%B7%B8%EB%A3%A8%ED%8A%B8%20%ED%83%88%EB%AA%A8%EC%A6%9D%EC%83%81%20%EC%A7%91%EC%A4%91%EC%BC%80%EC%96%B4%20%ED%9E%98%EC%97%86%EB%8A%94%20%EB%AA%A8%EB%B0%9C%EC%9A%A9" class="btn btn-primary" style="float:left; margin-left: 20%;"><img src="images/money-removebg-preview.png" width="50px" height="50px"></a>
              <!-- <a class = "heart" href="#"><img src="images/CART-removebg-preview.png" width="50px" height="50px" style="float:right; margin-right: 20%;"></a> -->
         <img class="heart1" src="images/CART-removebg-preview.png" onclick="ajaxCall(9)" width="50px" height="50px" style="float:right; margin-right: 20%; cursor:pointer">            
            </div>
          </div>
        </div>
      </div>
    </div>    
    
    
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </div>
       <div align="center"><a href="Product_Shampoo.jsp"><img src="images/top.png"/></a></div>
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
           
            
            if(num==1){
               pro_name = document.getElementById("pro_name1").value;
               pro_url = document.getElementById("pro_url1").value;               
            }else if(num==2){
               pro_name = document.getElementById("pro_name2").value;
               pro_url = document.getElementById("pro_url2").value;                     
            }else if(num==3){
               pro_name = document.getElementById("pro_name3").value;
               pro_url = document.getElementById("pro_url3").value;                     
            }else if(num==4){
               pro_name = document.getElementById("pro_name4").value;
               pro_url = document.getElementById("pro_url4").value;                     
            }else if(num==5){
               pro_name = document.getElementById("pro_name5").value;
               pro_url = document.getElementById("pro_url5").value;                     
            }else if(num==6){
               pro_name = document.getElementById("pro_name6").value;
               pro_url = document.getElementById("pro_url6").value;                     
            }else if(num==7){
               pro_name = document.getElementById("pro_name7").value;
               pro_url = document.getElementById("pro_url7").value;                     
            }else if(num==8){
               pro_name = document.getElementById("pro_name8").value;
               pro_url = document.getElementById("pro_url8").value;                     
            }else if(num==9){
               pro_name = document.getElementById("pro_name9").value;
               pro_url = document.getElementById("pro_url9").value;                     
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