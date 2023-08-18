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

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

<link href="./resources/css/apexcharts.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
<style type="text/css">
.custom-block-icon.bi-wallet:hover {
	color: #A8DADC;
}

.custom-block-icon.bi-upc-scan:hover {
	color: #A8DADC;
}

.custom-block-icon.bi-send:hover {
	color: #A8DADC;
}

.custom-block-icon.bi-person:hover {
	color: #A8DADC;
}

.login_box {
	position: absolute;
	right: 0;
	top: 0;
	height: 100vh;
	width: 370px;
	background: #fff;
	box-shadow: -1px -1px 15px rgba(0, 0, 0, 0.3);
	border-radius: 40px 0 0 40px;
	display: table;
}

.modal {
	display: none; /* 기본적으로 모달을 숨김 */
	position: fixed;
	top: 50%; /* 화면 상단에서 50% 위치에 배치 */
	left: 50%;
	/* 화면 왼쪽에서 50% 위치에 배치 */
	transform: translate(-50%, -50%);
	/* 중앙 정렬 */
	width: 300px; /* 모달 너비 */
	height: 200px; /* 모달 높이 */
	background-color: white; /* 모달 배경색 */
	border: 1px solid #ccc;
	/* 테두리 스타일 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	z-index: 9999;
	top: 50%; /* 화면 상단에서 50% 위치에 배치 */
	left: 50%; /* 화면 왼쪽에서 50% 위치에 배치 */
	transform: translate(-50%, -50%); /* 중앙 정렬 */
	width: 300px; /* 모달 너비 */
	height: 200px; /* 모달 높이 */
	background-color: white; /* 모달 배경색 */
	border: 1px solid #ccc; /* 테두리 스타일 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 다른 요소 위에 표시 */
}

.modal.show {
	transform: translate(0, 0);
	display: contents;
}

.modal-content {
	/* Add your modal content styles here */
	
}

.table-bordered {
	position: fixed;
	top: 67%; /* 화면 상단에서 50% 위치에 배치 */
	left: 90%; /* 화면 왼쪽에서 50% 위치에 배치 */
	transform: translate(-50%, -50%); /* 중앙 정렬 */
	width: 300px; /* 모달 너비 */
	height: 200px; /* 모달 높이 */
	background-color: white; /* 모달 배경색 */
	border: 1px solid #ccc; /* 테두리 스타일 */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	z-index: 9999; /* 다른 요소 위에 표시 */
}
</style>
</head>
<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="${cpath}/main.do"> <img
				src=".\resources\images\mainLogo.png" style="width: 10%;">&nbsp;10-Minutes
			</a>
		</div>

		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<form
			class="custom-form header-form ms-lg-3 ms-md-3 me-lg-auto me-md-auto order-2 order-lg-0 order-md-0"
			action="#" method="get" role="form">
			<input class="form-control" name="search" type="text"
				placeholder="Search" aria-label="Search">
		</form>

		<!-- 회원 로그인바 -->

		<div class="navbar-nav me-lg-2">
			<div class="nav-item text-nowrap d-flex align-items-center">
				<div class="dropdown ps-3">
					<a class="nav-link dropdown-toggle text-center" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false"
						id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i> <span
						class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
							<span class="visually-hidden">New alerts</span>
					</span>
					</a>

					<ul
						class="dropdown-menu dropdown-menu-lg-end notifications-block-wrap bg-white shadow"
						aria-labelledby="navbarLightDropdownMenuLink">
						<small>Notifications</small>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex  align-items-center" href="#">
								<div class="notifications-icon-wrap bg-success">
									<i class="notifications-icon bi-check-circle-fill"></i>
								</div>

								<div>
									<span>Your account has been created successfuly.</span>

									<p>12 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block border-bottom pb-2 mb-2"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-info">
									<i class="notifications-icon bi-folder"></i>
								</div>

								<div>
									<span>Please check. We have sent a Daily report.</span>

									<p>10 days ago</p>
								</div>
						</a></li>

						<li class="notifications-block"><a
							class="dropdown-item d-flex align-items-center" href="#">
								<div class="notifications-icon-wrap bg-danger">
									<i class="notifications-icon bi-question-circle"></i>
								</div>

								<div>
									<span>Account verification failed.</span>

									<p>1 hour ago</p>
								</div>
						</a></li>
					</ul>
				</div>

				<div class="dropdown px-3">
					<a class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <img
						src="./resources/images/medium-shot-happy-man-smiling.jpg"
						class="profile-image img-fluid" alt="">
					</a>
					<ul class="dropdown-menu bg-white shadow">
						<li>
							<div class="dropdown-menu-profile-thumb d-flex">
								<img src="./resources/images/medium-shot-happy-man-smiling.jpg"
									class="profile-image img-fluid me-3" alt="">

								<div class="d-flex flex-column">
									<small>Thomas</small> <a href="#">thomas@site.com</a>
								</div>
							</div>
						</li>

						<li><a class="dropdown-item" href="${cpath }/mypage.do">
								<i class="bi-person me-2"></i> Profile
						</a></li>

						<li><a class="dropdown-item" href="setting.html"> <i
								class="bi-gear me-2"></i> Settings
						</a></li>

						<li><a class="dropdown-item" href="help-center.html"> <i
								class="bi-question-circle me-2"></i> Help
						</a></li>

						<li class="border-top mt-3 pt-2 mx-4"><a
							class="dropdown-item ms-0 me-0" href="#"> <i
								class="bi-box-arrow-left me-2"></i> Logout
						</a></li>
					</ul>
				</div>
			</div>
		</div>

	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-3 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.html"> <i
								class="bi-house-fill me-2"></i> 메인
						</a></li>

						<li class="nav-item"><a class="nav-link" href="wallet.html">
								<i class="bi-wallet me-2"></i> 동아리 찾기
						</a></li>

						<li class="nav-item"><a class="nav-link" href="profile.html">
								<i class="bi-person me-2"></i> 모임 찾기
						</a></li>

						<li class="nav-item"><a class="nav-link" href="setting.html">
								<i class="bi-gear me-2"></i> 내 정보
						</a></li>

						<li class="nav-item border-top mt-auto pt-2"><a
							class="nav-link" href="#"> <i class="bi-box-arrow-left me-2"></i>
								Logout
						</a></li>
					</ul>
				</div>
			</nav>

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
				<div class="title-group mb-3" style="text-align: center;">
					<h1 class="h2 mb-0">${mvo.univ}${mvo.nick}</h1>

					<small class="text-muted">어서오세요!</small>
				</div>

				<div class="row my-4">
					<div class="col-lg-5 col-12" style="width: 100%;">
						<div
							class="custom-block custom-block-profile-front custom-block-profile text-center bg-white"
							style="width: 80%; margin: 0 auto;">
							<div class="custom-block-profile-image-wrap mb-4">
								<img src="./resources/images/medium-shot-happy-man-smiling.jpg"
									class="custom-block-profile-image img-fluid" alt=""> <a
									href="setting.html"
									class="bi-pencil-square custom-block-edit-icon"></a>
							</div>
							<div class="custom-block custom-block-bottom d-flex flex-wrap"
								style="margin-bottom: 0px; background-color: white;">
								<div class="custom-block-bottom-item">
									
									<img src="./resources/images/icons/i_list.png" style="width: 10%;"onclick="myCircleSelected(this)">
									<small>내 동아리</small>
									
								</div>

								<div class="custom-block-bottom-item">
								<a href="#" class="d-flex flex-column">
									<img src="./resources/images/icons/i_friend.png" style="width: 10%;"onclick="myFriendSelected(this)" >
									<small>내 친구</small>
									</a>
								</div>


								<div class="custom-block-bottom-item">
								<a href="#" class="d-flex flex-column">
									<img src="./resources/images/icons/i_sns.png" style="width: 10%;"onclick="myFriendSelected(this)" >
									<small>채팅방</small>
									</a>
								</div>
								<div class="custom-block-bottom-item">
									<a href="#" class="d-flex flex-column">
									<img src="./resources/images/icons/i_setting.png" style="width: 10%;"onclick="myFriendSelected(this)" >
									 <small>정보 수정</small>
									</a>
								</div>
							</div>
							<!-- 내 동아리 Div -->
							<div class="myCircleDiv" style="display: none;">
								<div class="title-group mb-3" style="text-align: left;">
									<h1 class="h5 mb-0">내 동아리</h1>
									<small class="text-muted">{user_id}님이 가입된 동아리에요</small>
								</div>
								<div class="job-thumb"
									style="padding: 10px 25px 0px 25px; display: flex;">
									<div class="job-image-wrap bg-white shadow-lg">
										<img src="./resources/images/circleMark.jpeg"
											class="job-image img-fluid" alt="">
									</div>

									<div
										class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

										<div class="mb-3">
											<p class="job-title mb-lg-0"
												style="text-align: left; font-size: 13px;">
												<a href="#" class="job-title-link">{성향}</a>
											</p>
											<h4 class="job-title mb-lg-0">
												<a href="#" class="job-title-link">{circleName}</a>
											</h4>

											<div class="d-flex flex-wrap align-items-center"
												style="margin-top: 5px; text-align: left;">
												<p class="job-location mb-0" style="font-size: 13px;">
													<i class="custom-icon bi-geo-alt me-1"></i> {user_school}
												</p>

											</div>
										</div>
									</div>
								</div>
								<div class="job-thumb"
									style="padding: 10px 25px 0px 25px; display: flex;">
									<div class="job-image-wrap bg-white shadow-lg">
										<img src="./resources/images/circleMark.jpeg"
											class="job-image img-fluid" alt="">
									</div>

									<div
										class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

										<div class="mb-3">
											<p class="job-title mb-lg-0"
												style="text-align: left; font-size: 13px;">
												<a href="#" class="job-title-link">{성향}</a>
											</p>
											<h4 class="job-title mb-lg-0">
												<a href="#" class="job-title-link">{circleName}</a>
											</h4>

											<div class="d-flex flex-wrap align-items-center"
												style="margin-top: 5px; text-align: left;">
												<p class="job-location mb-0" style="font-size: 13px;">
													<i class="custom-icon bi-geo-alt me-1"></i> {user_school}
												</p>

											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 내 친구 목록 -->
							<div class="myFriendDiv" style="display: none;">
								<div class="title-group mb-3" style="text-align: left;">
									<h1 class="h5 mb-0">내 친구</h1>
								</div>
								<div class="row align-items-center">
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 col-md-4 col-6">
										<div class="job-thumb job-thumb-box friendCard"
											onclick="friendSelected(this)">
											<div class="job-image-box-wrap">
												<img
													src=".\resources\images\profile\young-beautiful-woman-pink-warm-sweater.jpg"
													class="job-image img-fluid" alt="">

											</div>

											<div class="job-body"
												style="padding-top: 5px; padding: 20px;">

												<div class="d-flex align-items-center">
													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">닉네임</p>

												</div>

												<div class="d-flex align-items-center">

													<p class="job-date" style="font-size: 10px;">
														<i class="custom-icon bi-clock me-1"></i> 취향 태그
													</p>
												</div>

												<div class="align-items-center friendMeet1"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
												</div>
												<div class="align-items-center friendMeet2"
													style="display: none;">
													<a href="job-details.html" class="custom-btn btn"
														style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-12 col-12">
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-center mt-5">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true">Prev</span>
											</a></li>

											<li class="page-item active" aria-current="page"><a
												class="page-link" href="#">1</a></li>

											<li class="page-item"><a class="page-link" href="#">2</a>
											</li>

											<li class="page-item"><a class="page-link" href="#">3</a>
											</li>

											<li class="page-item"><a class="page-link" href="#">4</a>
											</li>

											<li class="page-item"><a class="page-link" href="#">5</a>
											</li>

											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">Next</span>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- 정보수정 Div -->
							<div class="myModifyDiv" style="display: none;">
								<div
									style="display: flex; justify-content: center; align-items: center;">
									내 정보 수정</div>
							</div>

						</div>
					</div>
				</div>
				<!-- 채팅 modal -->
				<div id="chatModal" class="modal">
					<div class="modal-content">
						<table class="table table-bordered">
							<tr>
								<td><img alt="" src=".\resources\images\angle_left_new.svg"><input
									type="text" name="user" id="user" class="form-control"
									placeholder="유저명"></td>
								<td>
									<button type="button" class="btn btn-default" id="btnConnect">채팅하기</button>
									<button type="button" class="btn btn-default"
										id="btnDisconnect" disabled>종료</button>
								</td>
							</tr>
							<tr>
								<td colspan="2"><div id="list"
										style="height: 300px; padding: 15px; overflow: auto;"></div></td>
							</tr>
							<tr>
								<td colspan="2"><input type="text" name="msg" id="msg"
									placeholder="대화 내용을 입력하세요." class="form-control" disabled></td>
							</tr>
						</table>
					</div>
				</div>

				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Mini Finance 2048 - Design: <a rel="sponsored"
										href="https://www.tooplate.com" target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>
			</main>

		</div>
	</div>


	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<!-- friend 선택 -->
	<script>
		// 요소에 대한 클릭 이벤트 처리
		function friendSelected(element) {
			// Find the clicked friend card
			var friendCard = element.closest('.friendCard');

			// Find the corresponding friendMeet element using index
			var friendMeet1 = friendCard.querySelector('.friendMeet1');

			// Toggle the friendMeet's display between 'none' and 'flex'
			if (friendMeet1) {
				friendMeet1.style.display = (friendMeet1.style.display === 'none') ? 'flex'
						: 'none';
			}

			// Find the corresponding friendMeet element using index
			var friendMeet2 = friendCard.querySelector('.friendMeet2');

			// Toggle the friendMeet's display between 'none' and 'flex'
			if (friendMeet2) {
				friendMeet2.style.display = (friendMeet2.style.display === 'none') ? 'flex'
						: 'none';
			}
		}
	</script>

	<!-- 내 동아리 / 내 친구 선택 -->
	<script>
		// 요소에 대한 클릭 이벤트 처리
		function myCircleSelected() {
			var myCircleDivs = document.querySelectorAll('.myCircleDiv');
			myCircleDivs.forEach(function(div) {
				if (div.style.display === 'none') {
					div.style.display = 'block';
				} else {
					div.style.display = 'none';
				}
			});

			var myFriendDivs = document.querySelectorAll('.myFriendDiv');
			myFriendDivs.forEach(function(div) {
				div.style.display = 'none';
			});
		}

		// 요소에 대한 클릭 이벤트 처리
		function myFriendSelected() {
			var myCircleDivs = document.querySelectorAll('.myCircleDiv');
			myCircleDivs.forEach(function(div) {
				div.style.display = 'none';
			});

			var myFriendDivs = document.querySelectorAll('.myFriendDiv');
			myFriendDivs.forEach(function(div) {
				if (div.style.display === 'none') {
					div.style.display = 'block';
				} else {
					div.style.display = 'none';
				}
			});
		}
	</script>
	<!-- chat modal -->
	<script type="text/javascript">
		// Get the modal element
		var modal = document.getElementById("chatModal");

		// Get the button that opens the modal
		var openChatBtn = document.getElementById("openChatBtn");

		// Get the <span> element that closes the modal
		var closeSpan = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal
		openChatBtn.onclick = function() {
			modal.classList.add("show");
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target === modal) {
				modal.classList.remove("show");
			}
		}
	</script>
	<!-- 채팅기능 스크립트 -->
	<script type="text/javascript">
		//채팅 서버 주소
		let url = "ws://localhost:8081/controller/chatserver?room=1";

		// 웹 소켓
		let ws;

		// 연결하기
		$('#btnConnect').click(function() {

			// 유저명 확인
			if ($('#user').val().trim() != '') {
				// 연결
				ws = new WebSocket(url);

				// 소켓 이벤트 매핑
				ws.onopen = function(evt) {
					// console.log('서버 연결 성공');
					print($('#user').val(), '님이 입장했습니다.');

					// 현재 사용자가 입장했다고 서버에게 통지(유저명 전달)
					// -> 1#유저명
					ws.send('1#' + $('#user').val() + '#');

					$('#user').attr('readonly', true);
					$('#btnConnect').attr('disabled', true);
					$('#btnDisconnect').attr('disabled', false);
					$('#msg').attr('disabled', false);
					$('#msg').focus();
				};

				ws.onmessage = function(evt) {
					// print('', evt.data);
					let index = evt.data.indexOf("#", 2);
					let no = evt.data.substring(0, 1);
					let user = evt.data.substring(2, index);
					let txt = evt.data.substring(index + 1);

					if (no == '1') {
						print2(user);
					} else if (no == '2') {
						print(user, txt);
					} else if (no == '3') {
						print3(user);
					}
					$('#list').scrollTop($('#list').prop('scrollHeight'));
				};

				ws.onclose = function(evt) {
					console.log('소켓이 닫힙니다.');
				};

				ws.onerror = function(evt) {
					console.log(evt.data);
				};
			} else {
				alert('유저명을 입력하세요.');
				$('#user').focus();
			}
		});

		// 메세지 전송 및 아이디
		function print(user, txt) {
			let temp = '';
			temp += '<div style="margin-bottom:3px;">';
			temp += '<' + user + '>';
			temp += txt;
			temp += ' <span style="font-size:11px;color:#777;">'
					+ new Date().toLocaleTimeString() + '</span>';
			temp += '</div>';

			$('#list').append(temp);
		}

		// 다른 client 접속		
		function print2(user) {
			let temp = '';
			temp += '<div style="margin-bottom:3px;">';
			temp += "'" + user + "' 이(가) 접속했습니다.";
			temp += ' <span style="font-size:11px;color:#777;">'
					+ new Date().toLocaleTimeString() + '</span>';
			temp += '</div>';

			$('#list').append(temp);
		}

		// client 접속 종료
		function print3(user) {
			let temp = '';
			temp += '<div style="margin-bottom:3px;">';
			temp += "'" + user + "' 이(가) 종료했습니다.";
			temp += ' <span style="font-size:11px;color:#777;">'
					+ new Date().toLocaleTimeString() + '</span>';
			temp += '</div>';

			$('#list').append(temp);
		}

		$('#user').keydown(function() {
			if (event.keyCode == 13) {
				$('#btnConnect').click();
			}
		});

		$('#msg').keydown(function() {
			if (event.keyCode == 13) {

				//서버에게 메시지 전달
				//2#유저명#메시지
				ws.send('2#' + $('#user').val() + '#' + $(this).val()); //서버에게
				print($('#user').val(), $(this).val()); //본인 대화창에

				$('#msg').val('');
				$('#msg').focus();

			}
		});

		$('#btnDisconnect').click(function() {
			ws.send('3#' + $('#user').val() + '#');
			ws.close();

			$('#user').attr('readonly', false);
			$('#user').val('');

			$('#btnConnect').attr('disabled', false);
			$('#btnDisconnect').attr('disabled', true);

			$('#msg').val('');
			$('#msg').attr('disabled', true);
		});
	</script>

</body>
</html>