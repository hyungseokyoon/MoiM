<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>moim</title>
<link rel="icon" href="${ pageContext.servletContext.contextPath }/resources/team_page/images/favicon.ico" type="image/x-icon" />

</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- Main Content -->
    <!-- 모임 만들기-->
    <!-- TODO  -->
    <section>
      <div class="container">
        <div class="text-center">
          <h2>원하는 모임 만들기 </h2>
          <p class="lead text-muted mt-2">찾고있는 팀이 없다면<br> 만들어보세요!</p>
          <!-- 비로그인시 : 회원만 이용할 수 있다는 관련 팝업을 띄우고 OK 클릭 시 로그인 페이지로 이동-->
          <c:if test="${ empty loginMember }">
          	<a onClick = "alert('로그인 한 회원만 이용할 수 있습니다')" data-toggle="modal" data-target="#login"  class="btn btn-primary">Create MoiM</a>
          </c:if>
          <!-- 로그인 시 : 모임 만드는 페이지로 이동-->
          <c:if test="${ !empty loginMember }">
          	<a href="#" class="btn btn-primary">Create MoiM</a>
          </c:if>
        </div>
        <div class="row">
          <div class="col-lg-7 mx-auto mt-5">
          	<img src="${ pageContext.servletContext.contextPath }/resources/img/illustration-1.svg" alt="..." class="intro-image img-fluid"></div>
        </div>
      </div>
    </section>
    
    <!-- 지역별 검색-->
    <section>
      <div class="container">
        <div class="text-center">
          <h2>지역별 MoiM 찾기</h2>
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <p class="lead text-muted mt-2">오프라인 모임을 선호하신다면, 가까운 지역의 MoiM들을 찾아보세요.</p>
            </div>
          </div>
        </div>
        <div class="integrations mt-5">
          <div class="row">
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/monitor.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">서울</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/target.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">인천 &amp; 경기</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/chat.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">충북</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/idea.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">경남</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/coffee-cup.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">강원</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="box text-center">
                <div class="icon d-flex align-items-end"><img src="${ pageContext.servletContext.contextPath }/resources/img/pen.svg" alt="..." class="img-fluid"></div>
                <h3 class="h4">전남</h3>
                <p class="text-small font-weight-light">()개의 MoiM이 있습니다</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 공지사항 -->
    <section class="bg-gray">
      <div class="container">
        <div class="text-center">
          <h2>공지사항</h2>
          <div class="row">
            <div class="col-lg-8 mx-auto", style="float: right; border: 1px solid navy; padding: 5px; margin: 5px">
              <table id="newnotice" border="1" cellspacing="0">
				<div class="table-head">
					<div class="noticetitle">제목</div>
					<div class="registdate">작성일</div>
				</div>
				<div class="table-row">
					<div class="noticeno"></div>
					<div class="noticetitle">
						<a href=""></a>
					</div>
					<div class="registdate"></div>
				</div>
			  </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    
	<hr>
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>




