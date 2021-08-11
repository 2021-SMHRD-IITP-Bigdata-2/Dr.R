<%@page import="model.MyfoodDAO"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	UserDTO user = (UserDTO) session.getAttribute("login_User");
	MyfoodDAO mf = new MyfoodDAO();
	String[] myfood = new String[5];
	
	if(user != null){
		myfood = mf.select_not(user.getU_id());
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
<style>
.row {
	display: flex;
}

.btn {
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
	margin-left: 100px;
	font-family: 'allfonts';
}

.list1 {
	/* visibility: hidden; */
	display: none;
	/* display: ; */
}
</style>
<script src="jquery-3.6.0.min.js"></script>
<script>
        let num1 = 0;
        let num2 = 4;
        $(function () {
            $(".list1").slice(num1, num2).attr("style", "display:flex");
            $("#load").click(function () {
                num1 += 4;
                num2 += 4;
                if (num1 < $(".list1").length) {
                    console.log("클릭됨");
                    $(".list1").slice(num1, num2).attr("style", "display:flex");
                }

                else {
                    alert("더이상 없습니다 !!! ");
                }
            });
        });
    </script>
<!-- Title -->
<title>맞춤 식재료</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">

</head>




<body>
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


	<!-- ##### 맞춤 레시피 추천 시작 ##### -->
	<hr>
	<div>
		<ul style="text-align: center;">
			<a class="test_font"
				style="font-size: 30px; border-bottom: 2px solid #adadad;"
				href="custom_ingredient.jsp">식재료</a> &nbsp&nbsp
			<a class="test_font" style="font-size: 30px;"
				href="custom_recipe.jsp">레시피</a>
		</ul>
	</div>
	<br>
	</div>
	<div>
		<ul style="text-align: center;">
			<a class="test_font1"
				style="font-size: 17px; border-bottom: 2px solid #adadad;"
				href="custom_ingredient.jsp">일반</a> &nbsp&nbsp &nbsp&nbsp

			<a class="test_font1" style="font-size: 17px;"
				href="custom_season_ingredient.jsp">제철</a>
		</ul>

	</div>
	<br>
	<hr>
	<br>
	<h5 class="test_font" align="center"
		style="font-size: 25px; margin-top: 20px;">
		도훈 <span>님의 건강에 맞춰 음식을 추천해드려요!</span>
	</h5>


	<section class="small-receipe-area ">
		<div class="container">
			<div class="row">

				<!-- ##### 맞춤 레시피 추천 시작 ##### -->
				<hr>
				<section class="small-receipe-area ">
					<div class="container">
						<h5 align="center" style="margin-bottom: 50px;"></h5>
						<div class="row">

							<!-- 레시피/ 식재료 글 시작-->
							<div class="col-12 col-sm-6 col-lg-4 list1">
								<div class="single-small-receipe-area d-flex">
									<!-- Receipe Thumb -->
									<a href="ingredient_page.jsp">
										<div class="receipe-thumb">
											<img src="img/bg-img/sr1.jpg" alt="">
										</div> <!-- Receipe Content -->
										<div class="receipe-content">
											<br>
											<!-- 좋은 질병 표시-->
											<span>당뇨</span>
											<!-- 음식 명-->
											<h5>우엉이 세상을 정복한다</h5>
									</a>
								</div>
							</div>
						</div>
						<!-- 레시피/식재료 글 종료-->
						<!-- 레시피/ 식재료 글 시작-->
						<div class="col-12 col-sm-6 col-lg-4 list1">
							<div class="single-small-receipe-area d-flex">
								<!-- Receipe Thumb -->
								<a href="ingredient_page.html">
									<div class="receipe-thumb">
										<img src="img/bg-img/sr1.jpg" alt="">
									</div> <!-- Receipe Content -->
									<div class="receipe-content">
										<br>
										<!-- 좋은 질병 표시-->
										<span>당뇨</span>
										<!-- 음식 명-->
										<h5>우엉이 세상을 정복한다</h5>
								</a>
							</div>
						</div>
					</div>
					<!-- 레시피/식재료 글 종료-->
					<!-- 레시피/ 식재료 글 시작-->
					<div class="col-12 col-sm-6 col-lg-4 list1">
						<div class="single-small-receipe-area d-flex">
							<!-- Receipe Thumb -->
							<a href="ingredient_page.html">
								<div class="receipe-thumb">
									<img src="img/bg-img/sr1.jpg" alt="">
								</div> <!-- Receipe Content -->
								<div class="receipe-content">
									<br>
									<!-- 좋은 질병 표시-->
									<span>당뇨</span>
									<!-- 음식 명-->
									<h5>우엉이 세상을 정복한다</h5>
							</a>
						</div>
					</div>
			</div>
			<!-- 레시피/식재료 글 종료-->
			<!-- 레시피/ 식재료 글 시작-->
			<div class="col-12 col-sm-6 col-lg-4 list1">
				<div class="single-small-receipe-area d-flex">
					<!-- Receipe Thumb -->
					<a href="ingredient_page.html">
						<div class="receipe-thumb">
							<img src="img/bg-img/sr1.jpg" alt="">
						</div> <!-- Receipe Content -->
						<div class="receipe-content">
							<br>
							<!-- 좋은 질병 표시-->
							<span>당뇨</span>
							<!-- 음식 명-->
							<h5>우엉이 세상을 정복한다</h5>
					</a>
				</div>
			</div>
		</div>
		<!-- 레시피/식재료 글 종료-->


		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->
		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->
		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->
		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->
		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->
		<!-- 레시피/ 식재료 글 시작-->
		<div class="col-12 col-sm-6 col-lg-4 list1">
			<div class="single-small-receipe-area d-flex">
				<!-- Receipe Thumb -->
				<a href="ingredient_page.html">
					<div class="receipe-thumb">
						<img src="img/bg-img/sr1.jpg" alt="">
					</div> <!-- Receipe Content -->
					<div class="receipe-content">
						<br>
						<!-- 좋은 질병 표시-->
						<span>당뇨</span>
						<!-- 음식 명-->
						<h5>우엉이 세상을 정복한다</h5>
				</a>
			</div>
		</div>
		</div>
		<!-- 레시피/식재료 글 종료-->

		</div>
		<div align="center">
			<button id="load" class="btn">더보기</button>
		</div>








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
							<script>document.write(new Date().getFullYear());</script>
							| Project Team name : 2X4=8 | Made By - ksj,kmj,hjg, kdh
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