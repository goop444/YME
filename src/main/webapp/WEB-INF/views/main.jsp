<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="Tooplate">

        <title>yme.com</title>

        <!-- CSS FILES -->      
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap" rel="stylesheet">

        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

        <link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

        <link href="./resources/css/apexcharts.css" rel="stylesheet">

        <link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
</head>
<body>
        <header class="navbar sticky-top flex-md-nowrap">
            <div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
                <a class="navbar-brand" href="index.html">
                    <i class="bi-box"></i>
                    10-minutes
                </a>
            </div>

            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <form class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0" action="#" method="get" role="form">
                <input class="form-control" name="search" type="text" placeholder="Search" aria-label="Search">
            </form>

            <div class="navbar-nav me-lg-2">
                <div class="nav-item text-nowrap d-flex align-items-center">
                    <div class="dropdown ps-3">
                        <a class="nav-link dropdown-toggle text-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="navbarLightDropdownMenuLink">
                            <i class="bi-bell"></i>
                            <span class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                                <span class="visually-hidden">New alerts</span>
                            </span>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-lg-end notifications-block-wrap bg-white shadow" aria-labelledby="navbarLightDropdownMenuLink">
                            <small>Notifications</small>

                            <li class="notifications-block border-bottom pb-2 mb-2">
                                <a class="dropdown-item d-flex  align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-success">
                                        <i class="notifications-icon bi-check-circle-fill"></i>
                                    </div>

                                    <div>
                                        <span>Your account has been created successfuly.</span>

                                        <p>12 days ago</p>
                                    </div>
                                </a>
                            </li>

                            <li class="notifications-block border-bottom pb-2 mb-2">
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-info">
                                        <i class="notifications-icon bi-folder"></i>
                                    </div>

                                    <div>
                                        <span>Please check. We have sent a Daily report.</span>

                                        <p>10 days ago</p>
                                    </div>
                                </a>
                            </li>

                            <li class="notifications-block">
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="notifications-icon-wrap bg-danger">
                                        <i class="notifications-icon bi-question-circle"></i>
                                    </div>

                                    <div>
                                        <span>Account verification failed.</span>

                                        <p>1 hour ago</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="dropdown px-3">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid" alt="">
                        </a>
                        <ul class="dropdown-menu bg-white shadow">
                            <li>
                                <div class="dropdown-menu-profile-thumb d-flex">
                                    <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="profile-image img-fluid me-3" alt="">

                                    <div class="d-flex flex-column">
                                        <small>Thomas</small>
                                        <a href="#">thomas@site.com</a>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <a class="dropdown-item" href="profile.html">
                                    <i class="bi-person me-2"></i>
                                    Profile
                                </a>
                            </li>

                            <li>
                                <a class="dropdown-item" href="setting.html">
                                    <i class="bi-gear me-2"></i>
                                    Settings
                                </a>
                            </li>

                            <li>
                                <a class="dropdown-item" href="help-center.html">
                                    <i class="bi-question-circle me-2"></i>
                                    Help
                                </a>
                            </li>

                            <li class="border-top mt-3 pt-2 mx-4">
                                <a class="dropdown-item ms-0 me-0" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-3 d-md-block sidebar collapse">
                    <div class="position-sticky py-4 px-3 sidebar-sticky">
                        <ul class="nav flex-column h-100">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">
                                    <i class="bi-house-fill me-2"></i>
                                    메인
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="wallet.html">
                                    <i class="bi-wallet me-2"></i>
                                    동아리 찾기
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="profile.html">
                                    <i class="bi-person me-2"></i>
                                    모임 찾기
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="setting.html">
                                    <i class="bi-gear me-2"></i>
                                    내 정보
                                </a>
                            </li>

                            <li class="nav-item border-top mt-auto pt-2">
                                <a class="nav-link" href="#">
                                    <i class="bi-box-arrow-left me-2"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
                    <div class="title-group mb-3" style="text-align: center;">
                        <h1 class="h2 mb-0">{user_school} {user_name}님,</h1>

                        <small class="text-muted">어서오세요!</small>
                    </div>

                    <div class="row my-4">
                        <div class="col-lg-5 col-12" style="width: 100%;">
                            <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
                                <div class="custom-block-profile-image-wrap mb-4">
                                    <img src="./resources/images/medium-shot-happy-man-smiling.jpg" class="custom-block-profile-image img-fluid" alt="">

                                    <a href="setting.html" class="bi-pencil-square custom-block-edit-icon"></a>
                                </div>
									<div class="custom-block custom-block-bottom d-flex flex-wrap" style="margin-bottom: 0px;">
	                                <div class="custom-block-bottom-item">
	                                    <a href="#" class="d-flex flex-column">
	                                        <i class="custom-block-icon bi-wallet"></i>
	
	                                        <small>내 동아리</small>
	                                    </a>
	                                </div>
	
	                                <div class="custom-block-bottom-item">
	                                    <a href="#" class="d-flex flex-column">
	                                        <i class="custom-block-icon bi-upc-scan"></i>
	
	                                        <small>내 모임</small>
	                                    </a>
	                                </div>
	
	                                <div class="custom-block-bottom-item">
	                                    <a href="#" class="d-flex flex-column">
	                                        <i class="custom-block-icon bi-send"></i>
	
	                                        <small>채팅방</small>
	                                    </a>
	                                </div>
	                            </div>
	                            </div>
	                            <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
	                            
		                            <div class="title-group mb-3" style="text-align: left;">
				                        <h1 class="h5 mb-0">교내 추천 동아리</h1>
				                        <small class="text-muted">10minutes이 추천하는 {user_school}의 동아리에요</small>
				                    </div>
				                    <div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
		                                <div class="job-image-wrap bg-white shadow-lg">
		                                    <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
		                                </div>

		                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
		                                
		                                    <div class="mb-3">
		                                    	<p class="job-title mb-lg-0" style="text-align: left; font-size: 13px;">
		                                            <a href="#" class="job-title-link">{성향}</a>
		                                        </p>
		                                        <h4 class="job-title mb-lg-0">
		                                            <a href="#" class="job-title-link">{circleName}</a>
		                                        </h4>
		
		                                        <div class="d-flex flex-wrap align-items-center" style="margin-top: 5px; text-align: left;">
		                                            <p class="job-location mb-0" style="font-size: 13px;">
		                                                <i class="custom-icon bi-geo-alt me-1"></i>
		                                                {user_school}
		                                            </p>
		
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
		                                <div class="job-image-wrap bg-white shadow-lg">
		                                    <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
		                                </div>

		                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
		                                
		                                    <div class="mb-3">
		                                    	<p class="job-title mb-lg-0" style="text-align: left; font-size: 13px;">
		                                            <a href="#" class="job-title-link">{성향}</a>
		                                        </p>
		                                        <h4 class="job-title mb-lg-0">
		                                            <a href="#" class="job-title-link">{circleName}</a>
		                                        </h4>
		
		                                        <div class="d-flex flex-wrap align-items-center" style="margin-top: 5px; text-align: left;">
		                                            <p class="job-location mb-0" style="font-size: 13px;">
		                                                <i class="custom-icon bi-geo-alt me-1"></i>
		                                                {user_school}
		                                            </p>
		
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
		                                <div class="job-image-wrap bg-white shadow-lg">
		                                    <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
		                                </div>

		                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
		                                
		                                    <div class="mb-3">
		                                    	<p class="job-title mb-lg-0" style="text-align: left; font-size: 13px;">
		                                            <a href="#" class="job-title-link">{성향}</a>
		                                        </p>
		                                        <h4 class="job-title mb-lg-0">
		                                            <a href="#" class="job-title-link">{circleName}</a>
		                                        </h4>
		
		                                        <div class="d-flex flex-wrap align-items-center" style="margin-top: 5px; text-align: left;">
		                                            <p class="job-location mb-0" style="font-size: 13px;">
		                                                <i class="custom-icon bi-geo-alt me-1"></i>
		                                                {user_school}
		                                            </p>
		
		                                        </div>
		                                    </div>
		                                </div>
				                    </div>
			                    </div>
			                    <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
				                    <div class="title-group mb-3" style="text-align: left;">
					                        <h1 class="h5 mb-0">이 달의 동아리 랭킹</h1>
					                        <small class="text-muted">가장 활동이 많은 동아리를 알려줄 거에요</small>
					                </div>
					                <div class="custom-block custom-block-bottom d-flex flex-wrap" style="margin-bottom: 0px; justify-content: space-around; padding: 0px;">
		                                <div class="nav-item featured-box mt-lg-5 mt-4 mb-4" style="background-color: white; width: 30%; text-align: left;">
		                                	<div class="rank_title" style="color: #F8C86C; font-size: 28px;">
												<span style="border-bottom: 3px solid; color: #F8C86C;">1</span>st
											</div>
											<div style="display: flex; flex-direction: column;">
											<div class="rank_uname" style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
												<div style="display: flex; flex-direction: row; align-items: center;">
													<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
												</div>
											</div>
			                                <div class="image-wrapper">
			                                	<img src="./resources/images/circleMark.jpeg" class="img-fluid" alt=""  style="width: auto;">
			                                </div>
			                            </div>
		                                <div class="nav-item featured-box mt-lg-5 mt-4 mb-4" style="background-color: white; width: 30%; text-align: left;">
		                                	<div class="rank_title" style="color: #ACC9DA; font-size: 28px;">
												<span style="border-bottom: 3px solid; color: #ACC9DA;">2</span>nd
											</div>
											<div style="display: flex; flex-direction: column;">
											<div class="rank_uname" style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
												<div style="display: flex; flex-direction: row; align-items: center;">
													<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
												</div>
											</div>
			                                <div class="image-wrapper">
			                                	<img src="./resources/images/circleMark.jpeg" class="img-fluid" alt=""  style="width: auto;">
			                                </div>
			                            </div>
		                                <div class="nav-item featured-box mt-lg-5 mt-4 mb-4" style="background-color: white; width: 30%; text-align: left;">
		                                	<div class="rank_title" style="color: #DCA26C; font-size: 28px;">
												<span style="border-bottom: 3px solid; color: #DCA26C;">3</span>rd
											</div>
											<div style="display: flex; flex-direction: column;">
											<div class="rank_uname" style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
												<div style="display: flex; flex-direction: row; align-items: center;">
													<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
												</div>
											</div>
			                                <div class="image-wrapper">
			                                	<img src="./resources/images/circleMark.jpeg" class="img-fluid" alt=""  style="width: auto;">
			                                </div>
			                            </div>
		                            </div>
		                        </div>
                        </div>
                    </div>

                    <footer class="site-footer">
                        <div class="container">
                            <div class="row">
                                
                                <div class="col-lg-12 col-12">
                                    <p class="copyright-text">Copyright © Mini Finance 2048 
                                    - Design: <a rel="sponsored" href="https://www.tooplate.com" target="_blank">Tooplate</a></p>
                                </div>

                            </div>
                        </div>
                    </footer>
                </main>

            </div>
        </div>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/apexcharts.min.js"></script>
        <script src="js/custom.js"></script>

        <script type="text/javascript">
            var options = {
              series: [13, 43, 22],
              chart: {
              width: 380,
              type: 'pie',
            },
            labels: ['Balance', 'Expense', 'Credit Loan',],
            responsive: [{
              breakpoint: 480,
              options: {
                chart: {
                  width: 200
                },
                legend: {
                  position: 'bottom'
                }
              }
            }]
            };

            var chart = new ApexCharts(document.querySelector("#pie-chart"), options);
            chart.render();
        </script>

        <script type="text/javascript">
            var options = {
              series: [{
              name: 'Income',
              data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
            }, {
              name: 'Expense',
              data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
            }, {
              name: 'Transfer',
              data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
            }],
              chart: {
              type: 'bar',
              height: 350
            },
            plotOptions: {
              bar: {
                horizontal: false,
                columnWidth: '55%',
                endingShape: 'rounded'
              },
            },
            dataLabels: {
              enabled: false
            },
            stroke: {
              show: true,
              width: 2,
              colors: ['transparent']
            },
            xaxis: {
              categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
            },
            yaxis: {
              title: {
                text: '$ (thousands)'
              }
            },
            fill: {
              opacity: 1
            },
            tooltip: {
              y: {
                formatter: function (val) {
                  return "$ " + val + " thousands"
                }
              }
            }
            };

            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();
        </script>

    </body>
</html>