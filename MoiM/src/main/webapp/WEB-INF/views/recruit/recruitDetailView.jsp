<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>moim</title>


<style type="text/css">
</style>
</head>
<body>

	<!-- navbar-->

	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- FAQ Section-->
	<br>
	<br>
	<section style="margin-top: -21.5rem">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<img class="w-100" src="${ pageContext.servletContext.contextPath }/resources/img/pic.jpg" alt="...">
					<h1 class="my-4">스터디 소개</h1>
					<p>The online Master of Computer and Information Technology
						degree (MCIT Online) is an online masters degree in Computer
						Science tailored for non-Computer Science majors. Offered by the
						University of Pennsylvania, this new program brings the
						long-running, established on-campus MCIT degree online. The MCIT
						Online program empowers students without computer science
						backgrounds to succeed in computing and technology fields. MCIT
						Online students come from diverse academic backgrounds ranging
						from business and history to chemistry and medicine.</p>

					<h1>리더 소개</h1>
					<p>Computer science might not be in your past, but it will be
						in your future. Technology has an immense impact on our lives, and
						is creating fields and positions that didn’t exist five years ago.
						Equipped with a competitive computer science degree, MCIT Online
						graduates will be uniquely positioned to fill roles in finance,
						healthcare, education, and government, as well as in the core
						software development industry. Exposure to real-world projects
						throughout the program will prepare students to utilize skills
						that positively impact society.</p>
					<br>
					<br>
					<br>
					<br>
					<center>
						<button class="btn btn-primary" id="openModalBtn">지원하기</button>
					</center>
					<br>
					<br>
					<br>



				</div>
				<div class="col-md-4">
					<div class="card">
						<ul class="list-group list-group-flush">
							<li class="list-group-item"><strong>지역 </strong>: 1200
								students</li>
							<li class="list-group-item"><strong>인원 </strong>: 2 hours</li>
							<li class="list-group-item"><strong>참가비 </strong>: 8</li>
							<li class="list-group-item"><strong>시간 </strong>: Technology</li>
							<li class="list-group-item"><strong>레벨 </strong>:
								Intermediate Level</li>
							<li class="list-group-item"><strong>기간 </strong>:
								Intermediate Level</li>
							<li class="list-group-item"><strong>요일 </strong>:
								Intermediate Level</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- end of .container-->
	</section>

	<!-- 모달 영역 -->
	<div id="modalBox" class="modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">스터디 지원</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					
				</div>
				<div class="modal-body">
				<div class="form-group mb-4">
                <label>지원자 소개<sup class="text-primary">✱</sup></label>
                <textarea name="studyintro" class="form-control"></textarea>
              </div>
              <div class="form-group mb-4">
                <label>첨부파일</label><br>
                <input type="file" name="email">
              </div>
              
              
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">지원하기</button>
					<button type="button" class="btn btn-default" id="closeModalBtn">취소</button>
				</div>
			</div>
		</div>
	</div>





<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />

	<!-- JavaScript files-->
	

	<script>
// 모달 버튼에 이벤트를 건다.
$('#openModalBtn').on('click', function(){
$('#modalBox').modal('show');
});
// 모달 안의 취소 버튼에 이벤트를 건다.
$('#closeModalBtn').on('click', function(){
$('#modalBox').modal('hide');
});
</script>

</body>
</html>