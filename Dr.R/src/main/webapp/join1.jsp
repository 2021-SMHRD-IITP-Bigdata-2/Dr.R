<%@page import="model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 페이지 1</title>
<link rel="stylesheet" href="Handmade.css">
<script src="jquery-3.6.0.min.js"></script>
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

.butn2 {
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

.check {
	margin-left: 30px;
	font-size: 13px;
	color:black;
}
</style>

</head>

<body width="100%" height="100%">

	<form action="join2.html" method="post" class="loginForm">
		<br> <a href="login.html"> <span class="backspace"> <
		</span>
		</a>
		<p class="mainname" style="bottom: 50px; margin-top: 0px;">회원가입</p>
		</div>
		<div>
			<div class="textform">

				<div>
					<input type="text" id="id" name="id" class="id input1"
						placeholder="  ID 입력"> <input type="button" class="btn4"
						value="중복체크" onclick="idCheck()"> <span class="check"
						id="id_check">아이디를 입력하세요</span>

				</div>


				<div>
					<input type="text" id="email" name="email" class="id input1 next"
						placeholder="  이메일 입력"> <input type="button" class="btn4"
						style="margin-top: 15px" value="중복체크" onclick="emailCheck()">
					<span class="check" id="email_check">이메일을 입력하세요</span>
				</div>

				<input type="password" name="pw" class="id2 input next"
					placeholder="  비밀번호 입력"> <input type="password"
					class="id2 input next" placeholder="  비밀번호 재입력"> <input
					type="text" name="nick" class="id2 input next"
					placeholder="  닉네임 입력">

				<div align="center" class="next">
					<input type="radio" id="man" name="gender" value="man" required
						checked /> <label for="man">남자</label> <input type="radio"
						id="woman" name="gender" value="woman" required /> <label
						for="woman">여자</label>
				</div>
				<div align="center">
					<input type="submit" value="다음으로" class="btn3 next">
					<!--  <a href="join2.html" style="color:white;">다음으로</a>
          </button> -->
				</div>
				</table>
			</div>
		</div>
	</form>

	<script>
	function idCheck(){
		var input = document.getElementById("id");
		
		$.ajax({
			type:"post",
			data:{"u_id": input.value},
			url: "idCheckCon",
			dataType:"text",
			success: function(data){
				var idcheck = document.getElementById("id_check");
				if(data == "true"){
					idcheck.innerHTML = "사용불가능한 아이디입니다 :p";
					idcheck.style.color="red";
				}
				else{
					idcheck.innerHTML = "사용가능한 아이디입니다 XD";
					idcheck.style.color="blue";
				}
			},
			error: function(){
				alert("실패 !!!!");
			}
		});
	}
	
	function emailCheck(){
		var input2 = document.getElementById("email");
		
		$.ajax({
			type:"post",
			data:{"u_email": input2.value},
			url: "emailCheckCon",
			dataType:"text",
			success: function(data1){
				var emailcheck = document.getElementById("email_check");
				if(data1 == "true"){
					emailcheck.innerHTML = "사용불가능한 이메일입니다 :p";
					emailcheck.style.color="red";
				}
				else{
					emailcheck.innerHTML = "사용가능한 이메일입니다 XD";
					emailcheck.style.color="blue";
				}
			},
			error: function(){
				alert("실패 !!!!");
			}
		});
	}
</script>
</body>

</html>