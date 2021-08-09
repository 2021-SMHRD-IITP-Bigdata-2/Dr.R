<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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
                        <a class="nav-brand" href="index.html"><img src="img/core-img/logo.png" alt=""></a>

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
                                        // 로그인 했을 때만 마이페이지, 맞춤레시피 탭 보이게 style속성 바꿔주기 
                                        // visible : true or false
                                    </script>
                                    <li><a href="member_info.html">마이 페이지</a></li>
                                    <li><a href="custom_ingredient.html">맞춤 레시피</a></li>


                                    <li><a href="Season_products.html">제철 식재료</a></li>
                                    <li><a href="Disease_high_blood_pressure.html">질병 정보</a></li>
                                    <li><a href="Guide.html">이용 안내</a></li>
                                    <!-- 로그인 -->
                                    <li><a href="login.html" style="background-color: rgb(236, 236, 236);">Login</a>
                                    </li>

                                    <!-- 회원가입 -->
                                    <li><a href="join1.html" style="background-color: rgb(236, 236, 236);">Join</a></li>

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

    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <!-- <div class="row"> -->
            <div class="single-hero-slide bg-img" style="background-image: url(http://www.lampcook.com//wi_files/food_fish/fish_dic/20.jpg
            );">

                <div class="container h-100">

                    <!-- 글자 상자 가운데 위치로-->
                    <div class="row h-100 align-items-center">

                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <!-- 글자 상자 속성 -->
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <!-- 오늘의 식재료 추천 기능 
                                제철 월에서 랜덤으로 추출하여 해당 식재료 상세내용 출력하기
                                span태그 안의 내용을 해당 값으로 바꿔주면 됨 -->
                                <h2 data-animation="fadeInUp" data-delay="300ms">꽃게</h2>
                                <p data-animation="fadeInUp" data-delay="700ms" style="color: aliceblue;">
                                    지방이 적고 단백질이
                                    많으며 필수 아미노산이 풍부해 어린이 성장발육과 회복기 환자에게 매우 좋은 음식이다. 또한 간장과 심장을 강화시키는 타우린이 많이 함유되어 성인병
                                    예방에도 좋다. 꽃게에 함유된 철분과 칼슘, 인 등은 여성의 빈혈에 탁월한 효능을 발휘하며 노화방지에도 효과가 있다.
                                </p>
                                <!-- 버튼을 눌러서 페이지 이동할 때 식재료 이름 넘기게 url 설정하기 -->
                                <a href="ingredient_page.html" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">정보 보기</a>
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
            <h5 class="test_font" align="center" style="font-size: 25px;">도훈
                <span>님의 건강에 맞춰 음식을 추천해드려요!</span>
            </h5>
            <h5 align="center" style="margin-bottom: 50px;"></h5>
            <div class="row">

                <!-- 레시피/ 식재료 글 시작-->
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
                <div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_recipe.html'">더보기</button></div>
                <!-- ##### 맞춤 레시피 추천 종료 ##### -->










                <!-- ##### 제철 식재료 추천 시작 ##### -->
                <section class="small-receipe-area section-padding-80-0">
                    <hr><br><br>
                    <div class="container">
                        <h5 class="test_font" align="center" style="font-size: 25px;">8
                            <span>월의 제철 식재료에요!</span>
                        </h5>
                        <h5 align="center" style="margin-bottom: 50px;"></h5>
                        <div class="row">

                            <!-- 레시피/ 식재료 글 시작-->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <a href="ingredient_page.html">
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
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
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <a href="ingredient_page.html">
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
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
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <a href="ingredient_page.html">
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
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
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <a href="ingredient_page.html">
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
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
                <div align="center"><button id="btn" style="margin-left: 100px;" onclick="location.href='custom_season_ingredient.html'">더보기</button></div>
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
                                                <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
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