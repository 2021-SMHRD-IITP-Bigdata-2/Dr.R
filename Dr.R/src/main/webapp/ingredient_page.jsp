<%@page import="model.RecipeDTO"%>
<%@page import="model.RecipeDAO"%>
<%@page import="model.FoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.FoodDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String name = request.getParameter("name");

// 식재료 관련
FoodDAO dao = new FoodDAO();
ArrayList<FoodDTO> food = new ArrayList<FoodDTO>();

food = dao.all_food();
int cnt = -1;
for (int i = 0; i < food.size(); i++) {
	if (food.get(i).getFood_name().equals(name)) {
		cnt = i;
	} else
		continue;
}

FoodDTO detail = new FoodDTO(food.get(cnt).getFood_code(), food.get(cnt).getFood_name(),
		food.get(cnt).getFood_content(), food.get(cnt).getFood_image(), food.get(cnt).getFood_month(),
		food.get(cnt).getFood_good());



// 레시피 관련
RecipeDAO dao2 = new RecipeDAO();
ArrayList<RecipeDTO> recipe = new ArrayList<RecipeDTO>();

recipe = dao2.recipe_food(name);
%>


<!DOCTYPE html>
<html lang="en">

<head>
<style>
#menu1 ul {
	width: 500px;
	margin: 0 auto;
	overflow: hidden;
}

#menu1 ul li {
	float: left;
	width: 25%;
	height: 100px;
	line-height: 60px;
	text-align: center;
}

#menu1 ul li a {
	display: block;
}

#menu1 ul li a:hover {
	color: gray;
}

.recipe {
	text-align: left;
}
</style>
<meta charset="UTF-8">
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
</style>
<!-- Title -->
<title>식재료 상세 페이지</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="style.css">

</head>

<body>
	<!-- Preloader -->
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
	<hr>




	<!-- ##### Blog Area Start ##### -->
	<div class="blog-area section-padding-80" align="center">
		<div class="container">
			<!-- <div class="row"> -->
			<div class="col-12 col-lg-8">
				<div class="blog-posts-area">

					<!-- Single Blog Area -->
					<div class="single-blog-area mb-80">
						<!-- Thumbnail -->
						<class class="blog-thumbnail"> <img
							src="<%=detail.getFood_image()%>" alt=""> <br>
						<br>
						<br>

						<h3 class="test_font"><%=detail.getFood_name()%></h3>
						<span class="test_font1" style="color: rgb(100, 181, 213);">제철:
							<span class="test_font1" style="color: rgb(100, 181, 213);">
								<%=detail.getFood_month()%>월
						</span>
						</span> 
						<% if(detail.getFood_good() != null){%>
						&nbsp 
						<span class="test_font1" style="color: rgb(141, 35, 35);">
							<%=detail.getFood_good()%> <span class="test_font1"
							style="color: rgb(141, 35, 35);"> 에 좋아요</span>
						</span>
								<%}else {}%>
						<hr>
						<br>


						<!-- 상세 내용 -->
						<h4 class="test_font"
							style="font-size: 25px; margin-bottom: 30px;">상세 내용</h4>
						</class>
						<div style="color: black; text-align: left;">
							<p class="black_font"><%=detail.getFood_content()%></p>
						</div>
						<br>
						<hr>

						<br>
						<!-- 관련 레시피 -->
						<h4 class="test_font"
							style="font-size: 25px; margin-bottom: 0px;">관련 레시피</h4>



						<!-- ##### 맞춤 레시피 추천 시작 ##### -->
						<section class="small-receipe-area section-padding-80-0">
							<div class="container">
								<h5 class="test_font" align="center" style="font-size: 25px;">
									<%=detail.getFood_name()%><span>와(과) 관련된 요리 목록이에요!</span>
								</h5>
								<h5 align="center" style="margin-bottom: 50px;"></h5>
								<div class="row">
								
								
						<%for(int i = 0; i < recipe.size(); i ++) {%>
									<!-- 레시피/ 식재료 글 시작-->
									<div class="col-12 col-sm-6 col-lg-4 list1">
										<div class="single-small-receipe-area d-flex" style="text-align:left;">
											<!-- Receipe Thumb -->

											<div class="receipe-thumb" style="padding: 0px">
												<img style="height: 100px;" src="<%=recipe.get(i).getRecipe_img() %>" alt="">
											</div>
											<!-- Receipe Content -->
											<div class="receipe-content " style="padding-left: 10px">
												<br>
												<!-- 좋은 질병 표시-->
												<span class="test_font"><%=recipe.get(i).getRecipe_method() %> </span>
												<!-- 음식 명-->
												<span class="test_font"
													style="font-weight: bold; font-size: 20px; color: black;"><%=recipe.get(i).getRecipe_name() %></span>
												<a class="test_font"
													style="font-size: 11px; padding: 2px 3px; width: fit-content; background-color: #ececec; border-radius: 5px"
													href="recipe_page.jsp?name=<%=recipe.get(i).getRecipe_name() %>">상세보기</a>
											</div>
										</div>
									</div>
									<!-- 레시피/식재료 글 종료-->
						<%} %>
								</div>





							</div>
					</div>

				</div>

			</div>


		</div>
	</div>
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