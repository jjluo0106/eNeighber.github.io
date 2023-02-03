<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>公設-管理員頁面</title>

<!-- sweetalert2 -->
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>

<!-- 	jquery連結 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>

<!-- nicepage的js連結 -->
<script class="u-script" type="text/javascript"
	src="//capp.nicepage.com/48696d1f7a5bb11ecfa71ea34e8ae97a2bd29514/nicepage.js"
	defer=""></script>
<!-- nicepage的css連結 -->
<link rel="stylesheet"
	href="//capp.nicepage.com/48696d1f7a5bb11ecfa71ea34e8ae97a2bd29514/nicepage.css"
	media="screen">

<link rel="stylesheet"
	href="//capp.nicepage.com/48696d1f7a5bb11ecfa71ea34e8ae97a2bd29514/nicepage.css"
	media="screen">

<!-- 自己的css -->
<link rel="stylesheet" href="${contextRoot}/css/equipment02.css">
<link rel="stylesheet" href="${contextRoot}/css/equipment01.css">

<!-- 中文bootstrap版本連結 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<meta name="theme-color" content="#478ac9">



</head>
<!-- 開始  -------------------------------------------------------------------- -->



<body data-home-page="公設-管理員介面.html" data-home-page-title="公設-管理員介面"
	class="u-body u-xl-mode" data-lang="en">

	<section class="u-carousel u-slide u-block-fc45-1" id="carousel_f57a"
		data-interval="5000" data-u-ride="carousel">
		<ol class="u-absolute-hcenter u-carousel-indicators u-block-fc45-2">
			<li data-u-target="#carousel_f57a" data-u-slide-to="0"
				class="u-active u-grey-30"></li>
		</ol>



		<div class="u-carousel-inner" role="listbox">
			<div
				class="u-active u-align-center u-carousel-item u-clearfix u-white u-section-1-1">
				<div class="u-clearfix u-sheet u-sheet-1">
					<div
						class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">



						<div class="u-tab-content u-tab-content-1">

							<div
								class="u-align-left u-container-style u-palette-3-light-2 u-tab-active u-tab-pane u-tab-pane-1"
								id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
								<div class="u-container-layout u-container-layout-1">
									<div
										class="u-expanded-width u-layout-horizontal u-list u-list-1">
										<div class="u-repeater u-repeater-1">
											<div
												class="u-container-style u-list-item u-palette-4-base u-radius-50 u-repeater-item u-shape-round u-list-item-1"
												data-animation-name="zoomIn" data-animation-duration="2000"
												data-animation-direction="">
												<div
													class="u-container-layout u-similar-container u-container-layout-2">
													<span
														class="u-file-icon u-hover-feature u-icon u-text-white u-icon-2"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X"><img
														src="https://assets.nicepagecdn.com/318a0dcd/3469266/images/233146-f87590ee.png"
														alt=""></span>
													<h4 class="u-custom-font u-font-open-sans u-text u-text-1">
														健身房</h4>
													<p class="u-text u-text-2">進入請穿著運動衣褲，自備小毛巾</p>
													<a id="gym"
														class="checkInBtn u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-palette-4-base u-text-body-alt-color u-text-hover-palette-4-base u-btn-1"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X">check in</a> <a
														class="gymCheckout btn btn-success u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-palette-4-base u-text-body-alt-color u-text-hover-palette-4-base u-btn-1"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000" id="健身房"
														data-animation-direction="X">check out</a>

													<script type="text/javascript">
														// 														$("#checkinGym").click(function(e){
														// 															e.preventDefault();
														// 															fetch("${contextRoot}/equipment/checkin/健身房").then(result => result.text()).then(message => {console.log(message)})
														// 														})
																			</script>


												</div>
											</div>
											<div
												class="u-container-style u-list-item u-palette-4-base u-radius-50 u-repeater-item u-shape-round u-video-cover u-list-item-2"
												data-animation-name="zoomIn" data-animation-duration="2000"
												data-animation-direction="">
												<div
													class="u-container-layout u-similar-container u-container-layout-3">
													<span
														class="u-file-icon u-hover-feature u-icon u-text-white u-icon-2"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X"><img
														src="https://assets.nicepagecdn.com/318a0dcd/3469266/images/2932366-dfbb1bfd.png"
														alt=""></span>
													<h4 class="u-custom-font u-font-open-sans u-text u-text-3">
														游泳池</h4>
													<p class="u-text u-text-4">進入泳池前請配合簡單沖洗，並佩戴泳帽</p>
													<a id="pool"
														class="checkInBtn u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-palette-4-base u-text-body-alt-color u-text-hover-palette-4-base u-btn-2"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X" id="checkinPool"> check
														in<br>
													</a> <a
														class="poolCheckout u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-palette-4-base u-text-body-alt-color u-text-hover-palette-4-base u-btn-1"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000" id="游泳池"
														data-animation-direction="X">check out</a>

													<script type="text/javascript">
														// 														$("#checkinPool").click(function(e){
														// 															e.preventDefault();
														// 															fetch("${contextRoot}/equipment/checkin/游泳池").then(result => result.text()).then(message => {console.log(message)})
														// 														})
													</script>

												</div>
											</div>
											<div
												class="u-container-style u-list-item u-palette-4-base u-radius-50 u-repeater-item u-shape-round u-video-cover u-list-item-3"
												data-animation-name="zoomIn" data-animation-duration="2000"
												data-animation-direction="">
												<div
													class="u-container-layout u-similar-container u-container-layout-4">
													<span
														class="u-file-icon u-hover-feature u-icon u-text-white u-icon-3"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X"><img
														src="https://assets.nicepagecdn.com/318a0dcd/3469266/images/1883815-93cb39a7.png"
														alt=""></span>
													<h4 class="u-custom-font u-font-open-sans u-text u-text-5">
														三溫暖</h4>
													<p class="u-text u-text-6">入內注意他人隱私，切勿使用拍攝器材</p>
													<a id="sauna"
														class="checkInBtn u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50  u-text-body-alt-color u-text-hover-palette-4-base u-btn-3"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000"
														data-animation-direction="X" id="checkinSauna">check
														in</a> <a
														class="saunaCheckout u-active-white u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-white u-none u-radius-50 u-text-active-palette-4-base u-text-body-alt-color u-text-hover-palette-4-base u-btn-1"
														data-animation-name="customAnimationIn"
														data-animation-duration="1000" id="三溫暖"
														data-animation-direction="X">check out</a><br>

													<script type="text/javascript">
														// 														$("#checkinSauna").click(function(e){
														// 															e.preventDefault();
														// 															fetch("${contextRoot}/equipment/checkin/三溫暖").then(result => result.text()).then(message => {console.log(message)})
														// 														})
																			</script>

												</div>
											</div>
										</div>
										<a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-1"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span>
										</a> <a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-2"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span>
										</a> <a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-3"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span>
										</a> <a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-4"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span>
										</a> <a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-5"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="m64.5,122.6c32,0 58.1-26 58.1-58.1s-26-58-58.1-58-58,26-58,58 26,58.1 58,58.1zm0-108c27.5,5.32907e-15 49.9,22.4 49.9,49.9s-22.4,49.9-49.9,49.9-49.9-22.4-49.9-49.9 22.4-49.9 49.9-49.9z">
																			</path>
																			<path
														d="m70,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2 1.6-1.6 1.6-4.2 0-5.8l-23.5-23.5 23.5-23.5c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-26.4,26.4c-0.8,0.8-1.2,1.8-1.2,2.9s0.4,2.1 1.2,2.9l26.4,26.4z">
																			</path>
																		</svg>
										</span>
										</a> <a
											class="u-absolute-vcenter u-flip-horizontal u-flip-vertical u-gallery-nav u-gallery-nav-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-gallery-nav-6"
											href="#" role="button"> <span aria-hidden="true">
												<svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span> <span class="sr-only"> <svg viewBox="0 0 129 129">
																			<path
														d="M64.5,122.6c32,0,58.1-26,58.1-58.1S96.5,6.4,64.5,6.4S6.4,32.5,6.4,64.5S32.5,122.6,64.5,122.6z M64.5,14.6    c27.5,0,49.9,22.4,49.9,49.9S92,114.4,64.5,114.4S14.6,92,14.6,64.5S37,14.6,64.5,14.6z">
																			</path>
																			<path
														d="m51.1,93.5c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l26.4-26.4c0.8-0.8 1.2-1.8 1.2-2.9 0-1.1-0.4-2.1-1.2-2.9l-26.4-26.4c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l23.5,23.5-23.5,23.5c-1.6,1.6-1.6,4.2 0,5.8z">
																			</path>
																		</svg>
										</span>
										</a>
									</div>
									<div
										class="u-hover-feature u-shape u-shape-svg u-text-palette-4-base u-shape-1"
										data-animation-name="flipIn" data-animation-duration="1500"
										data-animation-delay="0" data-animation-direction="X">
										<svg class="u-svg-link" preserveAspectRatio="none"
											viewBox="0 0 160 160" style="">
																	<use xmlns:xlink="http://www.w3.org/1999/xlink"
												xlink:href="#svg-a0bf">
																	</use>
																</svg>
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
											xml:space="preserve" class="u-svg-content"
											viewBox="0 0 160 160" x="0px" y="0px" id="svg-a0bf"
											style="enable-background: new 0 0 160 160;">
																	<path
												d="M80,30c27.6,0,50,22.4,50,50s-22.4,50-50,50s-50-22.4-50-50S52.4,30,80,30 M80,0C35.8,0,0,35.8,0,80s35.8,80,80,80
	s80-35.8,80-80S124.2,0,80,0L80,0z"></path>
																</svg>
									</div>

									<%----------------------------------------------------- 新增彈出
																-----------------------------------------------------%>

									<div class="modal fade" id="myModal" tabindex="-1"
										role="dialog" aria-labelledby="myModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h4 class="modal-title" id="myModalLabel">新增物件</h4>
												</div>
												<div class="modal-body form-element">
													<div class="form-element-padding">
														<form
															action="${contextRoot}/equipment/EquipmentMaintainFormB"
															method="post" enctype="multipart/form-data">

															<div class="form-group">
																<label class="col-sm-2 control-label text-right">物件名稱</label>
																<div class="col-sm-10">
																	<input type="text" class="form-control border-left"
																		name="itemName" value="" required>
																</div>
															</div>

															<input name="itemId" type="hidden" />

															<!-- 					<input name="maintainTime" /> -->
															<!-- 					<input name="doneTime" /> -->

															<div class="form-group">
																<label class="col-sm-2 control-label text-right">金額</label>
																<div class="col-sm-10">
																	<input type="text" class="form-control border-left"
																		name="itemCost" value="" required>
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-2 control-label text-right">購入時間</label>
																<div class="col-sm-10">
																	<input type="Date" class="form-control border-left"
																		name="itemBirth" value="" required>
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-2 control-label text-right">報修時間</label>
																<div class="col-sm-10">
																	<input type="Date" class="form-control border-left"
																		name="itemDie" value="" required>
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-2 control-label text-right">照片</label>
																<input id="Photo" type="file" name="file"
																	style="display: inline" /> <input type="hidden"
																	name="maintainPhoto" id="productPhotos" />
																<div>
																	<img class="img" name="imgpreview" id="imgpreview"
																		style="width: 200px" />
																</div>
															</div>


															<div class="form-group text-center"
																style="margin-top: 10px">
																<button type="submit" class="btn btn-primary">送出</button>
																<button type="reset" class="btn btn-warning">重置</button>
															</div>
														</form>
													</div>
												</div>

											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal -->
									</div>
									<%-----------------------------------------------------
																	新增彈出尾
																	-----------------------------------------------------%>



									<div
										class="u-container-style u-group u-palette-4-base u-radius-30 u-shape-round u-group-1"
										data-animation-name="customAnimationIn"
										data-animation-duration="1250" data-animation-delay="500">
										<div class="u-container-layout u-container-layout-5">
											<h1 class="u-text u-text-7">
												社區活動中心 <br>入口登記
											</h1>
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">
																Modal title</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">...</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Close</button>
															<button type="button" class="btn btn-primary">Save
																changes</button>
														</div>
													</div>
												</div>
											</div>
											<p class="u-large-text u-text u-text-variant u-text-8">
												智慧。樂活。便捷<br>
											</p>
											<img class="u-image u-image-default u-image-1"
												src="https://assets.nicepagecdn.com/318a0dcd/3469266/images/7f952f42871b16a00679c46b830240f7a25b87fee1f8e1a998ff221553db807bdb73d7e02c7ca10c410d4bded50aa939beae0dd89d24b1ea864349_1280.jpg"
												alt="" data-image-width="1280" data-image-height="960">
										</div>
									</div>
									<div
										class="u-image u-image-circle u-preserve-proportions u-image-2"
										data-image-width="1280" data-image-height="853"
										data-animation-name="customAnimationIn"
										data-animation-duration="1250"></div>
									<div alt=""
										class="u-align-left u-border-18 u-border-palette-4-base u-image u-image-circle u-image-3"
										data-image-width="1280" data-image-height="853"
										data-animation-name="customAnimationIn"
										data-animation-duration="1500" data-animation-delay="500"></div>
									<div class="u-palette-4-base u-shape u-shape-circle u-shape-2"
										data-animation-name="customAnimationIn"
										data-animation-duration="1500" data-animation-delay="250"></div>
									<div class="u-expanded-width u-list u-list-2">
										<div class="u-repeater u-repeater-2">
											<div
												class="u-align-center u-container-style u-list-item u-repeater-item">
												<div
													class="u-container-layout u-similar-container u-container-layout-6">
													<h1
														class="u-text u-text-default u-text-palette-3-base u-title u-text-9"
														data-animation-name="counter"
														data-animation-event="scroll"
														data-animation-duration="3000">${gym}</h1>
												</div>
											</div>
											<div
												class="u-align-center u-container-style u-list-item u-repeater-item">
												<div
													class="u-container-layout u-similar-container u-container-layout-7">
													<h1
														class="u-text u-text-default u-text-palette-3-base u-title u-text-10"
														data-animation-name="counter"
														data-animation-event="scroll"
														data-animation-duration="3000">${swim}</h1>
												</div>
											</div>
											<div
												class="u-align-center u-container-style u-list-item u-repeater-item">
												<div
													class="u-container-layout u-similar-container u-container-layout-8">
													<h1
														class="u-text u-text-default u-text-palette-3-base u-title u-text-11"
														data-animation-name="counter"
														data-animation-event="scroll"
														data-animation-duration="3000">${sonia}</h1>
												</div>
											</div>
										</div>
									</div>
									<img class="u-image u-image-default u-image-4"
										src="https://assets.nicepagecdn.com/318a0dcd/3469266/images/8be44f4a971d01989f2268ae4c182f15b5488a08c5c4a9db76ce1b2e97b63276f1aa051d08394d7dde2c6b2b3adfd88db981c9a325d96ba0960d9c_1280.jpg"
										alt="" data-image-width="1280" data-image-height="833">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a
			class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-text-grey-30 u-block-fc45-3"
			href="#carousel_f57a" role="button" data-u-slide="prev"> <span
			aria-hidden="true"> <svg class="u-svg-link"
					viewBox="0 0 477.175 477.175">
											<path
						d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path>
										</svg>
		</span> <span class="sr-only">Previous</span>
		</a> <a
			class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-text-grey-30 u-block-fc45-4"
			href="#carousel_f57a" role="button" data-u-slide="next"> <span
			aria-hidden="true"> <svg class="u-svg-link"
					viewBox="0 0 477.175 477.175">
											<path
						d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z">
											</path>
										</svg>
		</span> <span class="sr-only">Next</span>
		</a>

	</section>
</body>

<!-- 登記彈出 -->
<script type="text/javascript">
						// --------------------------------iiiiiiiiiiiiiiiiiiiiiiiiii
						const tagChange = { gym: "健身房", pool: "游泳池", sauna: "三溫暖" }
						$(".checkInBtn").click(function () {
							const { value: formValues } = Swal.fire({
								title: '登記資訊',
								html:
									'ID:<input id="houseId" class="swal2-input">' +
									'名字:<input id="houseMember" class="swal2-input">',

								focusConfirm: false,
								preConfirm: () => {

									let houseId = document.getElementById("houseId");
									let houseMember = document.getElementById("houseMember");
									
									let data = {
										"houseId": houseId.value,
										"houseMember": houseMember.value,
										"registerspace": tagChange[this.id]
									};


									console.log(houseId.value, houseMember.value);
									console.log(JSON.stringify(data));


									fetch("/eNeighborIndex/equipment/checkin",
										{
											method: "POST", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }
										});
									
										Swal.fire({
										  position: 'top-end',
										  icon: 'success',
										  title: '歡迎！'+houseMember.value,
										  showConfirmButton: false,
										  timer: 1500
										  
										})
								  		 setInterval("location.reload()",1500);
										
								}

							})

							if (formValues) {
								Swal.fire(JSON.stringify(formValues))
							}

						})


						$(".saunaCheckout").click(function () {//三溫暖checkout
							let placeName = this.id;
							const { value: formValues } = Swal.fire({
								title: placeName + 'Checkout',
								html:
									'<select name="type" class="type" placeholder="請選擇自己的姓名">' +
									'<c:forEach var="MS" items="${membersInSauna}">' +
									'<option value="${MS.registerId}">${MS.houseMember}</option>' +
									'</c:forEach>'+
									'</select>'
								,
								focusConfirm: false,
								preConfirm: () => {
									let registerId = $(":selected").val();
									console.log("registerId :"+registerId);

									let data = {
										"registerId": registerId,
									};
									fetch("/eNeighborIndex/equipment/RegisterCheckout",
										{
											method: "POST", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }
										}).then(result => result.text()).then(message=>{
										console.log("message = "+message);
									
										Swal.fire({
										  position: 'top-end',
										  icon: 'success',
										  title: '拜拜！',
										  showConfirmButton: false,
										  timer: 1500
										  
										})
										})
								  		 setInterval("location.reload()",1500);
									
										
								}
							})
							if (formValues) {
								Swal.fire(JSON.stringify(formValues))
							}
						})
						$(".gymCheckout").click(function () {//健身房checkout
							let placeName = this.id;
							const { value: formValues } = Swal.fire({
								title: placeName + 'Checkout',
								html:
									'<select name="type" class="type" placeholder="請選擇自己的姓名">' +
									'<c:forEach var="MG" items="${membersInGym}">' +
									'<option value="${MG.registerId}">${MG.houseMember}</option>' +
									'</c:forEach>'+
									'</select>'
								,
								focusConfirm: false,
								preConfirm: () => {
									let registerId = $(":selected").val();
// 									let houseMember = $(":selected").val();
									
									console.log("registerId :"+registerId);
// 									console.log("houseMember :"+houseMember);

									let data = {
										"registerId": registerId,
// 										"houseMember": houseMember,
									};
									fetch("/eNeighborIndex/equipment/RegisterCheckout",
										{
											method: "POST", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }
										});
									
									Swal.fire({
										  position: 'top-end',
										  icon: 'success',
										  title: '拜拜！',
										  showConfirmButton: false,
										  timer: 1500
										  
										})
								  		 setInterval("location.reload()",1500);
								}
							})
							if (formValues) {
								Swal.fire(JSON.stringify(formValues))
							}
						})
						$(".poolCheckout").click(function () {//游泳池checkout
							let placeName = this.id;
							const { value: formValues } = Swal.fire({
								title: placeName + 'Checkout',
								html:
									'<select name="type" class="type" placeholder="請選擇自己的姓名">' +
									'<c:forEach var="MP" items="${membersInPool}">' +
									'<option value="${MP.registerId}">${MP.houseMember}</option>' +
									'</c:forEach>'+
									'</select>'
								,
								focusConfirm: false,
								preConfirm: () => {
									let registerId = $(":selected").val();
									
									console.log("registerId :"+registerId);

									let data = {
										"registerId": registerId,
									};
									fetch("/eNeighborIndex/equipment/RegisterCheckout",
										{
											method: "POST", body: JSON.stringify(data), headers: { "Content-type": "application/json;charset=utf-8" }
										});
									Swal.fire({
										  position: 'top-end',
										  icon: 'success',
										  title: '拜拜！',
										  showConfirmButton: false,
										  timer: 1500
										  
										})
								  		 setInterval("location.reload()",1500);
										
									
								}
							})
							if (formValues) {
								Swal.fire(JSON.stringify(formValues))
							}
							
						})
					</script>
<!-- 登記彈出end -->


</html>
<!-- 

	// const houseId = document.getElementById(houseId)
	// const houseMember = document.getElementById(houseMember)
	// let fD = new FormData()
	// Id = prompt('請輸入你的ID');
	// Member = prompt('請輸入你的姓名');

	// console.log(Id)
	// console.log(Member)
// alert('Hello ' + nickname);
	 -->