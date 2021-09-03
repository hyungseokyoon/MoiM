<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Appton - Bootstrap 4 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,600">
<!-- Lightbox-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/vendor/lightbox2/css/lightbox.css">
<!-- Custom font icons-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/fontastic.css">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/style.sea.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${ pageContext.servletContext.contextPath }/resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<body>
	<!-- navbar-->
	<header class="header">
		<nav class="navbar navbar-expand-lg fixed-top">
			<div class="container">
				<a href="./" class="navbar-brand"><img src="${ pageContext.servletContext.contextPath }/resources/img/logo.svg" alt=""
					class="img-fluid"></a>
				<button type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"
					class="navbar-toggler navbar-toggler-right">
					Menu<i class="fa fa-bars ml-2"></i>
				</button>
				<div id="navbarSupportedContent" class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<!-- Link-->
						<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
						<!-- Link-->
						<li class="nav-item"><a href="faq.html"
							class="nav-link active">FAQ</a></li>
						<!-- Link-->
						<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
						<!-- Link-->
						<li class="nav-item"><a href="text.html" class="nav-link">Text
								Page</a></li>
						<li class="nav-item dropdown"><a id="pages" href="#"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link dropdown-toggle">Dropdown</a>
							<div class="dropdown-menu">
								<a href="faq.html" class="dropdown-item">FAQ</a><a
									href="contact.html" class="dropdown-item">Contact</a><a
									href="text.html" class="dropdown-item">Text Page</a>
							</div></li>
					</ul>
					<a href="#" data-toggle="modal" data-target="#login"
						class="btn btn-primary navbar-btn ml-0 ml-lg-3">Login </a>
				</div>
			</div>
		</nav>
	</header>
	<!-- Login Modal-->
	<div id="login" tabindex="-1" role="dialog" aria-hidden="true"
		class="modal fade bd-example-modal-lg">
		<div role="document"
			class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body p-4 p-lg-5">
					<form action="#" class="login-form text-left">
						<div class="form-group mb-4">
							<label>Email address</label> <input type="email" name="email"
								placeholder="name@company.com" class="form-control">
						</div>
						<div class="form-group mb-4">
							<label>Password</label> <input type="password" name="password"
								placeholder="Min 8 characters" class="form-control">
						</div>
						<div class="form-group">
							<input type="submit" value="Login" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Hero Section-->
	<section class="hero">
		<div class="container text-center">
			<!-- breadcrumb-->
			<nav aria-label="breadcrumb" class="d-flex justify-content-center">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html"
						class="animsition-link">Home</a></li>
					<li aria-current="page" class="breadcrumb-item active">FAQ</li>
				</ol>
			</nav>
			<h1 class="hero-heading">Frequently asked questions</h1>
			<div class="row">
				<div class="col-lg-7 mx-auto">
					<p class="lead text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- FAQ Section-->
	<section class="pb-11 pt-7 bg-600">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h6 class="font-sans-serif text-primary fw-bold">Study
						category</h6>
					<h1 class="mb-6">스터디 검색</h1>
					<form class="row g-3" style="float: left;">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<div>
							<label class="form-label">분야</label><br>
							<select class="nav-link dropdown-toggle" id="inputCategories">
								<option selected="selected">선택</option>
								<option value="1">영어</option>
								<option value="2">중국어</option>
								<option value="3">기타 언어</option>
								<option value="4">프로그래밍</option>
								<option value="5">인문학/책</option>
								<option value="6">사진/영상</option>
								<option value="7">음악/악기</option>
								<option value="8">자격증</option>
								<option value="9">공모전</option>
								<option value="10">고시/공무원</option>
								<option value="11">기타학문</option>
								<option value="12">자유주제</option>
							</select>
						</div>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<div>
							<label class="form-label">레벨</label><br>
							<select class="nav-link dropdown-toggle" id="inputLevel">
								<option selected="selected">선택</option>
								<option value="초급">초급</option>
								<option value="중급">중급</option>
								<option value="고급">고급</option>
							</select>
						</div>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<div>
							<label class="form-label">지역</label><br>
							<select class="nav-link dropdown-toggle" id="inputLanguage">
								<option selected="selected">선택</option>
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="인천">인천</option>
								<option value="충북">충북</option>
								<option value="충남">충남</option>
								<option value="강원">강원</option>
								<option value="전북">전북</option>
								<option value="전남">전남</option>
								<option value="경북">경북</option>
								<option value="경남">경남</option>
								<option value="제주">제주</option>
								<option value="지역무관">지역무관</option>
							</select>
						</div>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<div>
							<label class="form-label">요일</label><br>
							<select class="nav-link dropdown-toggle" id="inputInstructor">
								<option selected="selected">선택</option>
								<option value="월">월</option>
								<option value="화">화</option>
								<option value="수">수</option>
								<option value="목">목</option>
								<option value="금">금</option>
								<option value="토">토</option>
								<option value="일">일</option>
								<option value="무관">무관</option>
							</select>
						</div>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

						<div>
							<label class="form-label">스터디명</label><br> <input
								type="search" name="keyword" width="200px" height="100px">
						</div>
						<div class="col-auto z-index-2">
							<br>
							<button class="btn btn-primary" type="submit">검색</button>
						</div>
					</form>


					<br>
					<br>
					<br>

					<div>
						<br>
						<br> <a href=""><button class="btn btn-primary"
								type="submit" style="float: right;">스터디 개설하기</button></a> <br>
						<br>
						<br>
						<div class="row">
							<div class="col-md-4 mb-4">
								<div class="card h-100">
									<img class="card-img-top w-100" src="${ pageContext.servletContext.contextPath }/resources/img/pic.jpg" alt="courses"
										width="500" height="250">
									<div class="card-body">
										<h4 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">스터디명</h4>
										<h6>지역</h6>
										
										<a
											class="text-muted fs--1 stretched-link text-decoration-none"
											href="#!">The Museum of Modern Art</a>
										<h6>
											기간 : 참가비 : <br> 요일, 시간 <br> 인원
										</h6>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end of .container-->
	</section>


	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 mb-5 mb-lg-0">
					<div class="footer-logo">
						<img src="${ pageContext.servletContext.contextPath }/resources/img/logo-footer.svg" alt="..." class="img-fluid">
					</div>
				</div>
				<div class="col-lg-3 mb-5 mb-lg-0">
					<h5 class="footer-heading">Site pages</h5>
					<ul class="list-unstyled">
						<li><a href="index.html" class="footer-link">Home</a></li>
						<li><a href="faq.html" class="footer-link">FAQ</a></li>
						<li><a href="contact.html" class="footer-link">Contact</a></li>
						<li><a href="text.html" class="footer-link">Text Page</a></li>
					</ul>
				</div>
				<div class="col-lg-3 mb-5 mb-lg-0">
					<h5 class="footer-heading">Product</h5>
					<ul class="list-unstyled">
						<li><a href="#" class="footer-link">Why Appton?</a></li>
						<li><a href="#" class="footer-link">Enterprise</a></li>
						<li><a href="#" class="footer-link">Blog</a></li>
						<li><a href="#" class="footer-link">Pricing</a></li>
					</ul>
				</div>
				<div class="col-lg-3">
					<h5 class="footer-heading">Resources</h5>
					<ul class="list-unstyled">
						<li><a href="#" class="footer-link">Download</a></li>
						<li><a href="#" class="footer-link">Help Center</a></li>
						<li><a href="#" class="footer-link">Guides</a></li>
						<li><a href="#" class="footer-link">Partners</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="copyrights">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 text-center text-lg-left">
						<p class="copyrights-text mb-3 mb-lg-0">
							&copy; All rights reserved. Appton.co. Design by <a
								href="https://bootstrapious.com/p/big-bootstrap-tutorial"
								class="external footer-link">Bootstrapious </a>
						</p>
						<!-- If you want to remove the backlink, please purchase a license for this template @ https://bootstrapious.com/attribution-free-license. Big thanks!-->

					</div>
					<div class="col-lg-6 text-center text-lg-right">
						<ul class="list-inline social mb-0">
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-facebook"></i></a><a href="#" class="social-link"><i
									class="fa fa-twitter"></i></a><a href="#" class="social-link"><i
									class="fa fa-youtube-play"></i></a><a href="#" class="social-link"><i
									class="fa fa-vimeo"></i></a><a href="#" class="social-link"><i
									class="fa fa-pinterest"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- JavaScript files-->
	<!-- Javascript -->
	<!-- Template의 모든 공통 JS는 이곳에 작성해주시길 바랍니다. -->
	<script type="text/javascript"
		src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/vendor/lightbox2/js/lightbox.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/front.js"></script>

</body>
</html>