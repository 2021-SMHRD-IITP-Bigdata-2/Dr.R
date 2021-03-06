<%@page import="model.FoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.FoodDAO"%>
<%@page import="model.MyfoodDAO"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<%
	UserDTO user = (UserDTO) session.getAttribute("login_User");
	MyfoodDAO mf = new MyfoodDAO();
	
	FoodDAO dao = new FoodDAO();
	/* ArrayList<String> dis = (ArrayList<String>)session.getAttribute("dis");
	ArrayList<FoodDTO> food = null;
	
	if(user != null){
		food = dao.food_custom(dis, mf.select_not(user.getU_id()));
	} */
	
	ArrayList<FoodDTO> food = (ArrayList<FoodDTO>)session.getAttribute("food1");
    
    
    %>
<head>
    <meta charset="EUC-KR">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .row {
            display: flex;
        }.btn {
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
            margin-left: 20px;
            font-family: 'allfonts';
            margin-left: 50px;
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
                    console.log("??????");
                    $(".list1").slice(num1, num2).attr("style", "display:flex");
                }

                else {
                    alert("?????? ???????? !!! ");
                }
            });
        });
    </script>
    <!-- Title -->
    <title>???? ??????</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>




<body>
    <!-- Preloader -->
    <div id="preloader">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- ?????? -->
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

    <!-- ##### ???? ???? ????/ ???? ???? ?????? ##### -->
    <header class="header-area">




        <!-- ???????? ???? -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- ???? / ?????? -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- ???? -->
                        <a class="nav-brand" href="main.jsp"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- ???? / ?????? ???? 3?? ???? ???? -->
                        <div class="classy-menu">

                            <!-- ???? / ?????? ???? 3?? ???? ???? -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- ???? ???? -->
                            <div class="classynav">
                                <ul>

                                    <!-- ?? ?? ???? -->
                                    <script>
                                        // ?????? ?????? ???????????? ????,
                                        // ?????? ???? ???????? ?????? ???????? ????
                                    </script>
                                    <li><a href="member_info.html">???? ??????</a></li>
                                    <li><a href="custom_ingredient.html">???? ??????</a></li>
                                    <li><a href="Season_products.jsp">???? ??????</a></li>


                                    <li><a href="Disease_high_blood_pressure.html">???? ????</a></li>
                                    <li><a href="Guide.html">???? ????</a></li>
                                    <!-- ?????? -->
                                    <li><a href="login.html" style="background-color: rgb(236, 236, 236);">Login</a>
                                    </li>

                                    <!-- ???????? -->
                                    <li><a href="join.jsp" style="background-color: rgb(236, 236, 236);">Join</a></li>

                                    <!-- ???? -->
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
        <!-- ???????? ?? -->
    </header>
    <!-- ##### ???? ???? ???? / ???????? ?????? ##### -->
    
    
    <!-- ##### ???? ?????? ???? ???? ##### -->
    <hr>
    <div>
        <ul style="text-align: center; ">
            <a class="test_font" style="font-size: 30px;" href="custom_ingredient.html">??????</a>
            &nbsp&nbsp
            <a class="test_font" style="font-size: 30px; border-bottom: 2px solid #adadad;" href="custom_recipe.html">??????</a>
        </ul>
    </div>
    <br>
    </div>

    <br>
    <br>
       <h5 class="test_font" align="center" style="font-size: 25px; margin-top: 20px;">????
        <span>???? ?????? ???? ?????? ????????????!</span>
    </h5>
    
    
    <section class="small-receipe-area ">
            <div class="container">
            <div class="row">

    <!-- ##### ???? ?????? ???? ???? ##### -->
    <hr>
    <section class="small-receipe-area ">
        <div class="container">
            <h5 align="center" style="margin-bottom: 50px;"></h5>
            <div class="row">

                <!-- ??????/ ?????? ?? ????-->
                <div class="col-12 col-sm-6 col-lg-4 list1">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <a href="ingredient_page.jsp">
                            <div class="receipe-thumb">
                                <img src="img/bg-img/sr1.jpg" alt="">
                            </div>
                            <!-- Receipe Content -->
                            <div class="receipe-content">
                                <br>
                                <!-- ???? ???? ????-->
                                <span>????</span>
                                <!-- ???? ??-->
                                <h5>?????? ?????? ????????</h5>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ??????/?????? ?? ????-->
            <!-- ??????/ ?????? ?? ????-->
            <div class="col-12 col-sm-6 col-lg-4 list1">
                <div class="single-small-receipe-area d-flex">
                    <!-- Receipe Thumb -->
                    <a href="ingredient_page.html">
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <!-- ???? ???? ????-->
                            <span>????</span>
                            <!-- ???? ??-->
                            <h5>?????? ?????? ????????</h5>
                    </a>
                </div>
            </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->


        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->
        <!-- ??????/ ?????? ?? ????-->
        <div class="col-12 col-sm-6 col-lg-4 list1">
            <div class="single-small-receipe-area d-flex">
                <!-- Receipe Thumb -->
                <a href="ingredient_page.html">
                    <div class="receipe-thumb">
                        <img src="img/bg-img/sr1.jpg" alt="">
                    </div>
                    <!-- Receipe Content -->
                    <div class="receipe-content">
                        <br>
                        <!-- ???? ???? ????-->
                        <span>????</span>
                        <!-- ???? ??-->
                        <h5>?????? ?????? ????????</h5>
                </a>
            </div>
        </div>
        </div>
        <!-- ??????/?????? ?? ????-->

        </div>
        <p><button id="load" class="btn">??????</button></p>


    <!-- ##### ???? ?????? ???? ???? ##### -->







<!-- ???? ???????? -->
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 h-100 d-flex flex-wrap align-items-center justify-content-between">
<!-- Footer Logo -->
<div class="footer-logo">
    <a href="main.jsp"><img src="img/core-img/logo.png" alt=""></a>
</div>
                    <!-- Copywrite -->
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Dr.R &copy;<script>document.write(new Date().getFullYear());</script> | Project Team name : 2X4=8 | Made By - ksj,kmj,hjg, kdh 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->









<!-- js ???? ???? -->
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