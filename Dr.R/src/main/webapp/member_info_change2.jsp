<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% UserDTO User = (UserDTO)session.getAttribute("login_User"); %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정 2</title>
    <link rel="stylesheet" href="Handmade.css">

<style>
h4{
  font-weight:600;
  color: rgb(54, 54, 54);
  margin-top:10%;
  font-size: 19px;
}

.font_{
  margin-left: 7%;
  margin-top: 10%;
  margin-bottom: 2%;
  font-size: 14px;
  font-weight: 600;
  color: rgb(75, 75, 75);
}

table{
  margin-bottom: 0%;
}

td{
  font-size: 15px;
  padding-right: 20px;
  padding-left: 20px;
  color: rgb(63, 63, 63);
}
</style>
</head>


<body width="100%" height="100%">
  
  <form action="UpdataCon" method="post" class="infoForm">
    <br>
    <div >
    <a href="index.html" >
        <span class="backspace" style="font-size: 25px;"> < </span>
      </a>
    <span class="mainname" style=" font-size: 20px; margin-left: 10px;">회원정보 수정</span>
  </div>

        <div class="idForm" align="center">

          <div class="font_" align="left">닉네임</div>
          <input type="text" class="id" placeholder="<%-- <%= User.getU_name()%> --%>sd" name="name">
        
          <div class="font_" align="left">비밀번호 입력</div>
          <input type="text" class="id" placeholder="  비밀번호 입력" name="pw">

          <div class="font_" align="left">비밀번호 재입력</div>
          <input type="text" class="id" placeholder="  비밀번호 재입력" name="pw_check">

          <div align="center" class="tdiv">
            <table style="margin-top: 8%;">
              <tr class="checkbox" align="left">
              <% if (User.getU_dang()==1){ %>
              <td class="td_font_size"><label><input type="checkbox" name="dis_dang" value="당뇨" checked><span style="margin-left:8px;">당뇨</span></label></td>
              <% } else { %>
                <td class="td_font_size"><label><input type="checkbox" name="dis_dang" value="당뇨"><span style="margin-left:8px;">당뇨</span></label></td>
              <% } %>
                <td><label><input type="checkbox" name="dis_go" value="고혈압"><span style="margin-left:8px;">고혈압</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="dis_we" value="위장"><span style="margin-left:8px;">위장</span></label></td>
                <td><label><input type="checkbox" name="dis_ho" value="호흡기"><span style="margin-left:8px;">호흡기</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="dis_no" value="1"><span style="margin-left:8px;">해당없음</span></label></td>
            </table>
          </div>
          <input type="submit" class="btn3" style="margin-bottom: 90%; margin-top: 7%;"  value="확인">
          </div>

<!-- 테스트용 시작 --> 
<!--            <div align="center" class="tdiv">
            <table style="margin-top: 8%;">
              <tr class="checkbox" align="left">
                <td class="td_font_size"><label><input type="checkbox" name="disease" value="당뇨"><span style="margin-left:8px;">당뇨</span></label></td>
                <td><label><input type="checkbox" name="disease" value="고혈압"><span style="margin-left:8px;">고혈압</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="disease" value="위장"><span style="margin-left:8px;">위장</span></label></td>
                <td><label><input type="checkbox" name="disease" value="호흡기"><span style="margin-left:8px;">호흡기</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="disease" value="1"><span style="margin-left:8px;">해당없음</span></label></td>
            </table>
          </div>
          <input type="submit" class="btn3" style="margin-bottom: 90%; margin-top: 7%;"  value="확인">
          </div> -->
<!-- 테스트용 종료 --> 

          
        </form>


    </body>
</html>

