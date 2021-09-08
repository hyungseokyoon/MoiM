<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>moim</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<style type="text/css">
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('${ pageContext.servletContext.contextPath }/resources/img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}


</style>
<script type="text/javascript">
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}

let rating = new Rating();//별점 인스턴스 생성

document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    document.querySelector('.rating').addEventListener('click',function(e){
        let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
        }
    })
});
</script>

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
						  <!-- 평점 선택창 -->
						
   			<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="review_content" maxlength="2048"
										style="height: 350px;" required></textarea></td>
							</tr>
							 <tr>
						  <td>
						  <div class="review_rating">
            <div class="warning_msg">별점을 선택해 주세요.</div>
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label>
                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
                <label for="rating2"></label>
                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
                <label for="rating3"></label>
                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
                <label for="rating4"></label>
                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label>
            </div>
        </div>
	
</td>
</tr>
							<tr>
							<td align="left">
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