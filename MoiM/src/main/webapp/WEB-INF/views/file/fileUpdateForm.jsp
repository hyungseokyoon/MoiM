<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="javascript:void(0)" type="image/x-icon"/>
<title>File</title>
<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page//plugins/bootstrap/css/bootstrap.min.css" />

<!-- Core css -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page//css/main.css"/>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page//css/theme1.css"/>
</head>
<body class="font-montserrat">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>

<div id="main_content">
<c:import url="/WEB-INF/views/teampage/common/tp_menubar.jsp" />
<div class="page">
        <div id="page_top" class="section-body top_dark">
            <div class="container-fluid">
                
            </div>
        </div>
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="row row-cards">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="page-options d-flex">
                                    <div class="input-icon ml-2">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

				<form action="fupdate.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="file_num" value="${ tfile.file_num }">
				<c:if test="${ !empty tfile.file_originalfilename }">
					<input type="hidden" name="original_filepath" value="${ tfile.file_originalfilename }">
					<input type="hidden" name="rename_filepath" value="${ tfile.file_renamefilename }">
				</c:if>
				<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
				<tr><th>제 목</th>
				<td><input type="text" name="team_num" value="${ tfile.team_num }"></td></tr>
				<tr><th>작성자</th>
				<td><input type="text" name="file_uploader" value="${ tfile.file_uploader }"></td></tr>
				<tr><th>파일선택</th>
				<td>
					<%-- 원래 첨부파일이 있는 경우 --%>
					<c:if test="${ !empty tfile.file_originalfilename }">
						${ tfile.file_originalfilename } &nbsp; 
						<input type="checkbox" name="delFlag" value="yes"> 파일삭제 <br>
					</c:if>
					<br>
					새로 첨부 : <input type="file" name="upfile">	
				</td></tr>
				<tr><th colspan="2">
				<input type="submit" value="수정하기"> &nbsp; 
				<input type="reset" value="작성취소"> &nbsp; 
				<button onclick="javascript:history.go(-1); return false;">이전 페이지로 이동</button></th></tr>
				</table>
				</form>



            </div>
        </div>
       
    </div>
</div>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page//bundles/lib.vendor.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page//js/core.js"></script>
</body>
</html>