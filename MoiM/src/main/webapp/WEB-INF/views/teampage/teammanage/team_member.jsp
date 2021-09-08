<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<title>팀원 관리 페이지</title>
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
                        <h1 class="page-title">Contact</h1>                        
                    </div>
                    <div class="right">
                        <div class="input-icon xs-hide mr-4">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                        </div>
                        <div class="notification d-flex">
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-2" data-toggle="dropdown"><i class="fa fa-user"></i></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <a class="dropdown-item" href="page-profile.html"><i class="dropdown-icon fe fe-user"></i> Profile</a>
                                    <a class="dropdown-item" href="app-setting.html"><i class="dropdown-icon fe fe-settings"></i> Settings</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><span class="float-right"><span class="badge badge-primary">6</span></span><i class="dropdown-icon fe fe-mail"></i> Inbox</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-send"></i> Message</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-help-circle"></i> Need help?</a>
                                    <a class="dropdown-item" href="login.html"><i class="dropdown-icon fe fe-log-out"></i> Sign out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body" style="padding-top: 10px;">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="list" role="tabpanel">
                        <div class="row clearfix">
                            <div class="col-lg-12">
	                            <div class="card-header">
	                                <h3 class="card-title">신청 목록</h3>
	                            </div>
	                                <div class="table-responsive" id="users" style="height: 300px;">
	                                    <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
	                                        <tbody>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">John Smith</a></div>
	                                                    <div class="text-muted">+264-625-2583</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">johnsmith@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">Merri Diamond</a></div>
	                                                    <div class="text-muted">+264-625-2583</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">hermanbeck@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star love"><i class="fa fa-heart"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar3.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Sara Hopkins</a></div>
	                                                    <div class="text-muted">+264-625-3333</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">maryadams@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar7.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Andrew Patrick</a></div>
	                                                    <div class="text-muted">+264-625-2586</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">mikethimas@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Claire Peters</a></div>
	                                                    <div class="text-muted">+264-625-3333</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">clairepeters@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="" >
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar6.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Allen Collins</a></div>
	                                                    <div class="text-muted">+264-625-4526</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">kenpatrick@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">Erin Gonzales</a></div>
	                                                    <div class="text-muted">+264-625-1593</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">eringonzales@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Harry McCall</a></div>
	                                                    <div class="text-muted">+264-625-2468</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">susiewillis@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addtask"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청서 확인</font></font></button>
	                                                </td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
                            	</div>
                            	<div class="col-lg-12" style="padding-top: 10px">
	                            <div class="card-header">
	                                <h3 class="card-title">팀원 목록</h3>
	                            </div>
	                                <div class="table-responsive" id="users" style="height: 300px;">
	                                    <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
	                                        <tbody>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">John Smith</a></div>
	                                                    <div class="text-muted">+264-625-2583</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">johnsmith@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">Merri Diamond</a></div>
	                                                    <div class="text-muted">+264-625-2583</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">hermanbeck@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star love"><i class="fa fa-heart"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar3.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Sara Hopkins</a></div>
	                                                    <div class="text-muted">+264-625-3333</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">maryadams@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar7.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Andrew Patrick</a></div>
	                                                    <div class="text-muted">+264-625-2586</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">mikethimas@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Claire Peters</a></div>
	                                                    <div class="text-muted">+264-625-3333</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">clairepeters@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="" >
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar6.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Allen Collins</a></div>
	                                                    <div class="text-muted">+264-625-4526</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">kenpatrick@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="width35 hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div><a href="javascript:void(0);">Erin Gonzales</a></div>
	                                                    <div class="text-muted">+264-625-1593</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">eringonzales@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                            <tr class="">
	                                                <td class="hidden-xs">
	                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
	                                                </td>
	                                                <td class="text-center width40">
	                                                    <div class="avatar d-block">
	                                                        <img class="avatar" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="avatar">
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <div class="from"><a href="javascript:void(0);">Harry McCall</a></div>
	                                                    <div class="text-muted">+264-625-2468</div>
	                                                </td>
	                                                <td class="hidden-xs">
	                                                    <div class="text-muted">susiewillis@info.com</div>
	                                                </td>
	                                                <td class="hidden-sm">
	                                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
	                                                </td>
	                                                <td class="text-center">
	                                                    <button class="btn btn-primary" style="margin-right: 15px;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">등급 변경</font></font></button>
	                                                    <button class="btn btn-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">회원 강퇴</font></font></button>
	                                                </td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
                            	</div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="grid" role="tabpanel">
                        <div class="row row-deck">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card " >
                                    <div class="card-body">
                                        <div class="card-status bg-blue"></div>
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar1.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Paul Schmidt</h5>
                                            <p class="text-muted">Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar1.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar8.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Andrew Patrick</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar1.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar3.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar3.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Mary Schneider</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar1.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card " >
                                    <div class="card-body">
                                        <div class="card-status bg-green"></div>
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Sean Black</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar6.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar7.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar5.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">David Wallace</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar3.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar4.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="card-status bg-pink"></div>
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar6.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Andrew Patrick</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar5.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar6.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar1.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Michelle Green</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar8.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar7.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Mary Schneider</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="${ pageContext.servletContext.contextPath }/resources/team_page/images/xs/avatar7.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        <div class="row clearfix">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row clearfix">
                                            <div class="col-lg-4 col-md-12">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Enter Name">
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="form-group">
                                                    <input type="number" class="form-control" placeholder="Enter Number">
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="form-group">
                                                    <input type="email" class="form-control" placeholder="Enter Email">
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-group">
                                                    <textarea type="text" class="form-control" rows="4">Enter your Address</textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <input type="file" class="dropify">
                                            </div>
                                            <div class="col-lg-12 mt-3">
                                                <button type="submit" class="btn btn-primary">Add</button>
                                                <button type="submit" class="btn btn-default">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
		<c:import url="/WEB-INF/views/teampage/common/tp_footer.jsp" />

    </div>
</div>


<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/lib.vendor.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/sweetalert.bundle.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/dropify/js/dropify.min.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/core.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/page/sweetalert.js"></script>
<script>
$(function() {
    "use strict";
    
    $('.dropify').dropify();

    var drEvent = $('#dropify-event').dropify();
    drEvent.on('dropify.beforeClear', function(event, element) {
        return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
    });

    drEvent.on('dropify.afterClear', function(event, element) {
        alert('File deleted');
    });

    $('.dropify-fr').dropify({
        messages: {
            default: 'Glissez-déposez un fichier ici ou cliquez',
            replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
            remove: 'Supprimer',
            error: 'Désolé, le fichier trop volumineux'
        }
    });
});
</script>
</body>
</html>