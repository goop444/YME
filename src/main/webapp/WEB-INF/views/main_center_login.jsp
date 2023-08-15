<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<div class="title-group mb-3" style="text-align: center;">
	<h1 class="h2 mb-0">${mvo.univ} ${mvo.nick}님,</h1>

	<small class="text-muted">어서오세요!</small>
</div>
<div class="col-lg-5 col-12" style="width: 100%;">
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
		<div class="custom-block-profile-image-wrap mb-4">
			<img src="./resources/images/medium-shot-happy-man-smiling.jpg"
				class="custom-block-profile-image img-fluid" alt=""> <a
				href="setting.html" class="bi-pencil-square custom-block-edit-icon"></a>
		</div>
		<div class="custom-block custom-block-bottom d-flex flex-wrap"
			style="margin-bottom: 0px;">
			<div class="custom-block-bottom-item">
				<a href="#" class="d-flex flex-column"> <i
					class="custom-block-icon bi-wallet"></i> <small>내 동아리</small>
				</a>
			</div>

			<div class="custom-block-bottom-item">
				<a href="#" class="d-flex flex-column"> <i
					class="custom-block-icon bi-upc-scan"></i> <small>내 모임</small>
				</a>
			</div>

			<div class="custom-block-bottom-item">
				<a href="#" class="d-flex flex-column"> <i
					class="custom-block-icon bi-send"></i> <small>채팅방</small>
				</a>
			</div>
		</div>
	</div>
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">

		<div class="title-group mb-3" style="text-align: left;">
			<h1 class="h5 mb-0">교내 추천 동아리</h1>
			<small class="text-muted">10minutes이 추천하는 ${mvo.univ}의 동아리에요</small>
		</div>
		<div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circleMark.jpeg"
					class="job-image img-fluid" alt="">
			</div>

			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${mvo.preference}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="#" class="job-title-link">${mvo.circle_at}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.univ}
						</p>

					</div>
				</div>
			</div>
		</div>
		<div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circleMark.jpeg"
					class="job-image img-fluid" alt="">
			</div>

			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${mvo.preference}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="#" class="job-title-link">${mvo.circle_at}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.univ}
						</p>

					</div>
				</div>
			</div>
		</div>
		<div class="job-thumb d-flex" style="padding: 10px 25px 0px 25px;">
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circleMark.jpeg"
					class="job-image img-fluid" alt="">
			</div>

			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${mvo.preference}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="#" class="job-title-link">${mvo.circle_at}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.univ}
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
		<div class="title-group mb-3" style="text-align: left;">
			<h1 class="h5 mb-0">이 달의 동아리 랭킹</h1>
			<small class="text-muted">가장 활동이 많은 동아리를 알려줄 거에요</small>
		</div>
		<div class="custom-block custom-block-bottom d-flex flex-wrap"
			style="margin-bottom: 0px; justify-content: space-around; padding: 0px;">
			<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
				style="background-color: white; width: 30%; text-align: left;">
				<div class="rank_title" style="color: #F8C86C; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #F8C86C;">1</span>st
				</div>
				<div style="display: flex; flex-direction: column;">
					<div class="rank_uname"
						style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
					<div
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
					</div>
				</div>
				<div class="image-wrapper">
					<img src="./resources/images/circleMark.jpeg" class="img-fluid"
						alt="" style="width: auto;">
				</div>
			</div>
			<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
				style="background-color: white; width: 30%; text-align: left;">
				<div class="rank_title" style="color: #ACC9DA; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #ACC9DA;">2</span>nd
				</div>
				<div style="display: flex; flex-direction: column;">
					<div class="rank_uname"
						style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
					<div
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
					</div>
				</div>
				<div class="image-wrapper">
					<img src="./resources/images/circleMark.jpeg" class="img-fluid"
						alt="" style="width: auto;">
				</div>
			</div>
			<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
				style="background-color: white; width: 30%; text-align: left;">
				<div class="rank_title" style="color: #DCA26C; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #DCA26C;">3</span>rd
				</div>
				<div style="display: flex; flex-direction: column;">
					<div class="rank_uname"
						style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">부경대학교</div>
					<div
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="rank_cname" style="font-weight: 700; font-size: 17px;">모비딕스</div>
					</div>
				</div>
				<div class="image-wrapper">
					<img src="./resources/images/circleMark.jpeg" class="img-fluid"
						alt="" style="width: auto;">
				</div>
			</div>
		</div>
	</div>
</div>