<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="javascript:void(0)" type="image/x-icon"/>

<title>File</title>
<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/dropify/css/dropify.min.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"/>

<!-- Core css -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/css/main.css"/>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/css/theme1.css"/>
</head>
<body class="font-montserrat">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>
<!-- Overlay For Sidebars -->

<div id="main_content">
  <c:import url="/WEB-INF/views/teampage/common/tp_menubar.jsp" />
<div class="page">
        <div id="page_top" class="section-body top_dark">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="left">
                        <a href="javascript:void(0)" class="icon menu_toggle mr-3"><i class="fa  fa-align-left"></i></a>
                        <h1 class="page-title">파일</h1>
                    </div>
                    <div class="right">
		                <div class="notification d-flex">
		                    <div class="dropdown d-flex show">
		                        <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-2" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-bell"></i><span class="badge badge-primary nav-unread"></span></a>
		                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow" x-placement="bottom-end" style="position: absolute; transform: translate3d(-312px, 34px, 0px); top: 0px; left: 0px; will-change: transform;">
		                            <ul class="list-unstyled feeds_widget">
		                            	<c:forEach items="${ alertlist }" var="alertlist">
			                                <li>
			                                    <div class="feeds-body">
			                                    	<c:url var="alertdelone" value="alertdelone.do">
			                                    		<c:param name="alert_num" value="${ alertlist.alert_num }" />
			                                    	</c:url>
			                                        <h4 class="title text-muted">${ alertlist.alert_cate }<small class="float-right text-muted">${ alertlist.alert_date }</small></h4><a href="${ alertdelone }" class="float-right"><i class="fa fa-trash-o"></i></a>
			                                        <small class="title text-muted">${ alertlist.alert_content }</small>
			                                    </div>
			                                </li>
		                                </c:forEach>                  
		                            </ul>
		                            <div class="dropdown-divider"></div>
		                            <c:url var="alertdelall" value="alertdelall.do">
		                            	<c:param name="team_member_no" value="${ teammember.team_member_no }"></c:param>
		                            </c:url>
		                            <a href="${ alertdelall }" class="dropdown-item text-center text-muted-dark readall">모든 알람 삭제</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
                </div>
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
                                        <span class="input-icon-addon">
                                            <i class="fe fe-search"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Search photo">
                                    </div>
                                    <button type="submit" class="btn btn-primary ml-2" onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/fwform.do';">Upload New</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-cards">
                <c:forEach items="${ requestScope.list }" var="f">
                    <div class="col-sm-6 col-lg-4">
                        <div class="card p-3">
                            <a href="javascript:void(0)" class="mb-3">
                                <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/gallery/1.jpg" alt="Photo by Nathan Guerrero" class="rounded">
                            </a>
                            <div class="d-flex align-items-center px-2">
                                <img class="avatar avatar-md mr-3" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar1.jpg" alt="">
                                <div>
                                    <div>${f.file_originalfilename }</div>
                                    <small class="d-block text-muted">
                                    	<fmt:formatDate value="${f.file_reg_date }" pattern="yyyy-MM-dd"/>
                                    </small>
                                </div>
                                <div class="ml-auto text-muted">
                              	 	 <c:url var="fup" value="/fupview.do">
											<c:param name="file_num" value="${ f.file_num }" />
									 </c:url>
										<a href="${ fup }">수정</a>
									<c:url var="fdel" value="/fdelete.do">
											<c:param name="file_num" value="${ f.file_num }" />
									 </c:url>
										 <a href="${ fdel }">삭제</a>
                                    <a href="javascript:void(0)" class="icon"><i class="fe fe-eye mr-1"></i>${f.file_uploader }</a>
                                </div>
                            </div>
                        </div>
                    </div>
                 </c:forEach>
                </div>
            </div>
        </div>
       
    </div>
</div>



<script src="${ pageContext.servletContext.contextPath }/resources/team_page//bundles/lib.vendor.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page//js/core.js"></script>

</body>
</html>