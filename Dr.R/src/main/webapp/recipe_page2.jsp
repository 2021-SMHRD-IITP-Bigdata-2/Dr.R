<%@page import="model.RecipeDAO"%>
<%@page import="model.RecipeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<%

//HttpSession session1 = request.getSession(); 
request.getSession(); 
ArrayList<RecipeDTO> recipe = new ArrayList<RecipeDTO>();
RecipeDAO dao = new RecipeDAO();
String name = request.getParameter("name");
recipe = (ArrayList)session.getAttribute("recipe");

int cnt = -1;
for (int i = 0; i < recipe.size(); i++) {
	if (recipe.get(i).getRecipe_name().equals(name)) {
		cnt = i;
	} else
		continue;
}

%>


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

        .like {
            background-color: white;
            padding: 0px 5px;
            border-radius: 10px;
            border: white;
        }
    </style>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Title -->
    <title>레시피 상세 페이지</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <script src="jquery-3.6.0.min.js"></script>
    <script>
        $(function () {
            $(".like").click(function () {
                $("#like").attr("src", "https://image.flaticon.com/icons/png/128/39/39559.png");
            });
        });


    </script>
</head>

<body>
    <!-- 레시피 대표 이미지 -->
    <div id="preloader" algin="center">
        <i class="circle-preloader"></i>
        <img src="img/core-img/salad.png" alt="">
    </div>

    <!-- 검색창 -->
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

    <!-- ##### 헤더 시작 부분/ 삭제 하지 마시오 ##### -->
    <header class="header-area">




        <!-- 메뉴관련 시작 -->
        <div class="delicious-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- 메뉴 / 디자인 -->
                    <nav class="classy-navbar justify-content-between" id="deliciousNav">

                        <!-- 로고 -->
                        <a class="nav-brand" href="main.jsp"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- 메뉴 / 모바일 화면 3줄 버튼 생성 -->
                        <div class="classy-menu">

                            <!-- 메뉴 / 모바일 화면 3줄 버튼 닫기 -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
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
                                    <li><a href="login.html" style="background-color: rgb(236, 236, 236);">Login</a>
                                    </li>

                                    <!-- 회원가입 -->
                                    <li><a href="join.jsp" style="background-color: rgb(236, 236, 236);">Join</a></li>

                                    <!-- 검색 -->
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
        <!-- 메뉴관련 끝 -->
    </header>
    <!-- ##### 헤더 종료 부분 / 삭제하지 마시오 ##### -->
    <hr>




    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-80" align="center">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Blog Area -->
                        <div class="single-blog-area mb-80">
                            <!-- Thumbnail -->
                            <class class="blog-thumbnail">
                                <img src="<%=recipe.get(cnt).getRecipe_img()%>

                                " alt="">
                                <br><br><br>
                                <h3 class="test_font"><span style="margin-left: 30px;"><%=recipe.get(cnt).getRecipe_name()%></span>
                                <!--   -->
                                    <button class="like"><img id="like"
                                            src="https://image.flaticon.com/icons/png/128/31/31611.png"
                                            style="width:30px; height:30px;"></button>
                                </h3>
                                <p style="font-size: 17px; color: rgb(130, 78, 0); font-family: allfonts">조리 방법 : <%=recipe.get(cnt).getRecipe_method()%>
                                </p>

                                <div>
                                    <br>
                                    <hr>
                                    <br>
                                    <a class="test_font1" style="font-size: 25px;">재료 정보</a>
                                    <br>
                                    <br>
                                    <p style="font-size: 17px; color: black;"><%=recipe.get(cnt).getRecipe_food()%>
                                    
                                    </p>
                                </div>
                                <br>
                                <hr>

                                <br>
                                <br>





                                <!-- Post Date -->

                            </class>
                            <!-- 건드려야 하는 곳 -->
                            <h4 class="test_font" style="font-size: 25px; margin-bottom: 30px;">조리과정</h4>
                            <div align="center" style="color: black; text-align: left;">
                                <img alt="" style="width: 100%;"
                                    src="<%=recipe.get(cnt).getRecipe_cook1()%>">
                                <br>
                                <img alt=""
                                    src="<%=recipe.get(cnt).getRecipe_cook2()%>"> 

                            </div>
                            <!-- 건드려야 하는 곳 -->

                            <br><br><br>
                        </div>
                    </div>

                    <!-- 댓글 공간 -->
                    <hr>
                    <form>
                        <textarea rows="5" cols="50" style="border: 1px solid gray;"></textarea>
                        <input class="btn" style="vertical-align: top; margin-left: 30px; line-height:90px;" type="submit" value="댓글작성">
                    </form>
                    <hr>
                    <div align="left">
                    <div style="color: darkgray;">도훈잉님</div>
                    <div style="color: rgb(54, 53, 53); margin-bottom: 5px;">고구마죽 넘 맛있어요 ~</div>
                    <div style="color: darkgray;">도훈잉님</div>
                    <div style="color: rgb(54, 53, 53); margin-bottom: 5px;">고구마죽 넘 맛있어요 ~</div>
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