<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ȸ������ ������ 2</title>
  <link rel="stylesheet" href="Handmade.css">

  <style>
    .input1 {
      margin-left: 20px;
      width: 300px;
    }

    .input {
      margin-left: 20px;
    }

    .next {
      margin-top: 15px;
    }

    .butn {
      width: 55px;
      padding: 0px 5px;
      margin: 0px;
      background-color: lightgrey;
      color: rgb(78, 76, 76);
      font-size: 11px;
    }

    .butn2{
width: 10%;
height: 100%;
border: 0px;
outline: none;
float: right;
border-radius: 5px;
font-weight: bold;
background-color: lightgrey;
      color: rgb(78, 76, 76);
      font-size: 12px;
}

.check{
  margin-left: 30px;
  font-size: 13px;
  color: blue;
}

  </style>

</head>

<body width="100%" height="100%">

  <form action="index.html" method="post" class="loginForm">
    <br>
    <a href="login.html">
      <span class="backspace">
        < </span>
    </a>
    <p class="mainname" style="bottom: 50px; margin-top: 0px;">ȸ������</p>
    </div>
    <div>
      <div class="textform">
        <div>
          <input type="text" name="id" class="id input1" placeholder="  ID �Է�">
          <button class="btn4" onclick="">�ߺ�üũ</button>
          <span class="check">üũ���</span>
        </div> 

        <div>
          <input type="text" name="email" class="id input1 next" placeholder="  �̸��� �Է�">
          <button class="btn4" onclick="" style="margin-top:15px">�ߺ�üũ</button>
          <span class="check">üũ���</span>
        </div>

        <input type="password" name="pw" class="id2 input next" placeholder="  ��й�ȣ �Է�">

        <input type="password" class="id2 input next" placeholder="  ��й�ȣ ���Է�">


        <input type="text" name="nick" class="id2 input next" placeholder="  �г��� �Է�">

        <div align="center" class="next">
          <input type="radio" id="man" name="gender" value="man" required checked />
          <label for="man">����</label>
          <input type="radio" id="woman" name="gender" value="woman" required />
          <label for="woman">����</label>
        </div>
        <div align="center">
          <button type="button" class="btn3 next">
            <a href="join2.html" style="color:white;">��������</a>
          </button>
        </div>
        </table>
      </div>
    </div>
  </form>


</body>

</html>