<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>moim</title>
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

<section>
	<div class="container" align="center">
		<header class="section-header">
			<h2 class="mb-2">팀 정보 수정</h2>

		</header>
		<div>
			<div class="col-lg-7">
				<form action="#" class="contact-form text-left">
					<div class="form-group mb-4">
						<label>스터디명<sup class="text-primary">✱</sup></label> <input
							type="text" name="teamname" class="form-control" readonly>
					</div>
					<div class="form-group mb-4">
						<label>메인사진<sup class="text-primary">✱</sup></label><br> <input
							type="file" name="email">
					</div>
					<div class="form-group mb-4">
						<label>레벨<sup class="text-primary">✱</sup></label> <select
							name="level" class="select form-control" style="padding: 0;">
							<option value="초급" style="font-size: 10;">초급</option>
							<option value="중급">중급</option>
							<option value="고급">고급</option>
						</select>
					</div>
					<div class="form-group mb-4">
						<label>지역<sup class="text-primary">✱</sup></label> <select
							name="region" class="select form-control" style="padding: 0;">
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
					<div class="form-group mb-4">
						<label>분야<sup class="text-primary">✱</sup></label> <select
							name="field" class="select form-control" style="padding: 0;">

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
					<div class="form-group mb-4">
						<label>요일<sup class="text-primary">✱</sup></label> <select
							name="level" class="select form-control" style="padding: 0;">
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

					<div class="form-group mb-4">
						<label>시간<sup class="text-primary">✱</sup></label> <input
							type="text" name="name" placeholder="ex) 14:00~16:00"
							class="form-control">
					</div>
					<div class="form-group mb-4">
						<label>기간(주)<sup class="text-primary">✱</sup></label> <input
							type="number" name="duration" value="4" min="0"
							class="numberinput form-control">
					</div>
					<div class="form-group mb-4">
						<label>참여비<sup class="text-primary">✱숫자만입력</sup></label> <input
							type="text" name="fee" placeholder="ex) 10,000"
							class="form-control">
					</div>


					<div class="container" align="center">
						<header class="section-header">
							<h2 class="mb-2">구인 정보 수정</h2>

						</header>
					</div>

					<div class="form-group mb-4">
						<label>스터디 소개<sup class="text-primary">✱</sup></label>
						<textarea name="studyintro" class="form-control"></textarea>
					</div>
					<div class="form-group mb-4">
						<label>리더 소개<sup class="text-primary">✱</sup></label>
						<textarea name="leaderintro" class="form-control"></textarea>
					</div>

					<div class="form-group" align="center">
						<a href=""> <input type="submit"
							value="수정하기" class="btn btn-primary"></a>
					</div>
				</form>


			</div>

		</div>
	</div>
</section>

<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />

	

</body>
</html>