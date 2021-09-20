<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!Doctype html>
<html lang="en" dir="ltr">

<!-- soccer/project/index.html  07 Jan 2020 03:37:47 GMT -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="${ pageContext.servletContext.contextPath }/resources/team_page/images/favicon.ico" type="image/x-icon" />

<title>MoiM : <c:out value="${ team.team_name }" /></title>

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/bootstrap/css/bootstrap.min.css" />

<!-- Plugins css -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/charts-c3/c3.min.css"/>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css"/>

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

<div id="main_content">
	<c:import url="/WEB-INF/views/teampage/common/tp_menubar.jsp" />
    <div class="page">
    <div id="page_top" class="section-body top_dark">
		<div class="container-fluid">
			<div class="page-header">
				<div class="left">
					<a href="javascript:void(0)" class="icon menu_toggle mr-3"><i
						class="fa  fa-align-left"></i></a>
					<h1 class="page-title">Dashboard</h1>
				</div>
			</div>
		</div>
	</div>
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="mb-4">
                            <h4>Welcome ${ sessionScope.loginMember.user_nn }</h4>
                        </div>                        
                    </div>
                </div>
                <div class="row clearfix row-deck">
                	<div class="col-xl-8 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">공지</h3>
                                <div class="card-options">
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="card-options-fullscreen" data-toggle="card-fullscreen"><i class="fa fa-window-maximize"></i></a>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
	                                <thead>
	                                    <tr>
	                                        <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">제 목</font></font></th>
	                                        <th style="width: 16.66%;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">작성 날짜</font></font></th>
	                                        <th style="width: 8.33%;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">작성자</font></font></th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                	<c:forEach items="${ boardtoplist }" var="boardtoplist">
		                                    <tr>
		                                        <td>
		                                            <h6 class="mb-0"><font style="vertical-align: inherit;"><a href="#">${ boardtoplist.tn_title }</a></font></h6>
		                                        </td>
		                                        <td>
		                                            <div class="text-muted"><font style="vertical-align: inherit;">${ boardtoplist.tn_date }</font></div>
		                                        </td>
		                                        <td>
		                                            <div class="text-muted"><font style="vertical-align: inherit;">${ boardtoplist.userVO.user_nn }</font></div>
		                                        </td>
		                                    </tr>
	                                    </c:forEach>
	                                </tbody>
	                            </table>
                            </div>
                        </div>                
                    </div>
                    <div class="col-xl-4 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">팀 정보</h3>
                                <div class="card-options">
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="card-options-fullscreen" data-toggle="card-fullscreen"><i class="fa fa-window-maximize"></i></a>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>팀 소개</label>
                                            <textarea class="form-control" name="team_intro" style="height: 75px;" readonly><c:out value="${ team.team_intro }" /></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>레 벨</label>
                                            <input class="form-control" type="text" name="team_level" value="${ team.team_level }" readonly>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>지 역</label>
                                            <input class="form-control" type="text" name="team_local" value="${ team.team_local }" readonly>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>활동요일</label>
                                            <input class="form-control" type="text" name="team_act_day" value="${ team.team_act_day }" readonly>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>활동시간</label>
                                            <input class="form-control" type="text" name="team_act_time" value=""${ team.team_act_time } readonly>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix row-deck">
                    <div class="col-xl-8 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">일지</h3>
                            </div>
                            <div class="card-body">
                            <div class="row clearfix mt-2">
                                <div class="col-lg-4 col-md-6">
                        			<div class="card plannedcard" id="on">
				                          <div class="card-body text-center">
				                              <h6>Planned</h6>
				                              <a href="#">
				                              <input type="text" class="knob" value="${ planned }" data-width="90" data-height="90" data-thickness="0.1" data-fgColor="#6e7687" readonly>
				                              </a>
				                          </div>
                        			</div>
                    			</div>
			                    <div class="col-lg-4 col-md-6">
			                        <div class="card inprogresscard" id="on">
			                            <div class="card-body text-center">
			                                <h6>In progress</h6>
			                                <input type="text" class="knob" value="${ inprogress }" data-width="90" data-height="90" data-thickness="0.1" data-fgColor="#6e7687" readonly>
			                            </div>
			                        </div>
			                    </div>
			                   	<div class="col-lg-4 col-md-6">
			                        <div class="card completecard" id="on">
			                            <div class="card-body text-center">
			                                <h6>Completed</h6>
			                                <input type="text" class="knob" value="${ complete }" data-width="90" data-height="90" data-thickness="0.1" data-fgColor="#6e7687" readonly>
			                            </div>
			                        </div>
			                    </div>
			                </div>
                            </div>
                        </div>                
                    </div>
                    <div class="col-xl-4 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">파일</h3>
                                <div class="card-options">
                                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="card-options-fullscreen" data-toggle="card-fullscreen"><i class="fa fa-window-maximize"></i></a>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
	                                <thead>
	                                    <tr>
	                                        <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">파일 이름</font></font></th>
	                                        <th style="width: 16.66%;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">업로더</font></font></th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                	<c:forEach items="${ filerecentlist }" var="filerecentlist">
		                                    <tr>
		                                        <td>
		                                            <h6 class="mb-0"><font style="vertical-align: inherit;"><a href="#">${ filerecentlist.file_originalfilename }</a></font></h6>
		                                        </td>
		                                        <td>
		                                            <div class="text-muted"><font style="vertical-align: inherit;">${ filerecentlist.uesrVO.user_nn }</font></div>
		                                        </td>
		                                    </tr>
	                                    </c:forEach>
	                                </tbody>
	                            </table>
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

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/apexcharts.bundle.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/counterup.bundle.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/knobjs.bundle.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/c3.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/core.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/page/project-index.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/chart/knobjs.js"></script>
</body>
<!-- soccer/project/index.html  07 Jan 2020 03:37:47 GMT -->
</html>
