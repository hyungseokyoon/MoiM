<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 글 제목</title>
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- Main Content -->
	<section>
		<h1 align="center">글 제 목</h1>
		<br><br>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<p class="lead text-muted mb-5">
						<strong>Pellentesque habitant </strong> 
						senectus et netus et malesuada fames ac turpis egestas. 
						Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
						Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. 
						Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. 
						Vestibulum erat wisi, condimentum sed, 
						<code>commodo vitae </code>, ornare sit amet, wisi. 
						Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui.  
						<a href="#">Donec non enim  </a> in turpis pulvinar facilisis. Ut felis.
					</p>
					<h2 class="mb-3">Header Level 2</h2>
					<ol class="mb-5 text-left">
						<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
						<li>Aliquam tincidunt mauris eu risus.</li>
					</ol>
					<blockquote class="blockquote mb-5 text-left">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. 
						Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. 
						Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. 
						Vivamus pretium ornare est.
					</blockquote>
					<h3 class="mb-5">Header Level 3</h3>
					<p class="mb-5">
						Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
						Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
						Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. 
						Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. 
						Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. 
						Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. 
						Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, 
						tortor neque egestas augue, eu vulputate magna eros eu erat. 
						Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus
					</p>
					<ul class="mb-4 text-left">
						<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
						<li>Aliquam tincidunt mauris eu risus.</li>
					</ul>
					<p><img src="${ pageContext.servletContext.contextPath }/resources/img/blog1.jpg" alt="..." class="img-fluid"></p>
					<p class="mt-5">
						Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
						Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
						Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. 
						Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. 
						Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, 
						elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. 
						Donec non enim in turpis pulvinar facilisis. Ut felis. 
						Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. 
						Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus
					</p>
					<br>
					<a href="${ pageContext.servletContext.contextPath }/blist.do" class="btn btn-primary">목록</a>
					<c:if test="${ loginMember.user_no == board.user_no }">
						&nbsp;&nbsp;<a href="${ pageContext.servletContext.contextPath }/bupdate.do" class="btn btn-primary">수정</a>
						&nbsp;&nbsp;<a href="${ pageContext.servletContext.contextPath }/blist.do" class="btn btn-primary">삭제</a>
					</c:if>
				</div>
			</div>
		</div>
    </section>
	
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>