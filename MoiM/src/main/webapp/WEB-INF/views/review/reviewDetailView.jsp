<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>moim</title>
<style type="text/css">
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('${ pageContext.servletContext.contextPath }/resources/img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}


</style>
</head>
<body>
<!-- navbar-->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
<section>
<br><br><br>
	<h2 align="center"></h2><hr>
		<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">{제목}</th>
					</tr>
				</thead>
				<tbody>
					
					<tr>
						<td style="width: 20%;">작성자</td>
						<td colspan="2" style="text-align: left;"></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2" style="text-align: left;"></td>
					</tr>
					<tr>
						<td>분야</td>
						<td colspan="2" style="text-align: left;"></td>
					</tr>
					<tr>
						<td>스터디명</td>
						<td colspan="2" style="text-align: left;"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"></td>
					</tr>
					<tr>
						<td>별점</td>
						<td colspan="2" style="text-align: left;">
						<div class="review_rating">
           
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점" checked disabled>
                <label for="rating1"></label>
              
            </div>
    		</td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td colspan="2" style="text-align: left;"></td>
					</tr>
				</tbody>
			</table>
		
			
	
			<!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
			
		</div>
 <br>
 

		<center><button onclick="requestDelete(); return false;" class="btn btn-primary">글삭제</button>
		
			<button onclick="moveUpdateView(); return false;" class="btn btn-primary">수정하기</button> 
	
		<button onclick="javascript:history.go(-1);" class="btn btn-primary">목록</button></a></center><br><br>

		
		</div>
		<!-- Footer -->
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>