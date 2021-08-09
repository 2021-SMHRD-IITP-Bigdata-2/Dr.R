<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 페이지 2</title>
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
    <p class="mainname" style="bottom: 50px; margin-top: 0px;">회원가입</p>
    </div>
    <div>
      <div class="textform">
        <div>
          <input type="text" name="id" class="id input1" placeholder="  ID 입력">
          <button class="btn4" onclick="">중복체크</button>
          <span class="check">체크결과</span>
        </div> 

        <div>
          <input type="text" name="email" class="id input1 next" placeholder="  이메일 입력">
          <button class="btn4" onclick="" style="margin-top:15px">중복체크</button>
          <span class="check">체크결과</span>
        </div>

        <input type="password" name="pw" class="id2 input next" placeholder="  비밀번호 입력">

        <input type="password" class="id2 input next" placeholder="  비밀번호 재입력">


        <input type="text" name="nick" class="id2 input next" placeholder="  닉네임 입력">

        <div align="center" class="next">
          <input type="radio" id="man" name="gender" value="man" required checked />
          <label for="man">남자</label>
          <input type="radio" id="woman" name="gender" value="woman" required />
          <label for="woman">여자</label>
        </div>
        <div align="center">
          <button type="button" class="btn3 next">
            <a href="join2.html" style="color:white;">다음으로</a>
          </button>
        </div>
        </table>
      </div>
    </div>
  </form>


</body>

</html>