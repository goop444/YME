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
.dropzone {
	border: 2px dashed #ccc;
	width: 300px;
	height: 300px;
	text-align: center;
	margin: 0 auto;
	cursor: pointer;
}

#image-input {
	padding-right: 60%
}
.input-group{
	padding-inline: 20%
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

		<c:if test="${empty mvo}">
			<div class="dropdown px-3">
				<button type="button" onclick="loginPage()"
					style="color: white; background-color: #A8DADC; border: none">login</button>
			</div>
		</c:if>

		<c:if test="${!empty mvo}">
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
		</c:if>
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

					</ul>
				</div>
			</nav>

			<main class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
				<div class="row my-4" style="text-align: center">
					<h3>당신의 동물상은 무엇일까요?</h3>
					<br>
					<h6>이미지를 업로드해주세요</h6>
				</div>
						<form action="http://127.0.0.1:80/tospring" method="post"
							enctype="multipart/form-data" id="uploadForm" name="image">
				<div class="row my-4">
					<div
						class="custom-block custom-block-profile-front custom-block-profile bg-white">
						<div class="dropzone" id="dropzone" style="margin: 0 auto">
							<p>Drag and drop a file here</p>
						</div>

							<input type="hidden" name="sessionUserid" id="sessionUserid"
								value="${mvo.id}"><br>
							<div class="contents">
								<div class="upload-box">
									<div id="drop-file" class="drag-file">
										<img id="imagePreview"
											src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
											alt="x"
											style="max-width: 300px; max-height: 300px; display: none; margin: 0 auto">
									</div>
	
								</div>
							</div><br>
								<div class="input-group">
									<input type="file" name="image" class="file form-control" id="image-input"
										aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/png, image/jpeg">
									<button class="btn btn-outline-secondary" type="submit"
										id="inputGroupFileAddon04" style="color: white; background-color: #A8DADC; border-color:#A8DADC">결과보기</button>
								</div>
						</form>
					</div>

				</div>
				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Campus Social Life 2023 - Design: <a
										rel="sponsored" href="https://www.tooplate.com"
										target="_blank">Tooplate</a>
								</p>
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
	document.addEventListener("DOMContentLoaded", () => {
	    var image_input = document.getElementById("image-input");
	    var imagePreview = document.getElementById("imagePreview");
	    var imageDragdrop = document.getElementById("dropzone");
	    
	    image_input.addEventListener("change", (event) => {
	        var file = event.target.files[0];
	        imagePreview.style.display = "block";
	        imageDragdrop.style.display = "none";
	        if (file) {
	            var reader = new FileReader();
	            
	            reader.onload = (e) => {
	            	imagePreview.src = e.target.result;
	            };
	            
	            reader.readAsDataURL(file);
	        }
	    });
	});
	
</script>

	<!-- drag and drop -->
	<script>
        var dropzone = document.getElementById("dropzone");
        var fileInput = document.getElementById("image-input");
        dropzone.addEventListener("dragover", (event) => {
            event.preventDefault();
            dropzone.classList.add("active");
        });
        
        dropzone.addEventListener("dragleave", () => {
            dropzone.classList.remove("active");
        });
        
        dropzone.addEventListener("drop", (event) => {
            event.preventDefault();
            dropzone.classList.remove("active");
            
            var file = event.dataTransfer.files[0];
            if (file) {
                var reader = new FileReader();
                reader.onload = (e) => {
                    var image = new Image();
                    image.src = e.target.result;
                    image.style.width = '300px';
                    image.style.height = 'auto';
                    dropzone.innerHTML = '';
                    dropzone.appendChild(image);                    
                };
                fileInput.files = event.dataTransfer.files;
                fileInput.style.display = "block";
                
                reader.readAsDataURL(file);
            }
        });
    </script>
	<script type="text/javascript">
		function loginPage() {
			alert("로그인 화면으로 이동");
			location.href = "${cpath}/loginPage.do";
		}
	</script>


</body>
</html>