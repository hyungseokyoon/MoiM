<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 공지사항</title>
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	<hr>
	<!-- Main Content -->
	<!-- Table Test -->
<!-- Main Content -->
	<!-- Table -->
	<h1 align="center">리뷰 게시판</h1>
	<section>
		<div class="row">
			<div class="col-lg-8 mx-auto">
				<div class="card-body">
			    	<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
			    		<div class="dataTable-top">
			    			<div class="dataTable-dropdown">
				    			<select class="dataTable-selector form-select">
				    				<option value="5">5</option>
				    				<option value="10" selected>10</option>
				    				<option value="15">15</option>
				    				<option value="20">20</option>
				    				<option value="25">25</option>
				    			</select>
				    			<label>페이지당 게시글</label>
			    			</div>
			    			<div class="dataTable-search">
			    				<input class="dataTable-input" placeholder="Search..." type="text">
			    			</div>
			    		</div>
			    		<div class="dataTable-container">
			    			<table class="table table-striped dataTable-table" id="table1">
						        <thead>
						            <tr style="text-align:center;">
						            	<th data-sortable="" style="width: 100px;">번호</th>
						            	<th data-sortable="" style="width: 100px;">분류</th>
						            	<th data-sortable="">글제목</th>
						            	<th data-sortable="" style="width: 100px;">작성자</th>
						            	<th data-sortable="" style="width: 150px;">작성날짜</th>
						            	<th data-sortable="" style="width: 100px;">조회수</th>
						            </tr>
						        </thead>
			        			<tbody>
			        				<c:forEach items="${ list }" var="rv">
			        					<tr style="text-align:center;">
				        					<td>${ rv.review_no }</td>
				        					<td>${ rv.field_name }</td>
				        					<td>
				        						<c:url var="rvdetail" value="rvdetail.do">
				        							<c:param name="review_no" value="${ rv.review_no }"/>
				        							<c:param name="page" value="${ currentPage }"/>
				        						</c:url>
				        						<a href="${ rvdetail }">${ rv.review_title }</a>
				        					</td>
				        					<td>${ rv.review_writer }</td>
				        					<td><fmt:formatDate value="${ rv.review_date }" type="date" pattern="yyyy-MM-dd" /></td>
				        					<td>${ rv.review_readcount }</td>
			        					</tr>
			        				</c:forEach>
								</tbody>
			    			</table>
			    		</div>
			    		<div class="dataTable-bottom">
			    			<div class="dataTable-info">${ listCount }개의 글 중 * ~ *번 까지의 결과입니다.</div>
			    			<ul class="pagination pagination-primary float-end dataTable-pagination">
			    				<c:if test="${ currentPage <= 1 }">
			    					<li class="page-item pager" class="page-link"><a>‹‹</a></li>
			    				</c:if>
			    				<c:if test="${ currentPage > 1 }">
			    					<c:url var="first" value="/rvlist.do">
			    						<c:param name="page" value="1"/>
			    					</c:url>
			    					<li class="page-item pager"><a href="${ first }" class="page-link">‹‹</a></li>
			    				</c:if>
			    				<c:if test="${ !((currentPage - 10) < startPage and (currentPage - 10) > 1) }">
			    					<li class="page-item pager"><a>‹</a></li>
			    				</c:if>
			    				<c:if test="${ (currentPage - 10) < startPage and (currentPage - 10) > 1 }">
			    					<c:url var="prev" value="/rvlist.do">
			    						<c:param name="page" value="${ startPage - 10 }"/>
			    					</c:url>
			    					<li class="page-item pager"><a href="${ prev }" class="page-link">‹</a></li>
			    				</c:if>
			    				<c:forEach var="p" begin="${ startPage }" end="${ endPage }" step="1">
			    					<c:if test="${ p == currentPage }">
			    						<li class="page-item pager"><a>${ p }</a></li>
			    					</c:if>
			    					<c:if test="${ p != currentPage }">
			    						<c:url var="num" value="/rvlist.do">
			    							<c:param name="page" value="${ p }"/>
			    						</c:url>
			    						<li class="page-item pager"><a href="${ num }" class="page-link">${ p }</a></li>
			    					</c:if>
			    				</c:forEach>
			    				<c:if test="${ !((currentPage + 10) > endPage && (currentPage + 10) < maxPage) }">
			    					<li class="page-item pager"><a>›</a></li>
			    				</c:if>
			    				<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
			    					<c:url var="next" value="/rvlist.do">
			    						<c:param name="page" value="${ endPage + 10 }"/>
			    					</c:url>
			    					<li class="page-item pager"><a href="${ next }" class="page-link">›</a></li>
			    				</c:if>
			    				<c:if test="${ currentPage >= maxPage }">
			    					<li class="page-item pager"><a>››</a></li>
			    				</c:if>
			    				<c:if test="${ currentPage < maxPage }">
			    					<c:url var="last" value="/rvlist.do">
			    						<c:param name="page" value="${ maxPage }"/>
			    					</c:url>
			    					<li class="page-item pager"><a href="${ last }" class="page-link">››</a></li>
			    				</c:if>
			    				
			    			</ul>
			    			<c:url var="rvwirte" value="/rvwrite.do">
			    						<c:param name="user_no" value="${ loginMember.user_no }"/>
			    					</c:url>
			    			<c:if test="${ !empty loginMember }">
			    					
			    					<a href="${ rvwirte }"><button class="btn btn-primary">글작성</button></a>
			    				</c:if>
			    		</div>
			    	</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>