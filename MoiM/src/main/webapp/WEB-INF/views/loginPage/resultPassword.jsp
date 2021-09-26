<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>MoiM</title>
    <link rel="icon" href="${ pageContext.servletContext.contextPath }/resources/team_page/images/favicon.ico" type="image/x-icon" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,600">
    <!-- Lightbox-->
    <link rel="stylesheet" href="vendor/lightbox2/css/lightbox.css">
    <!-- Custom font icons-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
  
    <!-- Menubar -->
	<c:import url="/WEB-INF/views/common/excmenubar.jsp" />
	<hr>
    
    <!-- Hero Section-->
    <section class="hero">
      <div class="container text-center">
        <!-- breadcrumb-->
        <nav aria-label="breadcrumb" class="d-flex justify-content-center">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html" class="animsition-link">Home</a></li>
            <li aria-current="page" class="breadcrumb-item active">비밀번호  재설정</li>
          </ol>
        </nav>
        <h1 class="hero-heading">비밀번호 재설정</h1>
        <div class="row">
          <div class="col-lg-7 mx-auto">
            <p class="lead text-muted mt-2">비밀번호를 새로 설정해주세요</p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 비밀번호 재설정 -->
    <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
          
            <!-- 비 로그인시  -->
            <c:if test="${ empty loginMember }">
            	<h2 class="mb-3">비밀번호 새로 설정하기</h2>
            	<ol class="mb-5 text-left">
            	</ol>
            	<blockquote class="blockquote mb-5 text-left">
            	입력하신 정보를 다시 한 번 확인해주세요
            	</blockquote>
            	<a href="${ currentPage }" type="button" class="btn btn-primary">Return</a>
            	<br><br>
            </c:if>
            
            <!-- 로그인시 -->
            <c:if test="${ !empty loginMember }">
            	<h2 class="mb-3">비밀번호 새로 설정하기</h2>
            	<ol class="mb-5 text-left">
              		<li>전에 쓰던 비밀번호와 겹치지 않게 주의해주세요.</li>
              		<li>최소 8글자 이상부터 비밀번호 설정이 가능합니다.</li>
            	</ol>
            	<blockquote class="blockquote mb-5 text-left">
            	새로 쓸 비밀번호
            	새로 쓸 비밀번호 재 확인
            	</blockquote>
            	
            	비밀번호 일치하거나 사용 가능 할 시
            	<c:if test="${ empty password }">
          			<a onClick = "alert('로그인 후 이용해주세요')" data-toggle="modal" data-target="#login"  class="btn btn-primary">확인</a>
          		</c:if>
          		비밀번호 일치하지 않거나 사용 불가능 할 시
          		<c:if test="${ password }">
          			<a onClick = "alert('새 비밀번호를 다시 확인해주세요')" data-toggle="modal" class="btn btn-primary">확인</a>
          		</c:if>
            	<br><br>
            </c:if>
            
          </div>
        </div>
      </div>
      
      
    
    <!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/lightbox2/js/lightbox.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>