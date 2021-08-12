<%@page import="model.RecipeDAO"%>
<%@page import="model.RecipeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<%
	

	

	ArrayList<RecipeDTO> recipe = new ArrayList<RecipeDTO>();
	
	RecipeDAO dao = new RecipeDAO();
	recipe = dao.recipe_go();
	HttpSession session1 = request.getSession();
	
	session1.setAttribute("recipe", recipe);
	
	
	//���� ���� ������ ������ ��������
	
	
	//if (month != null) {
	//	int mon = Integer.parseInt(month);
	//	recipe = dao.season_food(mon);
	//}else{
	//	int mon = 1;
	//	recipe = dao.season_food(mon);
	//}
%>






<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .row {
            display: flex;
        }

        .left{
            text-align: left;
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
                    console.log("Ŭ����");
                    $(".list1").slice(num1, num2).attr("style", "display:flex");
                }

                else {
                    alert("���̻� �����ϴ� !!! ");
                }
            });
        });
    </script>
    <!-- Title -->
    <title>���� ������ - ������</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- ������ ��ǥ �̹��� -->
    <div id="preloader" algin="center">
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

    <!-- ���� ��-->
    <hr>
    <div>
        <ul style="text-align: center; ">
            <a class="test_font" style="font-size: 20px; border-bottom: 2px solid #adadad;" href="Disease_high_blood_pressure.html">������</a>
            &nbsp&nbsp
            <a class="test_font" style="font-size: 20px; " href="Disease_Diabetes.html">�索��</a>
            &nbsp&nbsp
            <a class="test_font" style="font-size: 20px;" href="Disease_respiratory.html">ȣ�����ȯ</a>
            &nbsp&nbsp
            <a class="test_font" style="font-size: 20px; " href="Disease_gastroenteritis.html">���庴</a>
        </ul>
    </div>
    <br>
    <div>
        <ul style="text-align: center;">
            <a class="test_font1" style="font-size: 17px; " href="Disease_high_blood_pressure.html">����</a>
            &nbsp&nbsp
            &nbsp&nbsp

            <a class="test_font1" style="font-size: 17px; " href="Disease_high_blood_pressure_food.jsp">
                �����</a>
            &nbsp&nbsp
            &nbsp&nbsp

            <a class="test_font1" style="font-size: 17px; border-bottom: 2px solid #adadad;" href="Disease_high_blood_pressure_recipe.html">
                ������</a>
        </ul>

    </div>


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
                            <!-- <class class="blog-thumbnail">
                                <div align="center" class="test_font" style="font-size: 25px; font-weight: bold;">
                                    <span style="color: brown;">�索<span style="color: black;">�� ���� �����ǿ���!</span></span>
                                </div>

                                <hr>
                                <br>
                            </class>
                            <section class="small-receipe-area section-padding-80-0">
                                <div class="container">
                                <div class="row"> -->
                    
    <!-- ##### ���� ������ ��õ ���� ##### -->
    <!-- <hr> -->
    <section class="small-receipe-area" >
        <div class="container">
            <!-- <h5 class="test_font" align="center" style="font-size: 25px;">����
                <span>���� �ǰ��� ���� ������ ��õ�ص����!</span>
            </h5> -->
            <div align="center" class="test_font" style="font-size: 25px; font-weight: bold;">
                <span style="color: brown;">������<span style="color: black;">�� ���� �����ǿ���!</span></span>
            </div>
            <h5 align="center" style="margin-bottom: 50px;"></h5>
            <div class="row">




<!--  ������� �����ϱ� hjk -->
		
                <!-- ������/ ����� �� ����-->
                <% for (int i=0; i < recipe.size(); i++){	%>


                <% 
                	//���⼭ ���� ������ ��ȣ �����ؼ� �ش�Ǵ� ��ȣ�� ����????
                %>
               <div class="col-12 col-sm-6 col-lg-4 list1 left">
                <div class="single-small-receipe-area d-flex">
                    <!-- Receipe Thumb -->
                    <a href="recipe_page.jsp?name=<%= recipe.get(i).getRecipe_name()%>">
                    
                    
                    <!--  <a href="ingredient_page.html">-->
                        <div class="receipe-thumb">
                            <img src="<%=recipe.get(i).getRecipe_img()%>" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ���� ���� ǥ��-->
                            <span>������</span>
                            <!-- ���� ��-->
                            <!-- RECIPE_NAME -->
                            <h5><%=recipe.get(i).getRecipe_name()%></h5>
                    </a>
                </div>
            </div>
        </div>
        <!-- ������/����� �� ����-->
        <% } %>

    </div>
    <p><button id="load" class="btn">������</button></p>






                        </div>


                        <!-- �ǵ���� �ϴ� �� -->
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
                                                <script>document.write(new Date().getFullYear());</script> | Project
                                                Team : 2X4=8 | Made By - ksj,kmj,hjg, kdh
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