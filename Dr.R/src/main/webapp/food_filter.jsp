<%@page import="java.util.ArrayList"%>
<%@page import="model.MyfoodDTO"%>
<%@page import="model.MyfoodDAO"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
UserDTO user = (UserDTO)session.getAttribute("login_User");
MyfoodDAO mf = new MyfoodDAO();
ArrayList<MyfoodDTO> nf = new ArrayList<MyfoodDTO>();




int size = 0;

for (int i=0, j=1; i<5; i++, j++) {
	if(mf.select_not(user.getU_id())[i] != null){
		size= j;
	}
}
%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery-3.6.0.min.js"></script>
<!-- Title -->
<title>알러지, 못먹는 음식</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->

<link rel="stylesheet" href="style.css">
<style>
.row {
	display: flex;
}

button {
	all: unset;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 100px;
	height: 40px;
	background: rgb(244, 105, 19);
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
	border-radius: 12px;
	margin-left: 50px;
	font-size: 16px;
	padding: 3px 5px;
}

.btn10 {
	position: relative;
	left: 50%;
	line-height: 60px;
	transform: translateX(-50%);
	width: 60px;
	height: 60px;
	background: #f3f5f8;
	color: rgb(0, 0, 0);
	font-weight: bold;
	border: none;
	/* cursor: pointer; */
	/* transition: 0.4s; */
	/* display: inline; */
	font-size: 15px;
}

.list1 {
	/* visibility: hidden; */
	display: none;
	/* display: ; */
}

.food_tb {
	margin-top: 20px;
	background-color: rgb(240, 240, 240);
	border-radius: 11px;
}

.foodlist {
	width: 350px;
	text-align: center;
	border-radius: 10px;
	background-color: rgb(240, 240, 240);
}

.out {
	width: 50px;
	text-align: center;
	background-color: rgb(151, 188, 206);
	color: white;
	border-radius: 10px;
}

.foodlist_text {
	width: 350px;
	height: 50px;
	border-radius: 10px;
	border: rgba(0, 0, 0, 0);
	text-align: center;
}

.in {
	width: 50px;
	text-align: center;
	background-color: rgb(255, 94, 0);
	color: white;
	border-radius: 10px;
}
</style>
<script src="jquery-3.6.0.min.js"></script>
</head>


<body>

	<!-- 레시피 대표 이미지 -->
	<div id="preloader" algin="center">
		<i class="circle-preloader"></i> <img src="img/core-img/salad.png"
			alt="">
	</div>

	<!-- 검색창 -->
	<div class="search-wrapper">
		<!-- Close Btn -->
		<div class="close-btn">
			<i class="fa fa-times" aria-hidden="true"></i>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="#" method="post">
						<input type="search" name="search"
							placeholder="Type any keywords...">
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### 헤더 시작 부분/ 삭제 하지 마시오 ##### -->
	<header class="header-area">




		<!-- 메뉴관련 시작 -->
		<div class="delicious-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- 메뉴 / 디자인 -->
					<nav class="classy-navbar justify-content-between"
						id="deliciousNav">

						<!-- 로고 -->
						<a class="nav-brand" href="main.jsp"><img
							src="img/core-img/logo.png" alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- 메뉴 / 모바일 화면 3줄 버튼 생성 -->
						<div class="classy-menu">

							<!-- 메뉴 / 모바일 화면 3줄 버튼 닫기 -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- 메뉴 묶음 -->
							<div class="classynav">
								<ul>

									<!-- 그 외 메뉴 -->
									<script>
                                        // 로그인 했으면 마이페이지로 이동,
                                        // 로그인 하지 않았으면 로그인 페이지로 이동
                                    </script>
									<li><a href="member_info.html">마이 페이지</a></li>
									<li><a href="custom_ingredient.html">맞춤 레시피</a></li>


									<li><a href="Season_products.jsp">제철 식재료</a></li>
									<li><a href="Disease_high_blood_pressure.html">질병 정보</a></li>
									<li><a href="Guide.html">이용 안내</a></li>
									<!-- 로그인 -->
									<li><a href="login.html"
										style="background-color: rgb(236, 236, 236);">Login</a></li>

									<!-- 회원가입 -->
									<li><a href="join.jsp"
										style="background-color: rgb(236, 236, 236);">Join</a></li>

									<!-- 검색 -->
									<li>
										<div class="search-btn">
											<i class="fa fa-search" aria-hidden="true"
												style="font-size: 30px;"></i>
										</div>
									</li>
							</div>
						</div>

					</nav>
				</div>
			</div>
		</div>
		<!-- 메뉴관련 끝 -->
	</header>
	<!-- ##### 헤더 종료 부분 / 삭제하지 마시오 ##### -->

	<!-- 질병 탭-->
	<hr>
	<br>
	<br>
	<div align="center">
		<div>
			<span class="test_font"
				style="font-weight: bold; font-size: 25px; color: rgb(85, 133, 89);">알러지</span>
			<span class="test_font"
				style="font-weight: bold; font-size: 25px; color: rgb(65, 64, 64);">나
				못먹는</span> <span class="test_font"
				style="font-weight: bold; font-size: 25px; color: rgb(65, 64, 64);">식재료</span>
			<span class="test_font"
				style="font-weight: bold; font-size: 25px; color: rgb(65, 64, 64);">를
				입력하세요!</span>
		</div>

		<div align="center" style="margin-top: 3%; margin-bottom: 10%;">
			<span class="test_font"
				style="font-weight: bold; font-size: 17px; color: rgb(97, 97, 97);">
				<span>Dr.R은 <%=user.getU_name() %>님이 입력한 식재료를 제외한 음식 결과를
					보여드립니다.
			</span>
			</span>
		</div>



		<!-- 입력된 식재료 목록 -->
		<% for (int i = 0 ; i< size; i++) {%>
		<div align="center" style="margin-top: 50px;">
			<table class="test_font food_tb list">
				<tr>
					<td class="foodlist"><span class="test_font"
						style="font-size: 17px; font-weight: bold;" name="list"> 
						<!-- 사용자가 입력한 식재료 명 출력 -->
							<%= mf.select_not(user.getU_id())[i] %>
					</span></td>

					<td class="out">
						<!-- 삭제 기능 만드는 곳-->
						<button onclick="location.href=#">-</button>
					</td>
				</tr>
			</table>
		</div>
		<%} %>



		<!-- 새로운 식재료 입력하는 곳-->
		<%if (size != 5) { %>
		<form action="insert_notCon" method="post">
			<table class="test_font food_tb">
				<tr>
					<td class="foodlist"><input type="text" class="foodlist_text"
						name="notfood" style="font-size: 17px; font-weight: 600;"
						placeholder="추가할 식재료를 입력하세요" name="foodname"> </input>
						</td>
						<input type="hidden" name="size" value="<%=size%>">
					<td class="in"><button style="font-size: 17px; font-weight: 600;">입력</button></td>
				</tr>
			</table>
		</form>
		<%} %>
	</div>







	<!-- ##### Blog Area End ##### -->

	<!-- 포터 시작부분 -->
	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
		<div class="container h-100">
			<div class="row h-100">
				<div
					class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
					<!-- Footer Logo -->
					<div class="footer-logo">
						<a href="main.jsp"><img src="img/core-img/logo.png" alt=""></a>
					</div>
					<!-- Copywrite -->
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Dr.R &copy;
						<script>
                            document.write(new Date().getFullYear());
                        </script>
						| Project Team : 2X4=8 | Made By - ksj,kmj,hjg, kdh
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->






	<!-- ##### All Javascript Files ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>

</html>