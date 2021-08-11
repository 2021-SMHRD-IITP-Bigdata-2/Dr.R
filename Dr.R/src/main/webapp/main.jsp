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
		dis.add("�索");
	if (user.getU_go() == 1)
		dis.add("������");
	if (user.getU_we() == 1)
		dis.add("����");
	if (user.getU_ho() == 1)
		dis.add("ȣ���");
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
	// �α��� ������ ������������ �̵�,
	// �α��� ���� �ʾ����� �α��� �������� �̵�
	// �α��� ���� ���� ����������, ���㷹���� �� ���̰� style�Ӽ� �ٲ��ֱ� 
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

	<!-- �˻�â -->
	<div class="search-wrapper">
		<!-- Close Btn -->
		<div class="close-btn">
			<i class="fa fa-times" aria-hidden="true"></i>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- �˻� ��  -->
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

	<!-- ##### ��� ���� �κ�/ ���� ���� ���ÿ� ##### -->
	<header class="header-area">




		<!-- �޴����� ���� -->
		<div class="delicious-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- �޴� / ������ -->
					<nav class="classy-navbar justify-content-between"
						id="deliciousNav">

						<!-- �ΰ� -->
						<a class="nav-brand" href="main.jsp"><img
							src="img/core-img/logo.png" alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- �޴� / ����� ȭ�� 3�� ��ư ���� -->
						<div class="classy-menu">

							<!-- �޴� / ����� ȭ�� 3�� ��ư �ݱ� -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- �޴� ���� -->
							<div class="classynav">
								<ul>

									<!-- �� �� �޴� -->

									<%
									if (user != null) {
									%>
									<li id="mypage"><a href="member_info.jsp">���� ������</a></li>

									<li><a href="custom_ingredient.html">���� ������</a></li>
									<%
									}
									%>

									<li><a href="Season_products.jsp">��ö �����</a></li>
									<li><a href="Disease_high_blood_pressure.html">���� ����</a></li>
									<li><a href="Guide.html">�̿� �ȳ�</a></li>
									<%
									if (user == null) {
									%>
									<!-- �α��� -->
									<li><a href="login.html"
										style="background-color: rgb(236, 236, 236);">�α���</a></li>

									<!-- ȸ������ -->
									<li><a href="join.jsp"
										style="background-color: rgb(236, 236, 236);">ȸ������</a></li>

									<!-- �˻� -->
									<%
									} else {
									%>
									<li><a href="logout.jsp"
										style="background-color: rgb(236, 236, 236);">�α׾ƿ�</a></li>
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
		<!-- �޴����� �� -->
	</header>
	<!-- ##### ��� ���� �κ� / �������� ���ÿ� ##### -->
	<hr>

	<section class="hero-area">
		<div class="hero-slides owl-carousel" style="padding: 50px 10px;">
			<!-- Single Hero Slide -->

			<!-- <div class="row"> -->

			<div class="single-hero-slide bg-img"
				style="background-image: url(<%=season.getFood_image()%>
            ); height:700px;">

				<div class="container h-100">

					<!-- ���� ���� ��� ��ġ��-->
					<div class="row h-100 align-items-center">

						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<!-- ���� ���� �Ӽ� -->
							<div class="hero-slides-content" style="margin-left: 50px;"
								data-animation="fadeInUp" data-delay="100ms">
								<!-- ������ ����� ��õ ��� 
                                ��ö ������ �������� �����Ͽ� �ش� ����� �󼼳��� ����ϱ�
                                span�±� ���� ������ �ش� ������ �ٲ��ָ� �� -->
								<h1 data-animation="fadeInUp" data-delay="300ms"
									style="color: white;">������ �����</h1>
								<h2 data-animation="fadeInUp" data-delay="300ms"><%=season.getFood_name()%></h2>
								<h6 data-animation="fadeInUp" data-delay="300ms"
									style="color: white;">
									��ö :
									<%=season.getFood_month()%>��
								</h6>
								<p data-animation="fadeInUp" data-delay="700ms"
									style="color: aliceblue;">
									<%=season.getFood_content()%>
								</p>
								<!-- ��ư�� ������ ������ �̵��� �� ����� �̸� �ѱ�� url �����ϱ� -->
								<a href="ingredient_page.jsp?name=<%=season.getFood_name()%>"
									class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="1000ms">���� ����</a>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<!-- ##### ������ ����� ��õ ���� ##### -->














	<!-- ##### ���� ������ ��õ ���� ##### -->
	<hr>
	<section class="small-receipe-area section-padding-80-0">
		<!-- �̰� �α��� ������ �г����� ��µǰ� , �α��� ���ϸ� �α��� �� ���񽺸� �̿��� �� �ִٴ� ���� ��� -->
		<div class="container">
			<%
			if (user == null) {
			%>
			<h5 class="test_font" align="center" style="font-size: 25px;">
				<span>�α����� �Ͻø� �ǰ��� ���� ������ ��õ�ص����!</span>
			</h5>
			<div align="center">
				<button id="btn" style="margin-left: 100px;"
					onclick="location.href='login.html'">�α���</button>
			</div>
			<%
			} else {
			%>
			<h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name()%>
				<span>���� �ǰ��� ���� ������ ��õ�ص����!</span>
			</h5>
			<h5 align="center" style="margin-bottom: 50px;"></h5>
			<div class="row">

				<%
				for (int i = 0; i < 8; i++) {
				%>
				<!-- ������/ ����� �� ����-->
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
							<!-- ���� ���� ǥ��-->
							<span class="test_font"> <%
 if (food.get(i).getFood_good() != null) {
 %>
								<%=food.get(i).getFood_good()%> <%
 }
 %>
							</span>
							<!-- ���� ��-->
							<span class="test_font"
								style="font-weight: bold; font-size: 20px; color: black;"><%=food.get(i).getFood_name()%></span>
							<a class="test_font"
								style="font-size: 11px; padding: 2px 3px; width: fit-content; background-color: #ececec; border-radius: 5px"
								href="custom_ingredient.html<%-- ?name=<%= food.get(i).getFood_name()%> --%>">�󼼺���</a>
						</div>
					</div>
				</div>
				<!-- ������/����� �� ����-->

				<%
				}
				%>
				<!-- ������/����� �� ����-->
			</div>
			<div align="center">
				<button id="btn" style="margin-left: 100px;"
					onclick="location.href='custom_ingredient.html'">������</button>
			</div>
			<!-- ##### ���� ������ ��õ ���� ##### -->
			<%
			}
			%>









			<!-- ##### ��ö ����� ��õ ���� ##### -->
			<section class="small-receipe-area section-padding-80-0">
				<hr>
				<br> <br>
				<div class="container">
					<%
					if (user == null) {
					%>
					<h5 class="test_font" align="center" style="font-size: 25px;"><%=month%>
						<span>���� ��ö ����ῡ��!</span>
					</h5>
					<%
					} else {
					%>
					<h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name()%>
						���� �ǰ��� ���� ��õ�ص帮�� <br><%=month%><span>���� ��ö ����ῡ��!</span>

					</h5>
					<%
					}
					%>
					<h5 align="center" style="margin-bottom: 50px;"></h5>
					<div class="row">

						<%
						for (int i = 0; i < 8; i++) {
						%>
						<!-- ������/ ����� �� ����-->
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
									<!-- ���� ���� ǥ��-->
									<span class="test_font"> <%
 if (food.get(i).getFood_good() != null) {
 %>
										<%=food.get(i).getFood_good()%> <%
 }
 %>
									</span>
									<!-- ���� ��-->
									<span class="test_font"
										style="font-weight: bold; font-size: 20px; color: black;"><%=food.get(i).getFood_name()%></span>
									<a class="test_font"
										style="font-size: 11px; padding: 2px 3px; width: fit-content; background-color: #ececec; border-radius: 5px"
										href="custom_ingredient.html<%-- ?name=<%= food.get(i).getFood_name()%> --%>">�󼼺���</a>
								</div>
							</div>
						</div>
						<!-- ������/����� �� ����-->

						<%
						}
						%>
						<!-- ������/����� �� ����-->
					</div>
					<!-- <<div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_ingredient.html'">������</button></div>
 -->
					<div align="center">
						<%
						if (user == null) {
						%>
						<button id="btn" style="margin-left: 100px;"
							onclick="location.href='Season_products.jsp?month=<%=month%>'">������</button>
					</div>
					<%
					} else {
					%>
					<button id="btn" style="margin-left: 100px;"
						onclick="location.href='custom_season_ingredient.html?month=<%=month%>'">������</button>
					<%
					}
					%>
				</div>
			</section>


			<!-- ##### ��ö ����� ��õ ���� ##### -->








			<!-- ���� ���ۺκ� -->
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









			<!-- js ���� �ε� -->
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