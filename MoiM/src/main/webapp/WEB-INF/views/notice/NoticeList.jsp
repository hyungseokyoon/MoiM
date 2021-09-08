<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 공지사항</title>
<!-- Table에 관련된 css -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/asset/bootstrap.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/asset/style.css">
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- Main Content -->
	<!-- Table -->
	<h1 align="center">공 지 사 항</h1>
	<div class="card-body">
    	<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
    		<div class="dataTable-top">
    			<div class="dataTable-dropdown">
	    			<select class="dataTable-selector form-select">
	    				<option value="5">5</option>
	    				<option value="10" selected="">10</option>
	    				<option value="15">15</option>
	    				<option value="20">20</option>
	    				<option value="25">25</option>
	    			</select>
	    			<label>entries per page</label>
    			</div>
    			<div class="dataTable-search">
    				<input class="dataTable-input" placeholder="Search..." type="text">
    			</div>
    		</div>
    		<div class="dataTable-container">
    			<table class="table table-striped dataTable-table" id="table1">
			        <thead>
			            <tr>
			            	<th data-sortable="" style="width: 32.4484%;"><a href="#" class="dataTable-sorter">공지번호</a></th>
			            	<th data-sortable="" style="width: 114.676%;"><a href="#" class="dataTable-sorter">공지제목</a></th>
			            	<th data-sortable="" style="width: 30.9734%;"><a href="#" class="dataTable-sorter">작성자</a></th>
			            	<th data-sortable="" style="width: 40.1917%;"><a href="#" class="dataTable-sorter">작성날짜</a></th>
			            	<th data-sortable="" style="width: 30.236%;"><a href="#" class="dataTable-sorter">첨부파일</a></th>
			            </tr>
			        </thead>
        			<tbody>
        				<tr>
        					<td>Graiden</td>
        					<td><a href="${ pageContext.servletContext.contextPath }/ndetail.do">vehicula.aliquet@semconsequat.co.uk</a></td>
        					<td>076 4820 8838</td>
        					<td>Offenburg</td>
        					<td><span class="badge bg-success">Active</span></td>
        				</tr>
        				<tr>
        					<td>Dale</td>
        					<td>fringilla.euismod.enim@quam.ca</td>
        					<td>0500 527693</td>
        					<td>New Quay</td>
        					<td><span class="badge bg-success">Active</span></td>
        				</tr>
                		<tr>
                			<td>Nathaniel</td>
                			<td>mi.Duis@diam.edu</td>
                			<td>(012165) 76278</td>
                			<td>Grumo Appula</td>
                			<td><span class="badge bg-danger">Inactive</span></td>
                		</tr>
		                <tr>
		                	<td>Darius</td>
		                	<td>velit@nec.com</td>
		                	<td>0309 690 7871</td>
		                	<td>Ways</td>
		                	<td><span class="badge bg-success">Active</span></td>
		                </tr>
		                <tr>
		                	<td>Oleg</td>
		                	<td>rhoncus.id@Aliquamauctorvelit.net</td>
		                	<td>0500 441046</td>
		                	<td>Rossignol</td>
		                	<td><span class="badge bg-success">Active</span></td>
		                </tr>
		                <tr>
		                	<td>Kermit</td>
		                	<td>diam.Sed.diam@anteVivamusnon.org</td>
		                	<td>(01653) 27844</td>
		                	<td>Patna</td>
		                	<td><span class="badge bg-success">Active</span></td>
		                </tr>
		                <tr><td>Jermaine</td><td>sodales@nuncsit.org</td><td>0800 528324</td><td>Mold</td><td>
		                    <span class="badge bg-success">Active</span>
		                </td>
		                </tr>
		                <tr>
		                	<td>Ferdinand</td>
		                	<td>gravida.molestie@tinciduntadipiscing.org</td>
		                	<td>(016977) 4107</td>
		                	<td>Marlborough</td>
		                	<td><span class="badge bg-danger">Inactive</span></td>
		                </tr>
		                <tr>
		                	<td>Kuame</td>
		                	<td>Quisque.purus@mauris.org</td>
		                	<td>(0151) 561 8896</td>
		                	<td>Tresigallo</td>
		                	<td><span class="badge bg-success">Active</span></td>
		                </tr>
		                <tr>
		                	<td>Deacon</td>
		                	<td>Duis.a.mi@sociisnatoquepenatibus.com</td>
		                	<td>07740 599321</td>
		                	<td>Karapınar</td>
		                	<td><span class="badge bg-success">Active</span></td>
		                </tr>
					</tbody>
    			</table>
    		</div>
    		<div class="dataTable-bottom">
    			<div class="dataTable-info">*개의 공지사항 중 * ~ *번 까지의 결과입니다.</div>
    			<ul class="pagination pagination-primary float-end dataTable-pagination">
    				<li class="page-item pager"><a href="#" class="page-link" data-page="1">‹</a></li>
    				<li class="page-item active"><a href="#" class="page-link" data-page="1">1</a></li>
    				<li class="page-item"><a href="#" class="page-link" data-page="2">2</a></li>
    				<li class="page-item"><a href="#" class="page-link" data-page="3">3</a></li>
    				<li class="page-item pager"><a href="#" class="page-link" data-page="2">›</a></li>
    				<c:if test="${ loginMember.admin == 'Y' }">
    					<li><a href="${ pageContext.servletContext.contextPath }/nwriteform.do" class="btn btn-primary">공지작성</a></li>
    				</c:if>
    			</ul>
    		</div>
    	</div>
	</div>
	<hr>
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>

<!-- Table에 관련된 js -->
<script src="${ pageContext.servletContext.contextPath }/resources/asset/simple-datatables.js"></script>

</html>