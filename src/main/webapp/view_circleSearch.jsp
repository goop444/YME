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
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin

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

                    <div class="row my-4" style="margin-top: 0px;">
                        <div class="col-lg-5 col-12" style="width: 100%;">
	                        <div class="col-lg-7 col-12" style="margin-bottom: 24px;">
	                            <form class="custom-form hero-form" action="#" method="get" role="form">
	                                <h3 class="text-white mb-3">동아리를 찾아봐요</h3>
	                                
	                                <div class="row">
		                                <div>
		                                	<div>
			                                    <div class="col-12">
			                                        <div class="input-group">
			                                            <span class="input-group-text" id="basic-addon1"><i class="bi-person custom-icon"></i></span>
			
			                                            <input type="text" name="#" id="#" class="form-control" placeholder="동아리 이름" required="">
			                                        </div>
			                                    </div>
			
			                                    <div class="col-12">
			                                        <div class="input-group">
			                                            <span class="input-group-text" id="basic-addon1"><i class="bi-geo-alt custom-icon"></i></span>
			
			                                            <input type="text" name="#" id="#" class="form-control" placeholder="학교이름" required="">
			                                        </div>
			                                    </div>
			
			                                    <div class="col-12">
			                                        <div class="input-group">
			                                            <span class="input-group-text" id="basic-addon1"><i class="bi-cash custom-icon"></i></span>
			
			                                            <select class="form-select form-control" name="#" id="#" aria-label="Default select example">
			                                                <option selected="">카테고리</option>
			                                                <option value="1">카테고리1</option>
			                                                <option value="2">카테고리2</option>
			                                            </select>
			                                        </div>
			                                    </div>
			                                  </div>
			                                <div class="col-lg-12 col-12">
		                                        <button type="submit" class="form-control" style="margin-bottom: 24px;">
		                                            동아리 찾기
		                                        </button>
	                                    	</div>
			                                </div>
	
	                                    
	
	                                    <div class="col-12">
	                                        <div class="d-flex flex-wrap align-items-center mt-lg-0" style="margin-top: 0px;">
	                                            <span class="text-white mb-lg-0 mb-md-0 me-2">Popular keywords:</span>
	
	                                            <div>
	                                                <a href="#" class="badge">축구</a>
	
	                                                <a href="#" class="badge">여행</a>
	
	                                                <a href="#" class="badge">공연</a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </form>
	                        </div>
			                    <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
						        	<div class="row align-items-center">
			
			                        <div class="col-lg-6 col-12 mb-lg-4">
			                        </div>
			
			                        <div class="col-lg-4 col-12 d-flex align-items-center ms-auto mb-5 mb-lg-4">
			
			                            <div class="dropdown-sorting flex-grow-1 ms-3 me-4">
			                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSortingButton" data-bs-toggle="dropdown" aria-expanded="false">
			                                    이름순
			                                </button>
			
			                                <ul class="dropdown-menu" aria-labelledby="dropdownSortingButton">
			                                    <li><a class="dropdown-item" href="#">Lastest Jobs</a></li>
			
			                                    <li><a class="dropdown-item" href="#">Highed Salary Jobs</a></li>
			
			                                    <li><a class="dropdown-item" href="#">Internship Jobs</a></li>
			                                </ul>
			                            </div>
			
			                            <div class="d-flex">
			                                <a href="#" class="sorting-icon active bi-list me-2"></a>
			
			                                <a href="#" class="sorting-icon bi-grid"></a>
			                            </div>
			                        </div>
			
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			                        <div class="col-lg-4 col-md-6 col-12">
			                            <div class="job-thumb job-thumb-box">
			                                <div class="job-image-box-wrap">
			                                    <a href="job-details.html">
			                                        <img src="./resources/images/circleMark.jpeg" class="job-image img-fluid" alt="">
			                                    </a>
			
			                                </div>
			
			                                <div class="job-body" style="padding-top: 10px;">
			
			                                    <div class="d-flex align-items-center">
			                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
			                                            <img src="./resources/images/circleMark.jpeg" class="job-image me-3 img-fluid" alt="">
			
			                                            <p class="mb-0" style="white-space: nowrap; font-weight: 700; font-size: 17px;">모비딕스</p>
			                                        </div>
			
			                                    </div>
			
			                                    <div class="d-flex align-items-center">
			                                        <p class="job-location" style="font-size: 10px;">
			                                            <i class="custom-icon bi-geo-alt me-1"></i>
			                                            서울대학교
			                                        </p>
			
			                                        <p class="job-date" style="font-size: 10px;">
			                                            <i class="custom-icon bi-clock me-1"></i>
			                                            문화/예술
			                                        </p>
			                                    </div>
			
			                                    <div class="d-flex align-items-center pt-3">
			                                        <a href="job-details.html" class="custom-btn btn" style="width: 100%;">동아리 방문</a>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        
			
			
			                        <div class="col-lg-12 col-12">
			                            <nav aria-label="Page navigation example">
			                                <ul class="pagination justify-content-center mt-5">
			                                    <li class="page-item">
			                                        <a class="page-link" href="#" aria-label="Previous">
			                                            <span aria-hidden="true">Prev</span>
			                                        </a>
			                                    </li>
			
			                                    <li class="page-item active" aria-current="page">
			                                        <a class="page-link" href="#">1</a>
			                                    </li>
			                                    
			                                    <li class="page-item">
			                                        <a class="page-link" href="#">2</a>
			                                    </li>
			                                    
			                                    <li class="page-item">
			                                        <a class="page-link" href="#">3</a>
			                                    </li>
			
			                                    <li class="page-item">
			                                        <a class="page-link" href="#">4</a>
			                                    </li>
			
			                                    <li class="page-item">
			                                        <a class="page-link" href="#">5</a>
			                                    </li>
			                                    
			                                    <li class="page-item">
			                                        <a class="page-link" href="#" aria-label="Next">
			                                            <span aria-hidden="true">Next</span>
			                                        </a>
			                                    </li>
			                                </ul>
			                            </nav>
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