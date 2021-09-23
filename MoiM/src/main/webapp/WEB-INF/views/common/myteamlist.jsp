<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myteamlist</title>
</head>
<body>
	<c:forEach items="${ myteamlist }" var="myteam" varStatus="status">
		<c:url var="moveTPindex" value="moveTPindex.do">
        	<c:param name="team_num" value="${ myteam.team_num }"></c:param>
        	<c:param name="leaderok" value="${ myteam.team_member_leader }"></c:param>
        </c:url>
       	<a href="${ moveTPindex }">${ myteam.team_num } 번팀으로 이동</a>
	</c:forEach>
</body>
</html>