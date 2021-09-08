<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Appton - Bootstrap 4 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">

<body>
	<!-- navbar-->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />

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
							<select class="nav-link dropdown-toggle" id="inputCategories" style="width:130px; height:40px;">
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
							<select class="nav-link dropdown-toggle" id="inputLevel" style="width:130px; height:40px;">
								<option selected="selected">선택</option>
								<option value="초급">초급</option>
								<option value="중급">중급</option>
								<option value="고급">고급</option>
							</select>
						</div>
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<div>
							<label class="form-label">지역</label><br>
							<select class="nav-link dropdown-toggle" id="inputLanguage" style="width:130px; height:40px;">
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
							<select class="nav-link dropdown-toggle" id="inputInstructor" style="width:130px; height:40px;">
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
								type="search" name="keyword" width="200px" style="width:180px; height:40px;">
						</div>
						<div class="col-auto z-index-2">
							<br>
							<button class="btn btn-primary" type="submit" style="width:120px; height:50px;">검색</button>
						</div>
					</form>


					<br>
					<br>
					<br>

					<div>
						<br>
						
						<br>
						<c:url var="rinsert" value="/rcinsert.do">
										
						</c:url>
									
						 <a href="${ rinsert }"><button class="btn btn-primary"
								style="float: right;">스터디 개설하기</button></a> <br>
						<br>
						<br>
						<div class="row">
							<div class="col-md-4 mb-4">
								<div class="card h-100">
									<img class="card-img-top w-100" src="${ pageContext.servletContext.contextPath }/resources/img/pic.jpg" alt="courses"
										width="500" height="250">
									<div class="card-body">
									<c:url var="rde" value="/rcdetail.do"></c:url>
										<a class="text-muted fs--1 stretched-link text-decoration-none"
											href="${ rde }"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1/3
										<h4 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">스터디명</h4>
										<h6>지역 : </h6>
										<h6>기간 : </h6>
										<h6>참가비 : </h6>
										<h6>요일 : </h6>
										<h6>시간 : </h6>
										
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


	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />

	

</body>
</html>