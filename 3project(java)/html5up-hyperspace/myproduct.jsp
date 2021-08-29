<%@page import="java.awt.Color"%>
<%@page import="com.DTO.productDTO"%>
<%@page import="com.DTO.DTO_3"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.DAO_3"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
   <head>
      <title>������</title>
      <meta charset="EUC-KR" />
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
<%//��ũ��Ʋ��
      String id =(String)session.getAttribute("id");
        //session�� email�� ��������
      System.out.println("�α����� ������� �̸��� �� : "+id);
   %>
    <%-- <%
   //���ǿ� ����� MemberDTO ���� ��������
   DTO_3 member = (DTO_3)session.getAttribute("member");
   productDTO inter_pro = (productDTO)session.getAttribute("inter_pro");
%>  --%>
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
         <div id="wrapper" style="background-color:#EDEDED; ">

            <!-- Main -->
               <section id="main" class="wrapper">
                  <div align="center" class="inner">
                     <h1 class="major">������ǰ</h1>
                      <div class="card-header py-3">
            <!--   <h6 class="m-0 font-weight-bold text-primary">Project_Member Table</h6> -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr >
                      <th align="center">��� ��¥</th>
                      <th>��ǰ �̸�</th>
                      <th>��������</th>
                    </tr>
                  </thead>
                  <!-- <tfoot>
                    <tr>
                        <th>��� ��¥</th>
                      <th>��ǰ �̸�</th>
                      <th>��������</th>
                    </tr>
                  </tfoot> -->
                                <%
                  DAO_3 dao = new DAO_3(); //MessageDAO ����ϱ� ���� ��ü ����
                  ArrayList<productDTO> proList = null; //MessageDTO�� ���� ����ִ� ��̸���Ʈ ����
                  if(id != null){ //���� ������ ������� ������� �ʴٸ� ---�α��� �� ���¶��
                     proList=dao.productSelect(id); //�α����� id�� ������ selectAll�Լ��� ��Ƽ� msgList�� ����
                  }
               %>
                  <tbody>
                  <%if(id == null){ %> <!-- �α����� �ȵ� ���¶��  -->
                              <%}else{ //�α����� �Ǿ��ٸ�
                                 if(!proList.isEmpty()){ //msgList�� ������� ���� �� 
                                    for(int i=0;i<proList.size();i++){ //msgList(���� �޽���)�� ũ�⸸ŭ �ݺ�
                                       productDTO interpro = proList.get(i); //DTO�� ȣ���Ͽ� msg�� ���� ��,  msgList�� i��° ��Ҹ� msg�� ����
                                       out.println("<tr>");
                                         out.println("<td>"+interpro.getInter_date()+"</td>");
                                         out.println("<td>"+interpro.getPro_name()+"</td>");
                                         out.println("<td><a href="+interpro.getPro_url()+">Ŭ��</a></td>");
                                                             //QueryStirng : URL�� ���ؼ� ������ ���� ����
                                         out.println("</tr>");
                                    }//end for
                                 }else{//msgList�� ������� ��
                                    out.println("<tr>");
                                    out.print("<td colspan=3>��ϵ� ������ǰ�� �����ϴ�.</td>");
                                    out.println("</tr>");
                                 }
                                 }%>
                              
                  <%--  <%
                     //*����ڰ� �Է��� ���� ���� ��ü���̺��� ������ �˻��ϸ� �Ǳ� ������ Servlet�� �ʿ����.
                     try {
                        productDTO dto = new productDTO();
                    ArrayList<productDTO> product = (ArrayList<productDTO>)request.getAttribute("id");
                  
                  for(int i =0;i<product.size();i++){
                    out.println("<tr>");
                    out.println("<td>"+product.get(i).getInter_date()+"</td>");
                    out.println("<td>"+product.get(i).getPro_name()+"</td>");
                    out.println("<td><a href="+product.get(i).getPro_url()+">Ŭ��</a></td>");
                                        //QueryStirng : URL�� ���ؼ� ������ ���� ����
                    out.println("<tr>");
                  }
               //-------------------------------���� �� ó��
            } catch (Exception e) {
               e.printStackTrace();
            }
                     
                  
                  %> 
                     --%>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
                  </div>
               </section>

         </div>

      <!-- Footer -->
         <footer id="footer" class="wrapper alt">
            <div class="inner">
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