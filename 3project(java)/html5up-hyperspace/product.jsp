<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
      <title>ΈπΆτΈπΆτ</title>
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
   /* .loss{
      height:300px;
      border: 1px solid white; 
      float: left; 
      width: 33%;
      background-color: black;
      color: white;
      line-height:300px;
      text-align:center; 
      font-size:25px;
   } */
   .loss_shampoo{
      background-image:url(images/woman-hairdresser-salon_AA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      
   }
   .loss_tonic{
      background-image:url(images/tonic_AAA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      
   }
   .loss_extra{
      background-image:url(images/Product_extra_AA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      
   }

   .img-cover{
      position:absolute;
      height:100%;
      width:100%;
      background-color: rgba(0, 0, 0, 0.75);      
      z-inde:1;                                                           
        
   }
    .loss_shampoo .content{
     position: absolute;
     top:50%;
     left:50%; 
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
    .loss_tonic .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
    .loss_extra .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
     font-size:45px;
     
}
      .content{
               text-size:100px;
      
      }
   
      footer{position:absolut;
            bottom:0;
            }
            
   }   
            
</style>
   <body class="is-preload" >

      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">ΈπΆτΈπΆτ</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <section id="main" class="wrapper">
               
                  <div class="inner">
                     <h1 align= "center" class="major">Α¦Η°Ό±ΕΓ</h1>
                     <div class="loss_shampoo">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Shampoo.jsp" onMouseOver="this.innerHTML='Ό€Ηͺ'" onMouseOut="this.innerHTML='Ό€Ηͺ<br>Γ£ΎΖΊΈ±β'">Ό€Ηͺ<br>Γ£ΎΖΊΈ±β</a>
                        </div>
                  <div class="img-cover"></div>
                        
                     </div>
                     
                     <div class="loss_tonic" >
                     <div class="content">
                           <a onfocus="blur()" href="Product_Tonic_Treatment.jsp" onMouseOver="this.innerHTML='Εδ΄Π<br>Ζ?Έ?Ζ?ΈΥΖ?'" onMouseOut="this.innerHTML='Εδ΄Π<br>Ζ?Έ?Ζ?ΈΥΖ?<br>Γ£ΎΖΊΈ±β'">Εδ΄Π<br>Ζ?Έ?Ζ?ΈΥΖ?<br>Γ£ΎΖΊΈ±β</a>
                        </div>
                  <div class="img-cover"></div>
                     </div>
                     <div class="loss_extra">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Extra.jsp" onMouseOver="this.innerHTML='±βΕΈΑ¦Η°'" onMouseOut="this.innerHTML='±βΕΈΑ¦Η°<br>Γ£ΎΖΊΈ±β'">±βΕΈΑ¦Η°<br>Γ£ΎΖΊΈ±β</a>
                        </div>
                  <div class="img-cover"></div>
                     </div> 
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