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
    <title>ȸ������ ���� 2</title>
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
    <span class="mainname" style=" font-size: 20px; margin-left: 10px;">ȸ������ ����</span>
  </div>

        <div class="idForm" align="center">

          <div class="font_" align="left">�г���</div>
          <input type="text" class="id" placeholder="<%-- <%= User.getU_name()%> --%>sd" name="name">
        
          <div class="font_" align="left">��й�ȣ �Է�</div>
          <input type="text" class="id" placeholder="  ��й�ȣ �Է�" name="pw">

          <div class="font_" align="left">��й�ȣ ���Է�</div>
          <input type="text" class="id" placeholder="  ��й�ȣ ���Է�" name="pw_check">

          <div align="center" class="tdiv">
            <table style="margin-top: 8%;">
              <tr class="checkbox" align="left">
              <% if (User.getU_dang()==1){ %>
              <td class="td_font_size"><label><input type="checkbox" name="dis_dang" value="�索" checked><span style="margin-left:8px;">�索</span></label></td>
              <% } else { %>
                <td class="td_font_size"><label><input type="checkbox" name="dis_dang" value="�索"><span style="margin-left:8px;">�索</span></label></td>
              <% } %>
                <td><label><input type="checkbox" name="dis_go" value="������"><span style="margin-left:8px;">������</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="dis_we" value="����"><span style="margin-left:8px;">����</span></label></td>
                <td><label><input type="checkbox" name="dis_ho" value="ȣ���"><span style="margin-left:8px;">ȣ���</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="dis_no" value="1"><span style="margin-left:8px;">�ش����</span></label></td>
            </table>
          </div>
          <input type="submit" class="btn3" style="margin-bottom: 90%; margin-top: 7%;"  value="Ȯ��">
          </div>

<!-- �׽�Ʈ�� ���� --> 
<!--            <div align="center" class="tdiv">
            <table style="margin-top: 8%;">
              <tr class="checkbox" align="left">
                <td class="td_font_size"><label><input type="checkbox" name="disease" value="�索"><span style="margin-left:8px;">�索</span></label></td>
                <td><label><input type="checkbox" name="disease" value="������"><span style="margin-left:8px;">������</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="disease" value="����"><span style="margin-left:8px;">����</span></label></td>
                <td><label><input type="checkbox" name="disease" value="ȣ���"><span style="margin-left:8px;">ȣ���</span></label></td>
              </tr>
              <tr class="checkbox" align="left">
                <td><label><input type="checkbox" name="disease" value="1"><span style="margin-left:8px;">�ش����</span></label></td>
            </table>
          </div>
          <input type="submit" class="btn3" style="margin-bottom: 90%; margin-top: 7%;"  value="Ȯ��">
          </div> -->
<!-- �׽�Ʈ�� ���� --> 

          
        </form>


    </body>
</html>

