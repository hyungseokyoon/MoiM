<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>팀 정보 관리</title>
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
                        <h1 class="page-title">팀 정보 관리</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body" style="padding-top: 10px;">
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">정보</h3>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>팀명</label>
                                                <input class="form-control" type="text">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>팀 소개</label>
                                                <textarea class="form-control" style="height: 112px;"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>리더 소개</label>
                                                <textarea class="form-control" style="height: 112px;"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>메인 사진</label>
                                                <input class="form-control" type="file">
                                            </div>
                                        </div>
                                    </div>
                                </form>                  
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">설정</h3>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>레벨</label>
                                                <select class="form-control">
                                                    <option value="초급">초급</option>
                                                    <option value="중급">중급</option>
                                                    <option value="상급">상급</option>
                                                    <option value="최상급">최상급</option>
                                                    <option selected="selected" value="전체">전체</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>지역</label>
                                                <input class="form-control" type="text">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>분야</label>
                                                <select class="form-control">
                                                    <option>영어</option>
                                                    <option>중국어</option>
                                                    <option>기타 언어</option>
                                                    <option>프로그래밍</option>
                                                    <option>인문학/책</option>
                                                    <option>사진/영상</option>
                                                    <option>음악/악기</option>
                                                    <option>자격증</option>
                                                    <option>공모전</option>
                                                    <option>고시/공무원</option>
                                                    <option>기타학문</option>
                                                    <option selected="selected">자유주제</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>요일</label>
                                                <select class="form-control">
                                                    <option selected="selected">항상</option>
                                                    <option>월요일</option>
                                                    <option>화요일</option>
                                                    <option>수요일</option>
                                                    <option>목요일</option>
                                                    <option>금요일</option>
                                                    <option>토요일</option>
                                                    <option>일요일</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>기간</label>
                                                <input class="form-control" type="number">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>시간</label>
                                                <input class="form-control" type="text">
                                            </div>
                                        </div>
                                    </div>
                                </form>                  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body">
            <div class="container-fluid">
                <div class="row clearfix">
			        <div class="col-md-12">
			        	<div class="card">
				            <div class="col-sm-12 text-right m-t-20">
				                <button type="button" class="btn btn-primary">Save</button>
				            </div>
			        	</div>
			    	</div>
				</div>
			</div>
		</div>
		
		<c:import url="/WEB-INF/views/teampage/common/tp_menubar.jsp" />
		
    </div>    
</div>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/bundles/lib.vendor.bundle.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/plugins/dropify/js/dropify.min.js"></script>

<script src="${ pageContext.servletContext.contextPath }/resources/team_page/js/core.js"></script>
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