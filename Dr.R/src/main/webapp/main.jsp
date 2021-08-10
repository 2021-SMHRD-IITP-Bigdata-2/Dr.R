<%@page import="java.util.Date"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<% 
	UserDTO user = (UserDTO)session.getAttribute("login_User");
	Date time = new Date();
	int month = time.getMonth()+1;
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="euc-kr">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <!-- Title -->
    <title>Dr.R main</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/salad.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
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




<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- �˻�â -->
    <div class="search-wrapper">
        <!-- Close Btn -->
        <div class="close-btn"><i class="fa fa-times" aria-hidden="true"></i></div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" method="post">
                        <input type="search" name="search" placeholder="Type any keywords...">
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
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
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- �ΰ� -->
                        <a class="nav-brand" href="main.jsp"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- �޴� / ����� ȭ�� 3�� ��ư ���� -->
                        <div class="classy-menu">

                            <!-- �޴� / ����� ȭ�� 3�� ��ư �ݱ� -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- �޴� ���� -->
                            <div class="classynav">
                                <ul>

                                    <!-- �� �� �޴� -->
                                    <script>
                                        // �α��� ������ ������������ �̵�,
                                        // �α��� ���� �ʾ����� �α��� �������� �̵�
                                        // �α��� ���� ���� ����������, ���㷹���� �� ���̰� style�Ӽ� �ٲ��ֱ� 
                                        // visible : true or false
                                    </script>
                                    <li><a href="member_info.html">���� ������</a></li>
                                    <li><a href="custom_ingredient.html">���� ������</a></li>


                                    <li><a href="Season_products.jsp">��ö �����</a></li>
                                    <li><a href="Disease_high_blood_pressure.html">���� ����</a></li>
                                    <li><a href="Guide.html">�̿� �ȳ�</a></li>
                                    <% if(user == null){ %>
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
                                    <%} else{ %>
                                    <li><a href="logout.jsp" style="background-color: rgb(236, 236, 236);">�α׾ƿ�</a>
                                    </li>
                                    <%} %>
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
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
        
            <!-- <div class="row"> -->
            
            <div class="single-hero-slide bg-img" style="background-image: url(http://www.lampcook.com//wi_files/food_fish/fish_dic/20.jpg
            );">

                <div class="container h-100">

                    <!-- ���� ���� ��� ��ġ��-->
                    <div class="row h-100 align-items-center">

                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <!-- ���� ���� �Ӽ� -->
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <!-- ������ ����� ��õ ��� 
                                ��ö ������ �������� �����Ͽ� �ش� ����� �󼼳��� ����ϱ�
                                span�±� ���� ������ �ش� ������ �ٲ��ָ� �� -->
                                <h1 data-animation="fadeInUp" data-delay="300ms" style="color:white;">������ �����</h1>
                                 <h2 data-animation="fadeInUp" data-delay="300ms">�ɰ�</h2>
                                <h6 data-animation="fadeInUp" data-delay="300ms" style="color:white;">��ö : 8��</h6>
                                <p data-animation="fadeInUp" data-delay="700ms" style="color: aliceblue;">
                                    ������ ���� �ܹ�����
                                    ������ �ʼ� �ƹ̳���� ǳ���� ��� ��������� ȸ���� ȯ�ڿ��� �ſ� ���� �����̴�. ���� ����� ������ ��ȭ��Ű�� Ÿ�츰�� ���� �����Ǿ� ���κ�
                                    ���濡�� ����. �ɰԿ� ������ ö�а� Į��, �� ���� ������ ������ Ź���� ȿ���� �����ϸ� ��ȭ�������� ȿ���� �ִ�.
                                </p>
                                <!-- ��ư�� ������ ������ �̵��� �� ����� �̸� �ѱ�� url �����ϱ� -->
                                <a href="ingredient_page.jsp" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">���� ����</a>
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
        <%if(user == null){ %>
	          <h5 class="test_font" align="center" style="font-size: 25px;">
	                <span>�α����� �Ͻø� �ǰ��� ���� ������ ��õ�ص����!</span>
	            </h5>
	            <div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='login.html'">�α���</button></div>
          <%} else{%>
            <h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name() %>
                <span>���� �ǰ��� ���� ������ ��õ�ص����!</span>
            </h5>
            <h5 align="center" style="margin-bottom: 50px;"></h5>
            <div class="row">

                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                </div>
                <div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_recipe.html'">������</button></div>
                <!-- ##### ���� ������ ��õ ���� ##### -->
			<%} %>









                <!-- ##### ��ö ����� ��õ ���� ##### -->
                <section class="small-receipe-area section-padding-80-0">
                    <hr><br><br>
                    <div class="container">
                     <%if(user == null){ %>
	          <h5 class="test_font" align="center" style="font-size: 25px;"><%=month %>
                            <span>���� ��ö ����ῡ��!</span>
                        </h5>
          <%} else{%>
           <h5 class="test_font" align="center" style="font-size: 25px;"><%=user.getU_name() %> ���� �ǰ��� ���� ��õ�ص帮�� 
                            <br>8<span>���� ��ö ����ῡ��!</span>
                            
                        </h5>
                        <%} %>
                        <h5 align="center" style="margin-bottom: 50px;"></h5>
                        <div class="row">

                           <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                <!-- ������/ ����� �� ����-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <a href="recipe_page.html">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>�索</span>
                            <!-- ���� ��-->
                                <h5>����� ������ �����Ѵ�</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- ������/����� �� ����-->
                </div>
               <!-- <<div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_ingredient.html'">������</button></div>
 -->
             <div align="center">
	                <%if (user == null){ %>
	                <button id="btn" style="margin-left: 100px;" onclick="location.href='Season_products.jsp?month=<%=month%>'">������</button></div> 
	                <%} else{%>
	                <button id="btn" style="margin-left: 100px;" onclick="location.href='custom_season_ingredient.html?month=<%=month%>'">������</button></div> 
	                <%}%>
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
                                                <script>document.write(new Date().getFullYear());</script> | Project
                                                Team : 2X4=8 | Made By - ksj,kmj,hjg, kdh
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