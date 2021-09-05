<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 공지사항</title>
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	<hr>
	<!-- Main Content -->
	<!-- Table Test -->
	<div class="card-body">
		<h2>리뷰 게시판</h2>
		<table class="table table-striped" id="table1">
	        <thead>
	            <tr>
	                <th>번호</th>
	                <th>분류</th>
	                <th>제목</th>
	                <th>작성자</th>
	                <th>작성일</th>
	                <th>조회수</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td>Graiden</td>
	                <td>vehicula.aliquet@semconsequat.co.uk</td>
	                <td>076 4820 8838</td>
	                <td>Offenburg</td>
	                <td>Offenburg</td>
	                <td>Offenburg</td>
	                
	            </tr>
	            
	        </tbody>
	    </table>
	</div>
	<hr>
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>