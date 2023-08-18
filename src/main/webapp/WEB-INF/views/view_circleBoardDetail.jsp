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
<style>
.all_univ_history {
	width: 49%;
	margin-bottom: 20px;
}

.club_image {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 10px;
}

.main_board_pc {
	height: 180px;
	border-radius: 20px;
	margin-bottom: 10px;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.25);
}

.main_club_logo {
	width: 22px;
	height: 22px;
	background: #904A4A;
	border: 1px solid #F5F5F5;
	border-radius: 8px;
	margin-right: 5px;
}

.main_univ_history_club_name {
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #AAAAAA;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.main_univ_history_content {
	font-weight: 600;
	font-size: 14px;
	line-height: 17px;
	letter-spacing: -0.02em;
	color: #444444;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin-bottom: 10px;
}

.item_name {
	display: inline-block;
	width: 100%;
	font-weight: 400;
	font-size: 12px;
	line-height: 14px;
	letter-spacing: -0.02em;
	color: #AAAAAA;
}

.board_list_item .board_content {
	padding: 0 0 5px;
	font-size: 13px;
	color: #b7b7b7;
}

.board_list_item {
	padding: 10px 5px;
	border-bottom: 1px solid #eeeeee;
}

#search_txt {
	display: flex;
	align-items: center;
	width: 90%;
	height: 40px;
	background: #f5f5f5;
	color: #999999;
	font-weight: 400;
	font-size: 13px;
	line-height: 16px;
	letter-spacing: -0.02em;
	padding: 12px 15px;
}

#search_txt:focus {
	border: 0; /* 클릭할 때 테두리 없애기 */
	outline: none; /* 포커스 테두리 제거 */
}

.common_top_nav_header {
	text-align: center;
	padding: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #565656;
	background: white;
	width: 100%;
	z-index: 98;
	top: 55px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}

.mv_write {
	background-color: #FFFFFF;
	border-radius: 16px;
	margin: 20px 10px;
	padding-top: 15px;
	text-align: center;
	width: 60px;
	height: 60px;
	font-size: 20px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="index.html"> <i class="bi-box"></i>
				10-minutes
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

						<li><a class="dropdown-item" href="profile.html"> <i
								class="bi-person me-2"></i> Profile
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
				<div
					class="custom-block custom-block-profile-front custom-block-profile text-center bg-white"
					style="padding: 0;">

					<div
						style="background: #FFFFFF; border-top-right-radius: 15px; border-top-left-radius: 15px; z-index: 3;">
						<div
							style="display: flex; flex-direction: row; justify-content: flex-start; align-items: center;">
							<!-- 내용 -->
						</div>
					</div>



					<!--동아리 정보 3( 동아리 소속 대학교, 동아리 종류, 한 줄 소개, 공지사항, 동아리 해시태그)-->
					<div class="content" style="">
						<div class="common_top_nav_header">
							<div
								style="display: flex; justify-content: center; align-items: center;">
								<img onclick="goback()"
									src=".\resources\images\angle_left_new.svg"
									style="position: absolute; left: 0px;"> 자유 게시판

							</div>
						</div>

						<div class="page-content header-clear">
							<div class="content underline"
								style="margin: 15px; border-bottom: 1px solid #F5F5F5; padding-bottom: 15px;">

								<div class="search-box"
									style="display: flex; flex-direction: column; margin-bottom: 10px;">
									<form id="board_search_form"
										action="/web/club/base_board/club_board/1655"
										style="display: flex; align-items: center; width: 100%; height: 40px; border-radius: 30px; line-height: 40px; border-bottom: 0px; background: #F5F5F5; overflow: hidden">

										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 100%;">
											<input type="text" name="search_txt" id="search_txt" value=""
												placeholder="" style="border: 0;"> <img
												src=".\resources\images\search.png" alt="search"
												style="width: 32px; margin-right: 4px;"board_form_submit()">
										</div>
									</form>
								</div>



								<div class="search_notice"
									style="margin: 0 0 0 15px; display: flex; flex-direction: row; align-items: center; font-weight: 400; font-size: 12px; line-height: 14px; letter-spacing: -0.02em; color: #8E8E8E;">

									<img
										src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/exclamation_with_circle.svg"
										style="width: 10px; height: 10px; margin-right: 5px;">
									동아리원만 열람 및 작성이 가능합니다.
								</div>



							</div>
							<div class="base_board" id="club_board_div" style="">
								<div class="content " id="contents"
									style="padding-bottom: 40px;">

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														올클 <b class="list_new"
															style="display: inline; color: #FF5D51; font-size: 20px; margin-left: 3px; vertical-align: top; line-height: 10px;">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">키키</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/35aca72a-daed-4713-a43e-dcb6da30857b.jpeg"
														width="20" height="20">
													<div class="item_name">Yehni</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														지금 <b class="list_new"
															style="display: inline; color: #FF5D51; font-size: 20px; margin-left: 3px; vertical-align: top; line-height: 10px;">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">🕖</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														ㅊㅊ <b class="list_new"
															style="display: inline; color: #FF5D51; font-size: 20px; margin-left: 3px; vertical-align: top; line-height: 10px;">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">ㅊㅊㅊㅊㅊ</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														올클 <b class="list_new"
															style="display: inline; color: #FF5D51; font-size: 20px; margin-left: 3px; vertical-align: top; line-height: 10px;">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">말해놓고 난 못했네...</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_img"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/15/556fb59b-4fcb-4e3d-8e30-61dc99b111a1.jpg">

													<div class="item_name">불닭까르보</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													3
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">케프는
														버린다고 치고!</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%; padding: 0 0 5px; font-size: 13px; color: #b7b7b7; margin-left: -19px;">올클(긍정적마인드)</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">다들
														올클!!</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">근데 왜 아직 모닥불은 공사중이지...?</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/2.jpg"
														width="20" height="20">
													<div class="item_name">김쟨</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">미미미누
														수강신청을 보며...</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100px; padding: 0 0 5px; font-size: 13px; color: #b7b7b7; margin-left: -32px;">재밌다</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">수강신청</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">올클하세여!!</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/35aca72a-daed-4713-a43e-dcb6da30857b.jpeg"
														width="20" height="20">
													<div class="item_name">Yehni</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">날씨</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">☀️</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">서울</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">갑니다</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">오늘</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">☔️</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													2
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">마캠</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">공사중이넹</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/35aca72a-daed-4713-a43e-dcb6da30857b.jpeg"
														width="20" height="20">
													<div class="item_name">Yehni</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item" onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">오늘은</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">금요일</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>



									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<!-- 내용 -->
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->
											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">
													<div class="board_title club_board_title mb-2">
														개강<b class="list_new"></b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">D-17</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<!-- 내용 -->
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														개강 D-17 <b class="list_new">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">다가오니 가기 귀찮아지는건 뭐지...</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">

													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<!-- 내용 -->
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														태풍 <b class="list_new"></b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">조심</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/35aca72a-daed-4713-a43e-dcb6da30857b.jpeg"
														width="20" height="20">
													<div class="item_name">Yehni</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<!-- 내용 -->
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														🌧 <b class="list_new">·</b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">☔️</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<!-- 내용 -->
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">
														배고 <b class="list_new"></b>
													</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">파요</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/8.jpg"
														width="20" height="20">
													<div class="item_name">민재김</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">오늘까지</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">2차수강바구니</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<!-- <img class="user_image"
                                          src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/f32ef753-8517-43ff-a0e3-3a65a6390130.gif"> -->

													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/f32ef753-8517-43ff-a0e3-3a65a6390130.gif"
														width="20" height="20">

													<div class="item_name">봄봄본</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">수강신청</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">안해도 되는걸 좋아해야하는건가... 슬퍼해야
														하는건가...</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/2.jpg"
														width="20" height="20">
													<div class="item_name">김쟨</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>


									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">태풍</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">조심하세요!</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/6.jpg"
														width="20" height="20">
													<div class="item_name">딸기왕국</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													3
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">출근
														11분째</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">퇴근하고 싶다</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_image"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/35aca72a-daed-4713-a43e-dcb6da30857b.jpeg"
														width="20" height="20">
													<div class="item_name">Yehni</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													1
												</div>
											</div>
										</div>
									</div>

									<div class="board_list_item " onclick="alert('소속 동아리원이 아닙니다.')"
										style="width: 100%;">
										<div
											style="display: flex; justify-content: space-between; margin-bottom: 10px;">
											<!--이미지가 있는 경우-->

											<div
												style="display: flex; flex-direction: column; max-width: 95%;">
												<div style="display: flex">

													<div class="board_title club_board_title mb-2">수강신청</div>
												</div>
												<div style="display: flex; flex-direction: column;">
													<div class="board_content club_board_content"
														style="max-width: 100%;">망하면</div>
												</div>
												<div></div>
											</div>

										</div>
										<div
											style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
											<div class="item_desc">

												<div style="display: flex; align-items: center;">
													<img class="user_img"
														src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/15/556fb59b-4fcb-4e3d-8e30-61dc99b111a1.jpg">

													<div class="item_name">불닭까르보</div>
												</div>

											</div>
											<div
												style="display: flex; flex-direction: row; align-items: flex-end;">
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/like.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													0
												</div>
												<div class="club_board_name"
													style="display: flex; flex-direction: row; align-items: center;">
													<img
														src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/club/main/reply.svg"
														style="width: 15px; height: 15px; margin-right: 5px;">
													2
												</div>
											</div>
										</div>
									</div>



									<div class="loader_box">
										<div class="loader"></div>
									</div>
									<div class="end_list">목록 마지막</div>
								</div>

								<div class="mv_fix "
									onclick="alert('대학교 인증이 필요합니다.'); location.href='/web/user/university'">
									<div class="mv_write"
										style="position: fixed; bottom: 20px; right: 20px; z-index: 999;">
										<img src=".\resources\images\pencil.svg"
											style="width: 30px; height: 30px; margin: auto;">
									</div>


									<script>
										function onpagesshow_club(event) {
											if (event.persisted
													|| (window.performance && window.performance.navigation.type == 2)) {
												board_page = sessionStorage
														.getItem(document.location.pathname
																+ document.location.hash
																+ 'page');
												l_page = sessionStorage
														.getItem(document.location.pathname
																+ document.location.hash
																+ 'last_page');
												content = sessionStorage
														.getItem(document.location.pathname
																+ document.location.hash
																+ 'content');
												scroll = sessionStorage
														.getItem(document.location.pathname
																+ document.location.hash
																+ 'scroll');
												if (l_page != undefined)
													last_page = l_page;
												$("#contents").html(content);
												$('.loader-main').show();
												$('.loader-main').fadeOut(350);
												window.scrollTo(0, scroll);
											} else {
												sessionStorage
														.setItem(
																document.location.pathname
																		+ document.location.hash
																		+ 'content',
																$("#contents")
																		.html());
												sessionStorage
														.setItem(
																document.location.pathname
																		+ document.location.hash
																		+ 'page',
																board_page);
												sessionStorage
														.setItem(
																document.location.pathname
																		+ document.location.hash
																		+ 'last_page',
																last_page);
												$('.loader-main').show();
												$('.loader-main').fadeOut(350);
											}
										}
									</script>

									<div class="menu-hider" style="display: block;"></div>
									<div class="page-bg">
										<div></div>
									</div>