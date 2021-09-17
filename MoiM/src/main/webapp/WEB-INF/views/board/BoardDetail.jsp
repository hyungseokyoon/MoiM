<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="currentPage" value="${ currentPage }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 글 제목</title>
<!-- Table에 관련된 css -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/asset/bootstrap.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/asset/style.css">
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- Main Content -->
	<section>
		<h1 align="center">${ board.board_title }</h1>
		<br><br>
		<div class="container">
			<input type="hidden" id="board_no" name="board_no" value="${ board.board_no }">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<p class="lead text-muted mb-5">
						${ board.board_content }
					</p>
					<c:if test="${ board.board_original_filename != null }">
						<c:url var="bfdown" value="bfiledown.do">
							<c:param name="ofile" value="${ board.board_original_filename }"/>
							<c:param name="rfile" value="${ board.board_rename_filename }"/>
						</c:url>
						<h3 class="mb-5">첨부파일 : <a href="${ bfdown }">${ board.board_original_filename }</a></h3>
					</c:if>
					<c:if test="${ board.board_original_filename == null }">
						<h3 class="mb-5">첨부파일 : </h3>
					</c:if>
					<blockquote class="blockquote mb-5 text-left">
						<div class="dataTable-container">
			    			<table id="reply" class="table table-striped dataTable-table" id="table1">
						        <thead>
						            <tr>
						            	<th data-sortable="" style="width: 100px;"><a href="#" class="dataTable-sorter" align="center">작성자</a></th>
						            	<th data-sortable=""><a href="#" class="dataTable-sorter" align="center">댓글내용</a></th>
						            	<th data-sortable="" style="width: 150px;"><a href="#" class="dataTable-sorter" align="center">수정/삭제</a></th>
						            </tr>
						        </thead>
			        			<%-- <tbody>
			        				<c:forEach items="${ list }" var="r">
			        					<tr>
				        					<td align="center">${ r.user_no }</td>
				        					<td align="center">${ r.reply_content }</td>
				        					<td align="center"><fmt:formatDate value="${ r.reply_date }" type="date" pattern="yyyy-MM-dd" /></td>
			        					</tr>
			        				</c:forEach>
								</tbody> --%>
			    			</table>
			    		</div>
					</blockquote>
					<br>
					<c:url var="blist" value="blist.do">
						<c:param name="page" value="${ currentPage }"/>
					</c:url>
					<a href="${ blist }" class="btn btn-primary">목록</a>
					<c:if test="${ loginMember.user_no == board.user_no }">
						<c:url var="bupdateform" value="bupdateform.do">
							<c:param name="board_no" value="${ board.board_no }"/>
							<c:param name="page" value="${ currentPage }"/>
						</c:url>
						&nbsp;&nbsp;<a href="${ bupdateform }" class="btn btn-primary">수정</a>
						<c:url var="bdelete" value="bdelete.do">
							<c:param name="board_no" value="${ board.board_no }"/>
							<c:param name="page" value="${ currentPage }"/>
						</c:url>
						&nbsp;&nbsp;<a href="${ bdelete }" class="btn btn-primary">삭제</a>
					</c:if>
				</div>
			</div>
		</div>
    </section>
    <script type="text/javascript">
		$(function(){
			console.log("run");
			var board_no = $(".container #board_no").val();
			
			$.ajax({
				url : "rlist.do", 
				type : "post", 
				dataType : "json", 
				data : {"board_no" : board_no}, 
				success : function(data){
					var str = JSON.stringify(data);
					var json = JSON.parse(str);
					
					values = "";
					
					for(var i in json.list){
						values += "<tbody><tr><td align='center'>"
								+ json.list[i].user_nn
								+ "</td><td align='center'>"
								+ decodeURIComponent(json.list[i].reply_content).replace(/\+/gi, " ")
								+ "</td><td align='center'>"
								+ "<a href='#'>수정</a>/<a href='#'>삭제</a></td>"
					}
					
					$('#reply').html($('#reply').html() + values);
				}, 
				
				error : function(jqXHR, textstatus, errorthrown) {
					console.log("error : " + jqXHR + ", " + textstatus + ", "
							+ errorthrown);
				}
			});
		});
	</script>
	
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
<!-- Table에 관련된 js -->
<script src="${ pageContext.servletContext.contextPath }/resources/asset/simple-datatables.js"></script>
</html>