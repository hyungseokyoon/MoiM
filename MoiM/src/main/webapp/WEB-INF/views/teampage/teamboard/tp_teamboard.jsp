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

<title>teamboard</title>

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/sweetalert/sweetalert.css"/>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/dropify/css/dropify.min.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css" />
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
                            <span class="input-icon-addon"><i class="fa fa-search fa-2"></i></span>
                        </div>
                        <div class="notification d-flex">
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-2" data-toggle="dropdown"><i class="fa fa-language"></i></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2" src="assets/images/flags/us.svg">English</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2" src="assets/images/flags/es.svg">Spanish</a>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2" src="assets/images/flags/jp.svg">japanese</a>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2" src="assets/images/flags/bl.svg">France</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-2" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge badge-success nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="right_chat list-unstyled w350 p-0">
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object" src="assets/images/xs/avatar4.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Donald Gardner</span>
                                                    <div class="message">It is a long established fact that a reader</div>
                                                    <small>11 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="assets/images/xs/avatar5.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Wendy Keen</span>
                                                    <div class="message">There are many variations of passages of Lorem Ipsum</div>
                                                    <small>18 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>
                                        <li class="offline">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="assets/images/xs/avatar2.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Matt Rosales</span>
                                                    <div class="message">Contrary to popular belief, Lorem Ipsum is not simply</div>
                                                    <small>27 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);" class="media">
                                                <img class="media-object " src="assets/images/xs/avatar3.jpg" alt="">
                                                <div class="media-body">
                                                    <span class="name">Phillip Smith</span>
                                                    <div class="message">It has roots in a piece of classical Latin literature from 45 BC</div>
                                                    <small>33 mins ago</small>
                                                    <span class="badge badge-outline status"></span>
                                                </div>
                                            </a>                            
                                        </li>                        
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-2" data-toggle="dropdown"><i class="fa fa-bell"></i><span class="badge badge-primary nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="list-unstyled feeds_widget">
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-check"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title text-danger">Issue Fixed <small class="float-right text-muted">11:05</small></h4>
                                                <small>WE have fix all Design bug with Responsive</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-user"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">New User <small class="float-right text-muted">10:45</small></h4>
                                                <small>I feel great! Thanks team</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-thumbs-o-up"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">7 New Feedback <small class="float-right text-muted">Today</small></h4>
                                                <small>It will give a smart finishing to your site</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-question-circle"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title text-warning">Server Warning <small class="float-right text-muted">10:50</small></h4>
                                                <small>Your connection is not private</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-shopping-cart"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">7 New Orders <small class="float-right text-muted">11:35</small></h4>
                                                <small>You received a new oder from Tina.</small>
                                            </div>
                                        </li>                                   
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                                </div>
                            </div>
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
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body" style="padding-top: 0; background-color: lightsteelblue; ">
                                <div class="d-md-flex justify-content-between">
                                    <ul class="nav nav-tabs b-none">
                                        <li class="nav-item"><a class="nav-link active" id="list-tab" data-toggle="tab" href="#list" style="color: black;"><i class="fa fa-list-ul"></i> List</a></li>
                                        <li class="nav-item"><a class="nav-link" id="addnew-tab" data-toggle="tab" href="#addnew" style="color: black;"><i class="fa fa-plus"></i> Add New</a></li>
                                    </ul>
                                </div>
                                <div class="input-group mt-2">
                                    <input type="text" class="form-control search" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="list" role="tabpanel">
                        <div class="row clearfix">
                            <div class="col-lg-12">
                                <div class="table-responsive" id="users">
                                    <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
                                        <tbody>
                                            <tr class="">
                                                <td class="width35 hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar4.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="width35 hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar2.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star love"><i class="fa fa-heart"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar3.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar7.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar5.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="" >
                                                <td class="hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar6.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="width35 hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar4.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <td class="hidden-xs">
                                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                                </td>
                                                <td class="text-center width40">
                                                    <div class="avatar d-block">
                                                        <img class="avatar" src="assets/images/xs/avatar5.jpg" alt="avatar">
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
                                                <td class="text-right">
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
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
                                        <div class="mb-3"> <img src="assets/images/sm/avatar1.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Paul Schmidt</h5>
                                            <p class="text-muted">Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar8.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="assets/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Andrew Patrick</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="assets/images/sm/avatar3.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Mary Schneider</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card " >
                                    <div class="card-body">
                                        <div class="card-status bg-green"></div>
                                        <div class="mb-3"> <img src="assets/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Sean Black</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar6.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar5.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar7.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="assets/images/sm/avatar5.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">David Wallace</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="card-status bg-pink"></div>
                                        <div class="mb-3"> <img src="assets/images/sm/avatar6.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Andrew Patrick</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar5.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar6.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="assets/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Michelle Green</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar8.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar7.jpg" alt="Avatar"></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="mb-3"> <img src="assets/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                        <div class="mb-2">
                                            <h5 class="mb-0">Mary Schneider</h5>
                                            <p>Aalizeethomas@info.com</p>
                                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                        </div>
                                        <span class="font-12 text-muted">Common Contact</span>
                                        <ul class="list-unstyled team-info margin-0 pt-2">
                                            <li><img src="assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                            <li><img src="assets/images/xs/avatar7.jpg" alt="Avatar"></li>
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

<!-- soccer/project/app-contact.html  07 Jan 2020 03:40:35 GMT -->
</html>