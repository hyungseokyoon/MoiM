<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>teamname</title>
<style>
.metismenu ul a::before{
	content:none;
}
</style>
</head>
<body class="font-montserrat">
	<div id="header_top" class="header_top">
		<div class="container">
			<div class="hleft">
				<c:url var="moveTPindex" value="moveTPindex.do">
                	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                	<c:param name="leaderok" value="${ sessionScope.team_leader }"></c:param>
                </c:url>
				<a class="header-brand" href="${ moveTPindex }">
					<img alt="" src="${ pageContext.servletContext.contextPath }/resources/team_page/images/moimicon.png">
				</a>
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
                            <span class="custom-switch-description">Header Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-pageheader" checked="">
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
                            <span class="custom-switch-description">RTL Support</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-rtl">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                </ul>
            </div>
            <hr>
        </div>
    </div>
	<div id="left-sidebar" class="sidebar ">
        <h5 class="brand-name">${ sessionScope.team_name }<a href="javascript:void(0)" class="menu_option float-right"><i class="fa fa-th-large fa-2" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
        <nav id="left-sidebar-nav" class="sidebar-nav">
            <ul class="metismenu">
                <li class="g_heading">??? ??????</li>
                <li>
                	<c:url var="moveTPindex" value="moveTPindex.do">
                        	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                        	<c:param name="leaderok" value="${ sessionScope.team_leader }"></c:param>
                    </c:url>
                	<a href="${ moveTPindex }"><i class="fa fa-dashboard"></i><span>???</span></a>
               	</li>                        
                <li>
                	<c:url var="moveTPteamboard" value="moveTPteamboard.do">
                        	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                    </c:url>
                	<a href="${ moveTPteamboard }"><i class="fa fa-list-ol"></i><span>??????</span></a>
                </li>
                <li>
                	<c:url var="moveTPcalendar" value="moveTPcalendar.do">
                        	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                    </c:url>
                	<a href="${ moveTPcalendar }"><i class="fa fa-calendar-check-o"></i><span>??????</span></a>
                </li>
                <li>
              	    <c:url var="moveChat" value="chat.do">
                        	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                    </c:url>
                <a href="moveDebate.do"><i class="fa fa-comments"></i><span>??????</span></a></li>
                <li><a href="${ pageContext.servletContext.contextPath }/flist.do"><i class="fa fa-file fa-2"></i><span>??????</span></a></li>
				<li>
                	<c:url var="moveTPdaily" value="moveTPdaily.do">
                        	<c:param name="team_num" value="${ sessionScope.team_num }"></c:param>
                    </c:url>
                	<a href="${ moveTPdaily }"><i class="fa fa-user"></i><span>??????</span></a>
                </li>
                <c:if test="${ sessionScope.team_leader eq 'Y' }">
	                <li>
	                    <a href="javascript:void(0)" class="has-arrow arrow-c" id="updowndisp"><i class="fa fa-lock"></i><span>?????????</span></a>
	                    <ul id="manageoption">
	                        <li>
	                        <c:url var="moveTeamSetting" value="moveTeamSetting.do">
	                        	<c:param name="team_num" value="${ team_num }"></c:param>
	                        </c:url>
	                        <a href="${ moveTeamSetting }"><i class="fa fa-cogs"></i>????????? ??????</a></li>
	                        <li>
	                        <c:url var="moveTeamMember" value="moveTeamMember.do">
	                        	<c:param name="team_num" value="${ team_num }"></c:param>
	                        </c:url>
	                        <a href="${ moveTeamMember }"><i class="fa fa-users"></i><span>?????? ??????</span></a></li>
	                    </ul>
	                </li>
                </c:if>
                <c:if test="${ sessionScope.team_leader eq 'N' }">
					<li><a class="nav-link" href="#teamquitModal" data-toggle="modal"><i class="fa fa-comments"></i><span>??? ??????</span></a></li>
				</c:if>
                <li><a href="exitTeampage.do"><i class="fa fa-address-book"></i><span>?????????</span></a></li>
            </ul>
        </nav>        
    </div>
    
    <div class="modal fade" id="teamquitModal" tabindex="-1" role="dialog" aria-labelledby="teamquitModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-ml" role="document">
			<div class="modal-content">
				<form action="teamquit.do" method="post">
	    		<div class="modal-header">
	        		<h5 class="modal-title" id="teamquitModalLabel">??? ??????</h5>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	        			<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
	      		<div class="modal-body" id="changerankdiv">
	      			<input type="hidden" name="team_member_no" value="${ teammember.team_member_no }">
		      		<div class="col-sm-12">
					    <div class="form-group text-center">
					        <h3><font style="vertical-align: inherit;">????????? ?????? ?????????????????????????</font></h3><br>
					        <h6 class="text-danger"><font style="vertical-align: inherit;">?????? ?????? ???, ?????? ???????????? ?????? ??? ????????????.</font></h6>
					    </div>
					</div>
	      		</div>
			  	<div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">??????</button>
			        <button type="submit" class="btn btn-primary">??????</button>
			    </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>