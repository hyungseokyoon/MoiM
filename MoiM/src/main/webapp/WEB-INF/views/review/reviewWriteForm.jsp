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
</section><section>
	<br> <br> <br>
	<article>

		<div class="container" role="main">

			<h2>리뷰 작성</h2>

			<div class="row" align="center">
				<form action="/Shoesgone/quinsert" method="post"
					style="align: center;">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd; width: 1000px; align: center;">

						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center;"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="review_title" maxlength="50"
									 required></td>
							</tr>
							<tr>

								<td><input type="text" class="form-control"
									name="review_writer" readonly value=""></td>
							</tr>
							<tr>

								<td>
									<select name="field" class="select form-control"
									style="padding: 0; ">

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
								</select></td>
							</tr>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="스터디명" name="team_name" maxlength="50"
									 required></td>
							</tr>
						
							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="review_content" maxlength="2048"
										style="height: 350px;" required></textarea></td>
							</tr>
							
							<tr>
							<td>
							<input type="file" name="review_original_filepath" style="align:left;">
							</td>
							</tr>
						</tbody>
					</table>
					<!-- 글쓰기 버튼 생성 -->
					<center>
						<input type="submit" value="등록하기" class="btn btn-primary">
						&nbsp; <input type="reset" value="작성취소" class="btn btn-primary">
						&nbsp; <input type="button" value="목록" class="btn btn-primary"
							onclick="javascript:location.href='/Shoesgone/qulist?page=1'; return false;">
					</center>
				</form>
			</div>

		</div>






		<div></div>
		<br> <br> <br>

	</article>
</section>

<!-- Footer -->
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>