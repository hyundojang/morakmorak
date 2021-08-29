<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--
   Hyperspace by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
   <head>
      <title>모락모락</title>
      <meta charset="EUC-KR" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
   </head>
<style>
  *{margin:0;padding:0;}
  ul,li{list-style:none;}
  .slide{height:1087px;width:1668px;overflow:hidden;margin-left:-128px;margin-top:-128px;margin-right:128px;margin-bottom:-192px;}
  .slide ul{height:100%;}
  .slide li{height:100%;}
  .slide li:nth-child(1){background:#EDEDED;}
  .slide li:nth-child(2){background:#EDEDED;}
/*   .slide li:nth-child(3){background:#EDEDED;}
  .slide li:nth-child(4){background:#EDEDED;} */
</style>
   <body class="is-preload">
   <%
      String ID = (String)session.getAttribute("id");
      System.out.println("로그인한 사용자의 이메일 값 : " + ID);
   %>

      <!-- Sidebar -->
         <section id="sidebar">
            <div class="inner">
               <nav>
                  <ul>
                     <li><a href="#intro">탈모검진</a></li>
                     <li><a href="#one">제품/병원</a></li>      
                     <%if(ID == null){ %>
                     <li><a href="#three">회원가입</a></li>
                        <%}else{ %>
                        <li><a href="#three">마이페이지</a></li>
                        <li><a href="LogoutService">로그아웃</a></li>
                        <%} %>
                  </ul>
               </nav>
            </div>
         </section>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Intro -->
               <section id="intro" class="wrapper style1 fullscreen fade-up">                              
                  <div class="inner">
                  <!-- <h1>모락모락</h1> -->                                          
                     <div class="slide">
                       <ul>                                                
                         <li><img alt="images" src="images/q1.png" height=1087px width=1668px></li>
                         <li><img alt="images" src="images/chair1.png"  height=1087px width=1668px></li>
                         <!-- <li><img alt="images" src="images/sham.PNG"></li>
                         <li><img alt="images" src="images/talmobim.jpg"></li> -->                       
                       </ul>
                     </div>
                     <ul class="actions">
                        <%if(ID == null){ %>
                        <li><a href="login.jsp" class="button scrolly">로그인</a></li>
                           <%}else{ %>
                        <li><a href="headCheck.jsp" class="button">탈모진단</a></li>
                        <li><a href="#one" class="button scrolly">제품보기</a></li>
                           <li><a href="#three" class="button scrolly">마이페이지</a></li>
                           <%} %>
                        
                     </ul>
                  </div>
               </section>

            <!-- One -->
               <section id="one" class="wrapper style2 spotlights">
                  <section>
                     <a href="product.jsp" class="image" style="background-color: #DBDBDB;"><img src="images/hairwash.jpg" data-position="center center" /></a>
                     <div class="content" style="background-color: #DBDBDB;">
                        <div class="inner">
                           <h2>제품</h2>
                           <p>제품을 확인해보자</p>
                           <ul class="actions">
                              <li><a href="product.jsp" class="button">제품확인</a></li>
                           </ul>
                        </div>
                     </div>
                  </section>
                  <section>
                     <a href="API.html" class="image" style="background-color: #EDEDED;"><img src="images/doctor.jpg" alt="" data-position="top center" /></a>
                     <div class="content" style="background-color: #EDEDED;">
                        <div class="inner">
                           <h2>병원</h2>
                           <p>병원을 찾아보자</p>
                           <ul class="actions">
                              <li><a href="API.jsp" class="button">병원찾기</a></li>
                           </ul>
                        </div>
                     </div>
                  </section>
                  <!-- <section>
                     <a href="#" class="image"><img src="images/pic03.jpg" alt="" data-position="25% 25%" /></a>
                     <div class="content">
                        <div class="inner">
                           <h2>Ultricies aliquam</h2>
                           <p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
                           <ul class="actions">
                              <li><a href="generic.html" class="button">Learn more</a></li>
                           </ul>
                        </div>
                     </div>
                  </section> -->
               </section>

            <!-- Two -->
                <!-- <section id="two" class="wrapper style3 fade-up">
                  <div class="inner">
                     <h2>What we do</h2>
                     <p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus, lacus eget hendrerit bibendum, urna est aliquam sem, sit amet imperdiet est velit quis lorem.</p>
                     <div class="features">
                        <section>
                           <span class="icon solid major fa-code"></span>
                           <h3>Lorem ipsum amet</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                        <section>
                           <span class="icon solid major fa-lock"></span>
                           <h3>Aliquam sed nullam</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                        <section>
                           <span class="icon solid major fa-cog"></span>
                           <h3>Sed erat ullam corper</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                        <section>
                           <span class="icon solid major fa-desktop"></span>
                           <h3>Veroeros quis lorem</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                        <section>
                           <span class="icon solid major fa-link"></span>
                           <h3>Urna quis bibendum</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                        <section>
                           <span class="icon major fa-gem"></span>
                           <h3>Aliquam urna dapibus</h3>
                           <p>Phasellus convallis elit id ullam corper amet et pulvinar. Duis aliquam turpis mauris, sed ultricies erat dapibus.</p>
                        </section>
                     </div>
                     <ul class="actions">
                        <li><a href="generic.html" class="button">Learn more</a></li>
                     </ul>
                  </div>
               </section>  -->

            <!-- Three -->
               <section id="three" class="wrapper style2 spotlights">
                  <section style="background-color: #DBDBDB;">
                     <div class="content">
                        <div class="inner">
                           <%if(ID == null){ %>
                              <h2>로그인</h2>
                              <p>로그인</p>
                              <ul class="actions">
                                 <li><a href="login.jsp" class="button">로그인</a></li>
                              </ul>
                              <%}else{ %>
                                 <h2>검사기록</h2>
                              <p>검사기록</p>
                              <ul class="actions">
                                 <li><a href="myrecord.jsp" class="button">검사기록</a></li>
                              </ul>
                              <%} %>
                        </div>
                     </div>
                  </section>
                  <section style="background-color: #EDEDED;">
                     <div class="content">
                        <div class="inner">
                           <%if(ID == null){ %>
                              <h2>회원가입</h2>
                              <p>회원가입</p>
                              <ul class="actions">
                              <li><a href="Join.jsp" class="button">회원가입</a></li>
                              <%}else{ %>
                                 <h2>관심제품</h2>
                              <p>관심제품</p>
                              <ul class="actions">
                                 <li><a href="myproduct.jsp" class="button">관심제품</a></li>
                              </ul>
                              <%} %>
                           </ul>
                        </div>
                     </div>
                  </section>

         </div>

      <!-- Footer -->
         <!-- <footer id="footer" class="wrapper style1-alt">
            <div class="inner">
               <ul class="menu">
                  <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
               </ul>
            </div>
         </footer> -->

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         <script>
            const all = ele => document.querySelectorAll(ele)
            const one = ele => document.querySelector(ele)
            const slide = _ => {
              const wrap = one('.slide')
              const target = wrap.children[0]
              const len = target.children.length
              const liStyle = `
                position:absolute;
                left:0;right:0;top:0;bottom:0;transition:1s;opacity:0
              `
              target.style.cssText = `position:relative;`
              Array.from(target.children)
              .forEach(ele => ele.style.cssText = liStyle)
              target.children[0].style.opacity = 1
              let pos = 0
              setInterval(_ => {
                target.children[pos].style.opacity = 0
                pos = (pos + 1) % len 
                target.children[pos].style.opacity = 1
              }, 4000)
            }
            window.onload = function () {
              slide()
            }
         </script>

   </body>
</html>