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

<link href="./resources/css/fontawesome-all.min.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css"
	rel="stylesheet">
<link rel="stylesheet" href=".\resources\css\swiper-bundle.css">
<script src=".\resources\js\swiper-bundle.min.js"></script>
<script src=".\resources\js\swiper-bundle.min2.js"></script>
<script src=".\resources\js\swiper-bundle.min3.js"></script>
<style type="text/css">
.act_btn {
	color: white !important;;
	background: #4cbcaf;
}

.input_place {
	display: flex;
	flex-direction: column;
	width: 100%;
	font-weight: 500;
	font-size: 14px;
	line-height: 18px;
	letter-spacing: -0.02em;
	color: #666666;
	margin-bottom: 10px;
}

.select_wrap {
	height: 40px;
	border: 1px solid #EBEBEB;
	border-radius: 30px;
	background: url(.\resources\images\angle_down_black.svg) no-repeat 95%
		50%/15px auto;
}

.select_name {
	font-weight: 400;
	font-size: 13px;
	line-height: 15px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	text-align-last: center;
	text-align: center;
	-ms-text-align-last: center;
	-moz-text-align-last: center;
}

.input_content {
	width: 100% !important;
	height: 220px !important;
	background: #F5F5F5 !important;
	color: #999999 !important;
	font-weight: 400 !important;
	font-size: 15px !important;
	line-height: 18px !important;
	letter-spacing: -0.02em;
	border-radius: 5px !important;
	padding: 15px;
	resize: none;
}

.add-btn {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	color: #181818;
	border-radius: 20px;
	padding: 18px;
	border: 1px solid #ccc;
	border-radius: 5px !important;
}

.preview-container {
	display: none;
	width: 50%;
	border: 1px solid #ccc;
	border-radius: 5px;
	overflow: hidden;
}

.preview-image {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain;
}

.modal {
	/* ... */
	z-index: 2; /* Ensure modal is displayed above everything */
}

.close {
	/* ... */
	z-index: 3; /* Ensure close button is above the modal */
}

.preview-container {
	background-color: #F5F5F5;
	border-radius: 5px;
	overflow: hidden; /* 내용이 넘칠 경우 숨김 처리 */
}
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

		<div class="navbar-nav me-lg-2 ">
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
					<div class="common_top_nav_header"
						style="text-align: center; padding: 15px; font-size: 18px; font-weight: 600; color: #565656; background: white; width: auto; z-index: 98; top: 55px; border-bottom: 1px solid rgba(0, 0, 0, 0.08);">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback_reg()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: -1px;"> 게시글 등록
						</div>
					</div>
					<div class="page-content header-clear" style="height: auto;">
						<div class="content bottom-0"
							style="height: calc(100% - 60px); overflow: scroll; padding-top: 15px;">
							<div class="contact-form">
								<form action="/web/board/reg" id="form" method="post"
									enctype="multipart/form-data" class="contactForm">

									<div class="input_place">
										<div class="vote_select select_wrap"
											style="width: 100%; border-radius: 10px; height: 50px;">
											<select class="select_name" id="board_tag" name="board_tag"
												style="width: 100%; color: #999999; -webkit-appearance: none; height: 100%; border: none;"
												onchange="change_board_tag(this)">
												<option value="" selected>게시판 유형을 선택해 주세요</option>
												<option value="1">자유 게시판</option>
												<option value="2">앨범 게시판</option>
											</select>
										</div>
									</div>

									<div class="input_place" id="image_upload"
										style="border-radius: 5px !important; display: flex; flex-direction: row;">
										<div class="add-btn subtitle_name" id="btn-upload"
											type="button" style="margin: 0 auto;">
											<img src="./resources/images/gallery.svg">사진 첨부
										</div>
										<div class="preview-container" style="margin: 0 auto; max-height: 400px;">
											<!-- 이미지 미리보기가 여기에 표시됩니다. -->
										</div>
									</div>


									<div class="input_place">
										<input type="text" name="title" id="title" value=""
											placeholder="제목을 입력해주세요." class="input_title">
									</div>

									<div class="input_place"
										style="border-radius: 5px !important; background: #F5F5F5 !important; display: flex; flex-direction: row;">
										<textarea name="content" class="input_content"
											placeholder="내용을 입력해주세요." id="content"
											style="margin-top: 0px; height: 300px; border-radius: 5px !important;"></textarea>
									</div>


									<input type="hidden" name="board_category_id" value="10001725">
									<input id="tag" name="tag" type="hidden" value="macam_free">
									<input id="club_id" name="club_id" type="hidden" value="">
									<input id="rate" name="rate" type="hidden" value=""> <input
										type="hidden" id="check_vote" name="check_vote" value="0">
								</form>
							</div>
						</div>
						<div class="submit_btn" style="display: flex; position: relative;">
							<div class="footer_btn 7_a_btn btn_title w-30 none"
								onclick="history.back()"
								style="background: #EBEBEB; color: #222222;">이전</div>
							<div class="footer_btn 7_b_btn btn_title w-70 write_check none"
								onclick="chk_params()" style="">게시글 등록</div>
						</div>
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
	<!-- 사진 업로드 스크립트 -->
	<script type="text/javascript">
	const btnUpload = document.getElementById('btn-upload');
    const previewContainer = document.querySelector('.preview-container');
    const fileInput = document.createElement('input');
    fileInput.type = 'file';
    fileInput.style.display = 'none';
    document.body.appendChild(fileInput);

    btnUpload.addEventListener('click', () => {
        fileInput.click();
    });

    fileInput.addEventListener('change', () => {
        const files = fileInput.files;
        for (const file of files) {
            const reader = new FileReader();

            reader.onload = (e) => {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.classList.add('preview-image');
                img.addEventListener('click', () => {
                    fileInput.click();
                    fileInput.addEventListener('change', () => {
                        const newFile = fileInput.files[0];
                        if (newFile) {
                            const newReader = new FileReader();
                            newReader.onload = (event) => {
                                img.src = event.target.result;
                            };
                            newReader.readAsDataURL(newFile);
                        }
                    });
                });
                previewContainer.innerHTML = '';
                previewContainer.style.display = 'block'; // Display the container
                previewContainer.appendChild(img);

                // Hide the add-btn after uploading an image
                btnUpload.style.display = 'none';
            };

            reader.readAsDataURL(file);
        }
    });

	</script>


	<!-- 앨범/자유 전환 스크립트 -->
	<script type="text/javascript">
	
	
	const boardTagSelect = document.getElementById('board_tag');
	const imageUploadDiv = document.getElementById('image_upload');
	
	imageUploadDiv.style.display = 'none';

	boardTagSelect.addEventListener('change', () => {
	    if (boardTagSelect.value === '2') { // 앨범 게시판이 선택된 경우
	        imageUploadDiv.style.display = 'flex'; // 보여줌
	    } else {
	        imageUploadDiv.style.display = 'none'; // 숨김
	    }
	});
	</script>
	


</body>
</html>