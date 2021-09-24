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
    
    <!-- My Page index -->
    <section>
      <div class="container">
        <!-- wordPress installation-->
        <header class="section header mb-5">
          <h2>MY Page</h2>
          <p class="lead">${ loginMember.user_name }님 환영합니다</p>
        </header>
        <div class="row"> 
          <!-- index-->
          <aside class="sidebar col-lg-2.3 mt-5 mt-lg-0">
            <div class="sidebar-widget mb-4">
              <h4 class="sidebar-widget-heading">My Page</h4>
              <ul class="list-unstyled pl-0 mt-4">
                <li> <a href="mypage.do" class="categories-link">My Info</a></li>
                <li><a href="upost.do" class="categories-link">My Post</a></li>
                <li><a href="uteam.do" class="categories-link">My Team</a></li>
              </ul>
            </div>
          </aside>
          
          
          
          <!-- Update -->
          <div class="col-lg-8">   
          <form method="post" action="enroll.do" class="contact-form text-left" onsubmit="return validate();">
          
          <blockquote class="blockquote mb-5 text-left">
          <!-- 아이디 -->
              <div class="form-group mb-4 row">
              	<div class="col-md-12">
                <label>Id<sup class="text-primary">&#10033;</sup></label>
                </div>
                <div class="col-md-10">
                <input type="text" name="userid" id="userid" placeholder="moim@company.com" class="form-control">
                </div>
                <div class="col-md-2">
                <input type="button" class="tag=link" value="중복체크" onclick="return dupIdCheck();">
                </div>
              </div>
              <!-- 이름 -->
              <div class="form-group mb-4">
                <label>Name<sup class="text-primary">&#10033;</sup></label>
                <input type="text" name="username" placeholder="홍길동" class="form-control">
              </div>
              <!-- 닉네임  -->
              <div class="form-group mb-4 row">
                <div class="col-md-12">
                <label>Nickname<sup class="text-primary">&#10033;</sup></label>
                </div>
                <div class="col-md-10">
                <input type="text" name="usernn" placeholder="닉네임" class="form-control">
                </div>
                <div class="col-md-2">
                <input type="button" class="tag=link" value="중복체크" onclick="return dupNnCheck();">
                </div>
              </div>
              <!-- 비밀번호 -->
              <div class="form-group mb-4">
                <label>Password<sup class="text-primary">&#10033;</sup></label>
                <input type="text" name="userpwd" id="userpwd" placeholder="비밀번호" class="form-control">
              </div>
              <div class="form-group mb-4">
                <label>Password confirm<sup class="text-primary">&#10033;</sup></label>
                <input type="text" name="userpwd" id="userpwd2" placeholder="비밀번호 확인" class="form-control">
              </div>
              <!-- 이메일 -->
              <div class="form-group mb-4">
                <label>Email<sup class="text-primary">&#10033;</sup></label>
                <input type="text" name="email" placeholder="email@company.com" class="form-control">
              </div>
              <div class="form-group mb-4">
                <label>Phone<sup class="text-primary">&#10033;</sup></label>
                <input type="text" name="phone" placeholder="01012345678" class="form-control">
              </div>
              <div class="form-group mb-4">
                <label>Address</label>
                <input type="text" name="address" placeholder="주소" class="form-control">
              </div>
              <div class="form-group mb-4">
                <label>Interest</label><br>
                <text fontsize="1">*중복체크 가능</text>
					<table width="600">
						<tr>
							<td><input type="checkbox" name="hobby" value="english">
										영어</td>
							<td><input type="checkbox" name="hobby" value="Chinese">
										중국어</td>
							<td><input type="checkbox" name="hobby" value="language">
										기타 언어</td>
							<td><input type="checkbox" name="hobby" value="programming">
										프로그래밍</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="hobby" value="humanities">
										인문학/책</td>
							<td><input type="checkbox" name="hobby" value="picture">
										사진/영상</td>
							<td><input type="checkbox" name="hobby" value="music">
										음악/악기</td>
							<td><input type="checkbox" name="hobby" value="license">
										자격증</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="hobby" value="exhibit">
										공모전</td>
							<td><input type="checkbox" name="hobby" value=" examination">
										고시/공무원</td>
							<td><input type="checkbox" name="hobby" value="study">
										기타학문</td>
							<td><input type="checkbox" name="hobby" value="etc"
										checked> 자유주제</td>
						</tr>
					</table>
			  </div>
          
          
          
          </blockquote>
           
            <div class="form-group">
                <input type="submit" value="수정완료" class="btn btn-primary">
            </div>  
          </form>
          </div>
        </div>
      </div>
    </section>
      
    
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