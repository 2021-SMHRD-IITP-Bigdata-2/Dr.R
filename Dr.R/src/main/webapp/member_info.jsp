<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% UserDTO User = (UserDTO)session.getAttribute("login_User"); %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지</title>
    <link rel="stylesheet" href="Handmade.css">

<style>

h4{
  font-weight:600;
  color: rgb(54, 54, 54);
  font-size: 19px;
  margin-bottom: 10px;
}
.my_page{
  font-weight:600;
  color: rgb(22, 22, 22);
  font-size: 19px;
  margin-bottom: 10px;
}

h5{
  font-size: 15px;
  margin-bottom: 7px;
  color: rgb(68, 68, 68);
}


.mi_box{
  background-color: rgb(255, 231, 195);
  height: 120px;
  width: 300px;
  border-radius: 10px;
  margin-top: 20px;
}
</style>

  </head>


<body width="100%" height="100%">
  
  <form action="member_info_change2.html" method="post" class="member_infoForm">
    <br>
    <a href="main.jsp" >
        <span class="backspace"> < </span>
      </a>

    <h4 align="center">마이 페이지</h4>

        <div class="idForm" align="center">

        <div class="mi_box">

          <!-- 각 아이디와 닉네임은 서버로부터 받아오기-->
          <br>
          <br>
          
          <h5 style="font-size: 18px;"><%= User.getU_name() %>님</h5>
          <h5><%= User.getU_email() %></h5>
        </div>

        <br><br><br>
        <span><a class="my_page" href="like_list.html
          " style="color: rgb(61, 61, 61);">찜 목록</a></span>
        <br><br>
        <span><a class="my_page" href="member_info_change1.jsp" style="color: rgb(61, 61, 61);">회원정보 수정</a></span>
        <br><br>
        <span><a class="my_page" href="Guide.html" style="color: rgb(61, 61, 61);">이용 안내</a></span>
        <br><br>
        <span><a class="my_page" href="member_dele.jsp" style="color: rgb(61, 61, 61);">회원 탈퇴</a></sp>

          </div>


    </body>
</html>