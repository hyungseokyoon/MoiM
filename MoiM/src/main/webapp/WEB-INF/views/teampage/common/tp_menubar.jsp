<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<title>teamname</title>
</head>
<body class="font-montserrat">
	<div id="header_top" class="header_top">
		<div class="container">
			<div class="hleft">
				<a class="header-brand" href="index-2.html"><i
					class="fa fa-soccer-ball-o brand-logo"></i></a>
				<div class="dropdown">
					<a href="javascript:void(0)" class="nav-link user_btn"><img
						class="avatar" src="assets/images/user.png" alt=""
						data-toggle="tooltip" data-placement="right" title="User Menu" /></a>
				</div>
			</div>
			<div class="hright">
				<div class="dropdown">
					<a href="javascript:void(0)" class="nav-link icon settingbar"><i
						class="fa fa-gear fa-spin" data-toggle="tooltip"
						data-placement="right" title="Settings"></i></a> <a
						href="javascript:void(0)" class="nav-link icon menu_toggle"><i
						class="fa  fa-align-left"></i></a>
				</div>
			</div>
		</div>
	</div>

    <div id="rightsidebar" class="right_sidebar">
        <a href="javascript:void(0)" class="p-3 settingbar float-right"><i class="fa fa-close"></i></a>
        <div class="p-4">
            <div class="mb-4">
                <h6 class="font-14 font-weight-bold text-muted">Font Style</h6>
                <div class="custom-controls-stacked font_setting">
                    <label class="custom-control custom-radio custom-control-inline">
                        <input type="radio" class="custom-control-input" name="font" value="font-opensans">
                        <span class="custom-control-label">Open Sans Font</span>
                    </label>
                    <label class="custom-control custom-radio custom-control-inline">
                        <input type="radio" class="custom-control-input" name="font" value="font-montserrat" checked="">
                        <span class="custom-control-label">Montserrat Google Font</span>
                    </label>
                    <label class="custom-control custom-radio custom-control-inline">
                        <input type="radio" class="custom-control-input" name="font" value="font-roboto">
                        <span class="custom-control-label">Robot Google Font</span>
                    </label>
                </div>
            </div>
            <hr>
            <div>
                <h6 class="font-14 font-weight-bold mt-4 text-muted">General Settings</h6>
                <ul class="setting-list list-unstyled mt-1 setting_switch">
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Night Mode</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-darkmode">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Fix Navbar top</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-fixnavbar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Header Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-pageheader" checked="">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Min Sidebar Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-min_sidebar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Sidebar Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-sidebar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Icon Color</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-iconcolor">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Gradient Color</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-gradient">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Box Shadow</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxshadow">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">RTL Support</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-rtl">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Box Layout</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxlayout">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                </ul>
            </div>
            <hr>
        </div>
    </div>
	<div id="left-sidebar" class="sidebar ">
        <h5 class="brand-name">Soccer <a href="javascript:void(0)" class="menu_option float-right"><i class="icon-grid font-16" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
        <nav id="left-sidebar-nav" class="sidebar-nav">
            <ul class="metismenu">
                <li class="g_heading">팀 기능</li>
                <li><a href="moveTPindex.do"><i class="fa fa-dashboard"></i><span>홈</span></a></li>                        
                <li><a href="project-list.html"><i class="fa fa-list-ol"></i><span>공지</span></a></li>
                <li><a href="moveTPcalendar.do"><i class="fa fa-calendar-check-o"></i><span>일정</span></a></li>
                <li><a href="project-ticket.html"><i class="fa fa-list-ul"></i><span>채팅</span></a></li>
                <li><a href="project-ticket-details.html"><i class="icon-tag"></i><span>파일</span></a></li>
                <li><a href="project-clients.html"><i class="fa fa-user"></i><span>일지</span></a></li>
                <li>
                    <a href="javascript:void(0)" class="has-arrow arrow-c" id="updowndisp"><i class="fa fa-lock"></i><span>팀관리</span></a>
                    <ul id="manageoption">
                        <li><a href="login.html">팀정보 관리</a></li>
                        <li><a href="register.html">팀원 관리</a></li>
                    </ul>
                </li>
				<li><a href="app-chat.html"><i class="fa fa-comments"></i><span>팀 탈퇴</span></a></li>
                <li><a href="app-contact.html"><i class="fa fa-address-book"></i><span>나가기</span></a></li>
            </ul>
        </nav>        
    </div>
</body>
</html>