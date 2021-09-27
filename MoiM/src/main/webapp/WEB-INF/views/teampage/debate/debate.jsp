<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="${ pageContext.servletContext.contextPath }/resources/team_page/images/favicon.ico" type="image/x-icon" />

<title>토론 게시판</title>
<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/sweetalert/sweetalert.css"/>
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
                        <h1 class="page-title">토론게시판</h1>                        
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
        <div class="section-light py-3 chat_app">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="card bg-none b-none">
                            <div class="card-header bline bg-none">
                                <div class="card-options">
                                    <a href="javascript:void(0)" class="p-1"><i class="fa fa-plus"></i></a>
                                    <a href="javascript:void(0)" class="p-1 chat_list_btn"><i class="fa fa-align-right"></i></a>
                                </div>
                            </div>                        
                            <div class="chat_windows">
                                <ul class="mb-0">
                                    <li class="other-message">
                                        <div class="message" style="width: 40%;">
                                            <p class="bg-light-blue" style="margin-bottom: -18px; position: relative; z-index: 1; width: 100%;"><font style="vertical-align: inherit;">토론제목</font></p>
                                            <table class="table table-vcenter mb-0 table_custom spacing8 text-nowrap" >
                                            	<tbody>
                                            		<tr>
                                            			<td  style="background-color: rgb(248, 249, 250); width:50%;">user_nn</td>
                                            			<td  style="background-color: rgb(248, 249, 250); width:20%; text-align: right;">댓글 5</td>
                                            			<td  style="background-color: rgb(248, 249, 250); width:30%; text-align: right;">2021-09-23</td>
                                            		</tr>
                                            	</tbody>
                                            </table>
                                        </div>
                                    </li>                                      
                                    <li class="my-message">
                                        <div class="message" style="width: 40%;">
                                            <p class="bg-light-gray" style="margin-bottom: -18px; position: relative; z-index: 1; width: 100%; text-align:left;"><font style="vertical-align: inherit; ">토론제목</font></p>
                                            <table class="table table-vcenter mb-0 table_custom spacing8 text-nowrap" >
                                            	<tbody>
                                            		<tr>
                                            			<td  style="background-color: rgb(248, 249, 250); width:50%; text-align: left;">user_nn</td>
                                            			<td  style="background-color: rgb(248, 249, 250); width:20%; text-align: right;">댓글 5</td>
                                            			<td  style="background-color: rgb(248, 249, 250); width:30%; text-align: right;">2021-09-23</td>
                                            		</tr>
                                            	</tbody>
                                            </table>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>        
    </div>
</div>
	


<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/lib.vendor.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/sweetalert.bundle.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/dropify/js/dropify.min.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/core.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/page/sweetalert.js"></script>
</body>
</html>