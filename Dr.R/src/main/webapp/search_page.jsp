<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <title>검색 상세 페이지</title>

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
    
    
    <!-- ##### 식재료 검색 결과 ##### -->
    <hr>
    <div align="center"> <!-- form태그는 가운데정렬이 되지 않아 div로 한번 감쌋음 -->
        <form>
        <div class="test_search_all">
            <input type="text" name="search" placeholder="검색어를 입력해주세요." class="test_search">
            <button class="test_search_button"><i class="fa fa-search"></i></button>
        </div>
        </form>
    <hr>
</div>



    <br>
    <br>
    <div align="center" class="test_font" style="font-size: 25px; font-weight: bold;">
        <span style="color: black;">식재료 검색 결과</span>
    </div>
    
    <section class="small-receipe-area section-padding-80-0">
            <div class="container">
            <div class="row">

                <!-- Small Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr1.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <span>당뇨에 좋은</span>
                            <a href="receipe-post.html">
                                <h6 style="font-weight: bold;">꽈리고추 멸치볶음</h6>
                            </a>
                            
                        </div>
                    </div>
                </div>

                <!-- Small Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr2.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <span>January 04, 2018</span>
                            <a href="receipe-post.html">
                                <h5>Baked Bread</h5>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Small Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr3.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <span>January 04, 2018</span>
                            <a href="receipe-post.html">
                                <h5>Scalops on salt</h5>
                            </a>
                            
                        </div>
                    </div>
                </div>

                <!-- Small Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-small-receipe-area d-flex">
                        <!-- Receipe Thumb -->
                        <div class="receipe-thumb">
                            <img src="img/bg-img/sr4.jpg" alt="">
                        </div>
                        <!-- Receipe Content -->
                        <div class="receipe-content">
                            <br>
                            <span>January 04, 2018</span>
                            <a href="receipe-post.html">
                                <h5>Fruits on plate</h5>
                            </a>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>

    <!-- ##### 식재료 검색 종료 ##### -->

        <!-- ##### 레시피 검색 결과 ##### -->
        <hr>

        <br>
        <br>
        <div align="center" class="test_font" style="font-size: 25px; font-weight: bold;">
            <span style="color: black;">레시피 검색 결과</span>
        </div>
        
        <section class="small-receipe-area section-padding-80-0">
                <div class="container">
                <div class="row">
    
                    <!-- Small Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-small-receipe-area d-flex">
                            <!-- Receipe Thumb -->
                            <div class="receipe-thumb">
                                <img src="img/bg-img/sr1.jpg" alt="">
                            </div>
                            <!-- Receipe Content -->
                            <div class="receipe-content">
                                <br>
                                <span>당뇨에 좋은</span>
                                <a href="receipe-post.html">
                                    <h6 style="font-weight: bold;">꽈리고추 멸치볶음</h6>
                                </a>
                                
                            </div>
                        </div>
                    </div>
    
                    <!-- Small Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-small-receipe-area d-flex">
                            <!-- Receipe Thumb -->
                            <div class="receipe-thumb">
                                <img src="img/bg-img/sr2.jpg" alt="">
                            </div>
                            <!-- Receipe Content -->
                            <div class="receipe-content">
                                <br>
                                <span>January 04, 2018</span>
                                <a href="receipe-post.html">
                                    <h5>Baked Bread</h5>
                                </a>
                            </div>
                        </div>
                    </div>
    
                    <!-- Small Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-small-receipe-area d-flex">
                            <!-- Receipe Thumb -->
                            <div class="receipe-thumb">
                                <img src="img/bg-img/sr3.jpg" alt="">
                            </div>
                            <!-- Receipe Content -->
                            <div class="receipe-content">
                                <br>
                                <span>January 04, 2018</span>
                                <a href="receipe-post.html">
                                    <h5>Scalops on salt</h5>
                                </a>
                                
                            </div>
                        </div>
                    </div>
    
                    <!-- Small Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-small-receipe-area d-flex">
                            <!-- Receipe Thumb -->
                            <div class="receipe-thumb">
                                <img src="img/bg-img/sr4.jpg" alt="">
                            </div>
                            <!-- Receipe Content -->
                            <div class="receipe-content">
                                <br>
                                <span>January 04, 2018</span>
                                <a href="receipe-post.html">
                                    <h5>Fruits on plate</h5>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <!-- ##### 레시피 검색 결과 ##### -->


    





<!-- 포터 시작부분 -->
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