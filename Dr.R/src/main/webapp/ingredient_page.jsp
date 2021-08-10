<%@page import="model.FoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.FoodDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String name = request.getParameter("name");

FoodDAO dao = new FoodDAO();
ArrayList<FoodDTO> food = new ArrayList<FoodDTO>();

food = dao.all_food();
int cnt = -1;
for(int i = 0; i<food.size();i++){
	if(food.get(i).getFood_name().equals(name)){
		cnt=i;
	}else
		continue;
}

FoodDTO detail = new FoodDTO(food.get(cnt).getFood_code(), food.get(cnt).getFood_name(), food.get(cnt).getFood_content(), food.get(cnt).getFood_image(), food.get(cnt).getFood_month(), food.get(cnt).getFood_good());



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
<title>����� �� ������</title>

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

	<!-- �˻�â -->
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
                                    <script>
                                        // �α��� ������ ������������ �̵�,
                                        // �α��� ���� �ʾ����� �α��� �������� �̵�
                                    </script>
                                    <li><a href="member_info.html">���� ������</a></li>
                                    <li><a href="custom_ingredient.html">���� ������</a></li>
                                    
                                    
                                    <li><a href="Season_products.jsp">��ö �����</a></li>
                                    <li><a href="Disease_high_blood_pressure.html">���� ����</a></li>
                                    <li><a href="Guide.html">�̿� �ȳ�</a></li>
                                    <!-- �α��� -->
                                    <li><a href="login.html" style="background-color: rgb(236, 236, 236);">Login</a>
                                    </li>

                                    <!-- ȸ������ -->
                                    <li><a href="join.jsp" style="background-color: rgb(236, 236, 236);">Join</a></li>

                                    <!-- �˻� -->
                                    <li>
                                        <div class="search-btn">
                                            <i class="fa fa-search" aria-hidden="true" style="font-size: 30px;"></i>
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
							src="<%= detail.getFood_image() %>"
							alt=""> <br>
						<br>
						<br>
						
					 	<h3 class="test_font"><%= detail.getFood_name()  %></h3>
						<span class="test_font1" style="color: rgb(100, 181, 213);">��ö:
							<span class="test_font1" style="color: rgb(100, 181, 213);">
								<%=  detail.getFood_month()%>��</span>
						</span> &nbsp <span class="test_font1" style="color: rgb(141, 35, 35);">
						<%=  detail.getFood_good()  %>
						<span class="test_font1" style="color: rgb(141, 35, 35);">
								�� ���ƿ�</span>
						</span>
						<hr>
						<br>


						<!-- �� ���� -->
						<h4 class="test_font"
							style="font-size: 25px; margin-bottom: 30px;">�� ����</h4>
						</class>
						<div style="color: black; text-align: left;">
							<p class="black_font"><%= detail.getFood_content() %></p>
						</div>
						<br>
						<hr>

						<br>
						<!-- ���� ������ -->
						<h4 class="test_font"
							style="font-size: 25px; margin-bottom: 30px;">���� ������</h4>

						<!-- ##### ���� ������ ��õ ���� ##### -->
						<hr>
						<section class="small-receipe-area section-padding-80-0">
							<div class="container">
								<h5 class="test_font" align="center" style="font-size: 25px;">
									<%= detail.getFood_name() %><span>��(��) ���õ� �丮 ����̿���!</span>
								</h5>
								<h5 align="center" style="margin-bottom: 50px;"></h5>
								<div class="row">

									<!-- ������/ ����� �� ����-->
									<div class="col-12 col-sm-6 col-lg-4">
										<div class="single-small-receipe-area d-flex">
											<!-- Receipe Thumb -->
											<div class="receipe-thumb">
												<img src="img/bg-img/sr1.jpg" alt="">
											</div>
											<!-- Receipe Content -->
											<div class="receipe-content recipe">
												<br>
												<!-- ���� ���� ǥ��-->
												<span>�索</span>
												<!-- ���� ��-->
												<a href="receipe-post.html">
													<h5>����</h5>
												</a>

											</div>
										</div>
									</div>
									<!-- ������/����� �� ����-->
			
			



								</div>


							</div>
					</div>

				</div>

			</div>


		</div>
	</div>
	</div>
	<!-- ##### Blog Area End ##### -->




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
						<script>document.write(new Date().getFullYear());</script>
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