<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="model.FoodDAO"%>
<%@page import="model.FoodDTO"%>
<%@page import="java.util.Date"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
UserDTO user = (UserDTO) session.getAttribute("login_User");
Date time = new Date();
int month = time.getMonth() + 1;

FoodDAO dao = new FoodDAO();
FoodDTO season = dao.seasonal_food(month);

ArrayList<String> dis = new ArrayList<>();
ArrayList<FoodDTO> food;

if (user != null) {
	if (user.getU_dang() == 1)
		dis.add("당뇨");
	if (user.getU_go() == 1)
		dis.add("고혈압");
	if (user.getU_we() == 1)
		dis.add("위장");
	if (user.getU_ho() == 1)
		dis.add("호흡기");
	food = dao.food_custom(dis);
} else {
	food = dao.season_food(month);
}
%>
<script>
	if (user != null) {
		$("#mypage").attr("style", "display:flex");
	} else
		$("#mypage").attr("style", "display:none");
	// 로그인 했으면 마이페이지로 이동,
	// 로그인 하지 않았으면 로그인 페이지로 이동
	// 로그인 했을 때만 마이페이지, 맞춤레시피 탭 보이게 style속성 바꿔주기 
	// visible : true or false
</script>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="euc-kr">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Title -->
<title>Dr.R</title>


<!-- Favicon -->
<link rel="icon" href="img/core-img/salad.png">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">
<script src="jquery-3.6.0.min.js"></script>
<style>
.row {
	display: flex;
}

#btn {
	position: relative;
	/* left: 40%; */
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
	margin-left: 20px;
	font-family: 'allfonts';
}
</style>

</head>




<body style="font-family: 'allfonts'">
	<!-- Preloader -->
	<div id="preloader">
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
					<!-- 검색 바  -->
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

									<%
									if (user != null) {
									%>
									<li id="mypage"><a href="member_info.jsp">마이 페이지</a></li>

									<li><a href="custom_ingredient.html">맞춤 레시피</a></li>
									<%
									}
									%>

									<li><a href="Season_products.jsp">제철 식재료</a></li>
									<li><a href="Disease_high_blood_pressure.html">질병 정보</a></li>
									<li><a href="Guide.html">이용 안내</a></li>
									<%
									if (user == null) {
									%>
									<!-- 로그인 -->
									<li><a href="login.html"
										style="background-color: rgb(236, 236, 236);">로그인</a></li>

									<!-- 회원가입 -->
									<li><a href="join.jsp"
										style="background-color: rgb(236, 236, 236);">회원가입</a></li>

									<!-- 검색 -->
									<%
									} else {
									%>
									<li><a href="logout.jsp"
										style="background-color: rgb(236, 236, 236);">로그아웃</a></li>
									<%
									}
									%>
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
	<hr>

	<section class="hero-area">
		<div class="hero-slides owl-carousel" style="padding: 50px 10px;">
			<!-- Single Hero Slide -->

			<!-- <div class="row"> -->

			<div class="single-hero-slide bg-img"
				style="background-image: url(<%=season.getFood_image()%>
            ); height:700px;">

				<div class="container h-100">

					<!-- 글자 상자 가운데 위치로-->
					<div class="row h-100 align-items-center">

						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<!-- 글자 상자 속성 -->
							<div class="hero-slides-content" style="margin-left: 50px;"
								data-animation="fadeInUp" data-delay="100ms">
								<!-- 오늘의 식재료 추천 기능 
                                제철 월에서 랜덤으로 추출하여 해당 식재료 상세내용 출력하기
                                span태그 안의 내용을 해당 값으로 바꿔주면 됨 -->
								<h1 data-animation="fadeInUp" data-delay="300ms"
									style="color: white;">오늘의 식재료</h1>
								<h2 data-animation="fadeInUp" data-delay="300ms"><%=season.getFood_name()%></h2>
								<h6 data-animation="fadeInUp" data-delay="300ms"
									style="color: white;">
									제철 :
									<%=season.getFood_month()%>월
								</h6>
								<p data-animation="fadeInUp" data-delay="700ms"
									style="color: aliceblue;">
									<%=season.getFood_content()%>
								</p>
								<!-- 버튼을 눌러서 페이지 이동할 때 식재료 이름 넘기게 url 설정하기 -->
								<a href="ingredient_page.jsp?name=<%=season.getFood_name()%>"
									class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="1000ms">정보 보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<!-- ##### 오늘의 식재료 추천 종료 ##### -->














	<!-- ##### 맞춤 레시피 추천 시작 ##### -->
	<hr>
	<section class="small-receipe-area section-padding-80-0">
		<!-- 이건 로그인 했을때 닉네임이 출력되게 , 로그인 안하면 로그인 후 서비스를 이용할 수 있다는 내용 출력 -->
		<div class="container">
			<%
			if (user == null) {
			%>
			<h5 class="test_font" align="center" style="font-size: 25px;">
				<span>로그인을 하시면 건강에 맞춰 음식을 추천해드려요!</span>
			</h5>
			<div align="center">
				<button id="btn" style="margin-left: 100px;"
					onclick="location.href='login.html'">로그인</button>
			</div>
			<%
			} else {
			%>
			<h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name()%>
				<span>님의 건강에 맞춰 음식을 추천해드려요!</span>
			</h5>
			<h5 align="center" style="margin-bottom: 50px;"></h5>
			<div class="row">

				<%
				for (int i = 0; i < 8; i++) {
				%>
				<!-- 레시피/ 식재료 글 시작-->
				<div class="col-12 col-sm-6 col-lg-4 list1">
					<div class="single-small-receipe-area d-flex">
						<!-- Receipe Thumb -->

						<div class="receipe-thumb" style="padding: 0px">
							<img style="height: 100px;"
								src="<%=food.get(i).getFood_image()%>" alt="">
						</div>
						<!-- Receipe Content -->
						<div class="receipe-content " style="padding-left: 10px">
							<br>
							<!-- 좋은 질병 표시-->
							<span class="test_font"> <%
 if (food.get(i).getFood_good() != null) {
 %>
								<%=food.get(i).getFood_good()%> <%
 }
 %>
							</span>
							<!-- 음식 명-->
							<span class="test_font"
								style="font-weight: bold; font-size: 20px; color: black;"><%=food.get(i).getFood_name()%></span>
							<a class="test_font"
								style="font-size: 11px; padding: 2px 3px; width: fit-content; background-color: #ececec; border-radius: 5px"
								href="custom_ingredient.html<%-- ?name=<%= food.get(i).getFood_name()%> --%>">상세보기</a>
						</div>
					</div>
				</div>
				<!-- 레시피/식재료 글 종료-->

				<%
				}
				%>
				<!-- 레시피/식재료 글 종료-->
			</div>
			<div align="center">
				<button id="btn" style="margin-left: 100px;"
					onclick="location.href='custom_ingredient.html'">더보기</button>
			</div>
			<!-- ##### 맞춤 레시피 추천 종료 ##### -->
			<%
			}
			%>









			<!-- ##### 제철 식재료 추천 시작 ##### -->
			<section class="small-receipe-area section-padding-80-0">
				<hr>
				<br> <br>
				<div class="container">
					<%
					if (user == null) {
					%>
					<h5 class="test_font" align="center" style="font-size: 25px;"><%=month%>
						<span>월의 제철 식재료에요!</span>
					</h5>
					<%
					} else {
					%>
					<h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name()%>
						님의 건강에 맞춰 추천해드리는 <br><%=month%><span>월의 제철 식재료에요!</span>

					</h5>
					<%
					}
					%>
					<h5 align="center" style="margin-bottom: 50px;"></h5>
					<div class="row">

						<%
						for (int i = 0; i < 8; i++) {
						%>
						<!-- 레시피/ 식재료 글 시작-->
						<div class="col-12 col-sm-6 col-lg-4 list1">
							<div class="single-small-receipe-area d-flex">
								<!-- Receipe Thumb -->

								<div class="receipe-thumb" style="padding: 0px">
									<img style="height: 100px;"
										src="<%=food.get(i).getFood_image()%>" alt="">
								</div>
								<!-- Receipe Content -->
								<div class="receipe-content " style="padding-left: 10px">
									<br>
									<!-- 좋은 질병 표시-->
									<span class="test_font"> <%
 if (food.get(i).getFood_good() != null) {
 %>
										<%=food.get(i).getFood_good()%> <%
 }
 %>
									</span>
									<!-- 음식 명-->
									<span class="test_font"
										style="font-weight: bold; font-size: 20px; color: black;"><%=food.get(i).getFood_name()%></span>
									<a class="test_font"
										style="font-size: 11px; padding: 2px 3px; width: fit-content; background-color: #ececec; border-radius: 5px"
										href="custom_ingredient.html<%-- ?name=<%= food.get(i).getFood_name()%> --%>">상세보기</a>
								</div>
							</div>
						</div>
						<!-- 레시피/식재료 글 종료-->

						<%
						}
						%>
						<!-- 레시피/식재료 글 종료-->
					</div>
					<!-- <<div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_ingredient.html'">더보기</button></div>
 -->
					<div align="center">
						<%
						if (user == null) {
						%>
						<button id="btn" style="margin-left: 100px;"
							onclick="location.href='Season_products.jsp?month=<%=month%>'">더보기</button>
					</div>
					<%
					} else {
					%>
					<button id="btn" style="margin-left: 100px;"
						onclick="location.href='custom_season_ingredient.html?month=<%=month%>'">더보기</button>
					<%
					}
					%>
				</div>
			</section>


			<!-- ##### 제철 식재료 추천 종료 ##### -->








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









			<!-- js 파일 로드 -->
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