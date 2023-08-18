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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	 /* Basic styling for the comment section */
    .comment_section {
        display: flex;
        flex-direction: row;
        align-items: center;
        font-size: 12px;
        color: #777777;
    }

    /* Styling for the heart icon */
    .heart_icon {
        width: 12px;
        height: 12px;l
        display: inherit;
        padding-bottom: 2px;
        padding-left: 25px;
        background-repeat: no-repeat;
        background-size: contain;
        background-image: url(http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/heart.png);
        margin-right: 5px;
        cursor: pointer;
    }

    /* Styling for the reply button */
    .reply_button {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-right: 20px;
        cursor: pointer;
    }

    /* Styling for the comment icon */
    .comment_icon {
        margin-right: 5px;
        cursor: pointer;
    }

    /* Styling for the "답글달기" text */
    .reply_text {
        cursor: pointer;
    }

    /* Styling for the like count */
    .like_count {
        margin-right: 5px;
        font-weight: 400;
        font-size: 12px;
        line-height: 14px;
        color: #8E8E8E;
    }

    /* Basic styling for the fixed comment box */
    .fixed_comment_box {
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: #FFFFFF;
        border-top: 1px dashed #ccc;
        box-shadow: 0px -2px 6px rgba(0, 0, 0, 0.1);
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    /* Adjust the height of the reply_input_box */
    .reply_input_box {
        height: 24px; /* You can adjust the height as needed */
        max-height: 70px; /* Adjust the maximum height as needed */
    }

    /* Adjust the styles of the send_btn */
    .send_btn {
        line-height: 24px; /* Match the height of the reply_input_box */
        width: 70px;
        background: #AAAAAA;
        color: #ffffff;
        text-align: center;
        display: flex;
        align-items: center;
        justify-content: center;
    }
</style>
</head>
<body>
    <!-- Other content of your page -->

    <!-- Fixed Comment Box -->
    <div class="fixed_comment_box">
        <div class="logo_div" style="display: flex; justify-content: space-between; align-items: center;">
            <!-- Your existing code here -->
        </div>
    </div>
</body>
</html>

<style>
    /* Add some basic styling to the total_div */
    .total_div {
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: #FFFFFF;
        border-top: 1px dashed #ccc;
        box-shadow: 0px -2px 6px rgba(0, 0, 0, 0.1);
        /* Add any other styling you need */
    }
</style>
</head>
<body>
    <div class="total_div" style="flex-direction: row;">
        <!-- Your existing code here -->
    </div>
</body>

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

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css" rel="stylesheet">
<script src=".\resources\js\swiper-bundle.min.js"></script>
<script src=".\resources\js\swiper-bundle.min2.js"></script>
<script src=".\resources\js\swiper-bundle.min3.js"></script>
<script type="text/javascript" src=".\resources\js\slick.js"></script>
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
               class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">

               <!-- 게시글 상세보기 -->
               <div class="common_top_nav_header">
                  <div
                     style="display: flex; justify-content: center; align-items: center;">
                     <img onclick="goback()"
                        src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/angle_left_new.svg"
                        style="position: absolute; left: -15px;"> 게시글 상세
                        <div style="width: 82.08px; height: 21px;">
							<div style="position: absolute; right: 0;">
								<a data-menu="board_menu" href="#"
									style="display: inline-block; width: 18px; height: 4px;"> <img
									src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/ellipsis.svg"
									alt="ellipsis" style="width: 18px; height: 4px; float: left;">
								</a>
							</div>
						</div>
               </div>
               <hr
                  style="border-top: 1px dotted #ccc; margin-top: 20px; margin-bottom: 20px;">

						<div class="board pt-2 pb-2" style="padding: 0 20px;">
							<div class="board" style="padding: 20px;">
								<div class="mb-1">
									<!--상단 바로가기 아이콘-->
									<div
										style="display: flex; flex-direction: row; align-items: center; margin-bottom: 20px;">

										<!--메인 홈 이동-->
										<div onclick="show_loader();location.href='/web'"
											class="top_icon_home fw400_12_14_3A"
											style="display: flex; flex-direction: row; justify-content: center; align-items: center; width: 77.17px; height: 30px; background: #F5F5F5; border-radius: 10px; padding: 8px 10px; margin-right: 6px; white-space: nowrap;">
											<img
												src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/home.svg"
												alt="home"
												style="margin-right: 8px; width: 16px; height: 16px;">
											메인 홈
										</div>

										<!--동아리 홈 이동-->
										<div
											onclick="show_loader();location.href='/web/club/info/1655/405/3'"
											class="top_icon_home fw400_12_14_3A"
											style="display: flex; flex-direction: row; justify-content: center; align-items: center; width: 63.3px; height: 30px; background: #F5F5F5; border-radius: 10px; padding: 8px 10px; margin-right: 6px; white-space: nowrap;">동아리
											홈</div>
										<div style="display: flex;">

											<!-- 활동 앨범  -->
											<div
												<div onclick="show_loader();location.href='/web/club/base_board/club_history/1655'" class="top_icon_home fw400_12_14_3A" 
											style="width: fit-content;display: flex;flex-direction: row;justify-content: center;align-items: center;height: 30px;background: #F5F5F5;border-radius: 10px;padding: 8px 10px;margin-right: 6px;white-space: nowrap;">
											활동 앨범</div></div>
										</div>
										<div>

											<div class="title"
												style="display: flex; align-items: center; justify-content: space-between;">
												<div>${detail_album.board_title}</div>

											</div>

										</div>
										<div
											style="display: flex; align-items: center; padding-left: 5px;">


											<img class="user_img"
												onclick="show_loader();location.href='/web/user/26224'"
												src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/11/f32ef753-8517-43ff-a0e3-3a65a6390130.gif">


											<div
												style="display: flex; justify-content: space-between; align-items: center; width: 100%; line-height: 1rem;">
												<div style="margin-left: 10px;">


													<div
														onclick="show_loader();location.href='/web/user/26224'"
														style="display: inline-block">
														<div class="user_name"
															style="display: flex; align-items: center;">
															${detail_name.name}
															<img
																src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/badge/b_level_4.png"
																alt="b_level"
																style="width: 20px; height: 11px; margin-left: 3px;">


														</div>
													</div>


												</div>
												<!--작성 날짜-->
												<div class="board_created"
													style="font-weight: 400; font-size: 12px; line-height: 14px; text-align: right; letter-spacing: -0.02em; color: #8E8E8E; white-space: nowrap;">${detail_album.board_at}
													</div>
											</div>
										</div>
									</div>
								</div>
<!-- 여기부터 사진 -->
								<div class="swiper-zoom-container">
									<%-- style="background-image: url('${detail_album.board_img}'); max-height: 400px; object-fit: contain;" --%>	
									<div>
										<img alt="x" src="${detail_album.board_img}" style="max-height: 400px; object-fit: contain;"/>
										
								<!-- 	<img
										src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/07/11/e8b0c1a6-4c38-4985-b96d-b80f68bb15d4.jpeg"
										style="max-height: 400px; object-fit: contain;"> -->
										
									</div>
								<div class="swiper-pagination swiper-pagination-bullets"
									style="bottom: 0; position: relative; padding-top: 5px; padding-bottom: 15px;">
									<span
										class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
										class="swiper-pagination-bullet"></span>
								</div>
								<div class="mb-3 mt-3"
									style="min-height: 45px; line-height: 18px; font-size: 15px; color: #343434;">
									<div id="linktest" style="word-break: break-word;"></div>
								</div>


								<div class="reply_box" id="reply_box" style="">
									<div class="comment_item f-15"
										style="width: 830px; height: 38px; text-align: left;">
										댓글 <span class="color-mc">1</span>
									</div>
									<div class="comment_item" id="comment_14266">
										<div>
											<div class=""
												style="display: flex; flex-direction: column; width: 100%; margin-bottom: 5px;">
												<div style="display: flex;">
													<div class="c_col_01" id="reply_01_14266"
														style="margin-right: 10px;">
														<img data-id="14266" class="user_thumb"
															src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/17/bc4444ac-94d2-45cb-8542-123d137e76c9.jpeg"
															width="35" height="35">
													</div>
													<div class="reply_right_div">
														<div class="c_col_02" style="line-height: 1;">
															<div id="reply_02_14266">
																<span class="rw"
																	style="display: flex; align-items: center;"> <span
																	class="fw600_13_16_3A"
																	onclick="show_loader();location.href='/web/user/26146'"
																	style="display: flex; align-items: center; font-weight: 700;">Zihyun
																		<img
																		src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/badge/b_level_3.png"
																		alt="b_level"
																		style="width: 20px; height: 11px; margin-left: 3px;">
																</span>
																</span> <span class="rc"
																	style="white-space: break-spaces; word-break: break-word;">큐티해</span>
															</div>
														</div>
														<div>

															<i class="fa fa-ellipsis-h reply_report" id="14266"
																onclick="report_menu_option(this.id, 26146)"
																style="float: right; color: #a0a0a0; transform: rotate(90deg); font-size: 12px;"></i>
														</div>
													</div>
												</div>
												<div class="reply_span_div">
													<div
														style="display: flex; flex-direction: row; align-items: center;">
														<span
															style="display: flex; flex-direction: row; align-items: center; margin-right: 20px;">
															<span class="c_col_03" id="reply_03_14266"> <span
																href="#" onclick="like(this)" data-index="14266"
																data-like="0" class="heart"
																style="padding-left: 13px; margin-right: 5px; margin-bottom: 0;"></span>
																<span class="c_col_03" id="reply_03_14266"> <span
																	href="#" onclick="like(this)" data-index="14266"
																	data-like="0" class="hreart"
																	style="padding-left: 13px; margin-right: 5px; margin-bottom: 0;"></span>
															</span>
														</span> <span class="fw400_12_14_8E r_cnt" id="14266_like_cnt">0</span>
														</span> <span class="c_col_03" id="reply_03_14266"
															style="width: 12px; height: 12px; display: inherit; padding-bottom: 2px; padding-left: 25px; background-repeat: no-repeat; background-size: contain; background-image: url(http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/heart.png);">
															<span href="#" onclick="like(this)" data-index="14266"
															data-like="0" class="heart"
															style="padding-left: 13px; margin-right: 5px; margin-bottom: 0;"></span>
														</span>

														<div class="r_03 mr-2" id="reply_04_14266"
															onclick="tag_re_reply(this, '14266', '0')"
															data-index="14266" data-user="26146" data-nick="Zihyun"
															style="display: flex; flex-direction: row; align-items: center;">
															<img
																src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/icons/comment.svg"
																alt="comment" style="margin-right: 5px;">답글달기
														</div>
													</div>
													<div style="width: 100%; text-align: right;">
														<span class="fw400_10_12_8E"
															style="font-weight: 300; font-size: 10px; line-height: 12px; letter-spacing: -0.02em; color: #8E8E8E; white-space: nowrap;">2023.07.22
															21:51</span>
													</div>
													
													<div class="division_line5" style="margin-bottom: 10px;"></div>
													
													

													<div
														style="padding: 10px 0 80px 0; color: #7d7d7d; width: 100%; position: static; z-index: 97;">
														<div style="margin-bottom: 15px;">
															<div
																style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin: 0 20px 15px 20px;">
																<div class="common_board_type_name">활동 앨범 게시글</div>


																<a href="#"
																	onclick="show_loader();location.href='/web/club/base_board/club_history/1655'"
																	class="move_to_list">목록으로</a>


															</div>
														</div>
														<div style="margin-bottom: 0px;">

															<div class="updown_place"
																style="display: flex; flex-direction: column; justify-content: center; background: #F5F5F5; padding: 0 20px 0 30px;">
																<div
																	style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
																	<div class="common_board_title" style="color: #181818;">
																		2023년 여름방학 중국교류학생 공연</div>
																	<div class="common_board_created"
																		style="color: #3A3A3A;">23.07.11 01:32</div>
																</div>
																<div class="common_board_created"
																	style="color: #3A3A3A; text-align: initial;">봄봄본


																</div>
															</div>


															<div
																onclick="show_loader();location.href='/web/board/11607'"
																class="updown_place"
																style="display: flex; flex-direction: column; justify-content: center; padding: 0 20px 0 30px;">
																<div
																	style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
																	<div class="common_board_title">2023년 1학기 노천극장
																		버스킹</div>
																	<div class="common_board_created">23.06.16 11:54</div>
																</div>
																<div class="common_board_created"
																	style="color: #3A3A3A; text-align: initial;">봄봄본


																</div>
															</div>


														</div>
													</div>


													<div class="total_div"
														style="flex-direction: row; border-top: 1px dashed #ccc; width: 100px; height: 1181.79px;">
														<div class="logo_div" style="padding-bottom: 0px;">
															<div class="logo_div"
																style="display: flex; justify-content: space-between; padding: 15px; align-items: center;">
																<div
																	style="display: flex; align-items: center; margin-top: 10px;">
																	<img class="re_img"
																		src="http://mycampus-test.eba-jramfkx3.ap-northeast-2.elasticbeanstalk.com/s/front/images/maku/9.jpg"
																		alt="image" width="35" height="35"
																		style="width: 35px; height: 35px; margin-top: -10px; border-radius: 12px; object-fit: cover;">
																	<div class="reply_name" style="display: none;">98830</div>
																</div>
																<div class="reply_div" style="width: calc(100% - 60px);">
																	<div class="reply_input_tbl"
																		style="position: relative; display: flex; align-items: center;">
																		<textarea placeholder="댓글을 입력해주세요."
																			class="reply_input_box" name="comment" id="comment"
																			style="width: calc(100% - 80px); overflow-y: scroll; max-height: 200px; font-size: 12px; color: #777777; height: 35px !important; border-radius: 50px; background: #F5F5F5; line-height: 15px; border: none; padding: 10px;"></textarea>
																		<div class="send_btn_div"
																			onclick="alert('대학교 인증이 필요합니다.');show_loader();location.href='/web/user/university'"
																			style="position: absolute; top: 50%; right: 34px; transform: translateY(-50%);">
																			<div class="send_btn"
																				style="line-height: 35px; width: 70px; background: #AAAAAA; color: #ffffff; text-align: center; display: flex; align-items: center; justify-content: center;">등록</div>
																		</div>
																	</div>
																</div>
																<div class="secret_table mr-1" style="display: none;">
																	<div class="secret_table mr-1" style="display: none;">
																		<div style="display: flex; align-items: center;">
																			비밀 댓글 <span class="ml-2 easyswitch switch_secret off"><span
																				class="easyswitch-label"></span> <span
<!-- 																				class="easyswitch-label"></span> <span -->
																				class="easyswitch-slider" style="left: 3px;"></span><input
																				type="hidden" id="easyswitch-easyswitch"
																				name="easyswitch" value="0"></span>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!--동아리 게시판 모음-->
               <!--게시판 제목-->
               <!-- <div class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
                  <div class="swiper-wrapper" id="swiper-wrapper-d2b8fee9b520e995" aria-live="polite">

                  </div>
                  게시판 목록
                  <div
                     class="swiper-container content-swiper"
                     style="display: grid">
                     <div class="swiper-wrapper"
                        id="swiper-wrapper-623402ac38988796" aria-live="polite"
                        style="height: 516px; transform: translate3d(-850px, 0px, 0px); transition-duration: 0ms;">
                     </div>
                  </div>
               </div>
            </div> -->

      </div>
						<footer class="site-footer">
							<div class="container">
								<div class="row">

								<div class="col-lg-12 col-12">
									<p class="copyright-text" style="text-align: inherit;">
										Copyright © Mini Finance 2048 - Design: <a rel="sponsored" href="https://www.tooplate.com" target="_blank">Tooplate</a>
									</p>
								</div>

							</div>
							</div>
						</footer></main>
   </div>

   <!-- JAVASCRIPT FILES -->
   <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/apexcharts.min.js"></script>
   <script src="js/custom.js"></script>

   <!-- 게시판 슬라이드 -->
   <script>
     document.addEventListener('DOMContentLoaded', function () {
       var swiper = new Swiper('.content-swiper', {
         // Swiper 설정 옵션을 추가하세요.
         allowTouchMove: false // 터치로 슬라이드를 막음
       });
   
       var albumTitle = document.querySelector('.board_title[data-hash="1"]');
       var freeBoardTitle = document.querySelector('.board_title[data-hash="2"]');
   
       albumTitle.addEventListener('click', function () {
         swiper.slideTo(0); // "활동 앨범" 슬라이드로 이동
         albumTitle.classList.add('act'); // 활성화 스타일 추가
         freeBoardTitle.classList.remove('act'); // 비활성화 스타일 제거
       });
   
       freeBoardTitle.addEventListener('click', function () {
         swiper.slideTo(1); // "자유 게시판" 슬라이드로 이동
         freeBoardTitle.classList.add('act'); // 활성화 스타일 추가
         albumTitle.classList.remove('act'); // 비활성화 스타일 제거
       });
     });
   </script>

   <script type="text/javascript">
      var options = {
         series : [ 13, 43, 22 ],
         chart : {
            width : 380,
            type : 'pie',
         },
         labels : [ 'Balance', 'Expense', 'Credit Loan', ],
         responsive : [ {
            breakpoint : 480,
            options : {
               chart : {
                  width : 200
               },
               legend : {
                  position : 'bottom'
               }
            }
         } ]
      };

      var chart = new ApexCharts(document.querySelector("#pie-chart"),
            options);
      chart.render();
   </script>

   <script type="text/javascript">
      var options = {
         series : [ {
            name : 'Income',
            data : [ 44, 55, 57, 56, 61, 58, 63, 60, 66 ]
         }, {
            name : 'Expense',
            data : [ 76, 85, 101, 98, 87, 105, 91, 114, 94 ]
         }, {
            name : 'Transfer',
            data : [ 35, 41, 36, 26, 45, 48, 52, 53, 41 ]
         } ],
         chart : {
            type : 'bar',
            height : 350
         },
         plotOptions : {
            bar : {
               horizontal : false,
               columnWidth : '55%',
               endingShape : 'rounded'
            },
         },
         dataLabels : {
            enabled : false
         },
         stroke : {
            show : true,
            width : 2,
            colors : [ 'transparent' ]
         },
         xaxis : {
            categories : [ 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug',
                  'Sep', 'Oct' ],
         },
         yaxis : {
            title : {
               text : '$ (thousands)'
            }
         },
         fill : {
            opacity : 1
         },
         tooltip : {
            y : {
               formatter : function(val) {
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