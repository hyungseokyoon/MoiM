<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MoiM - 공지 수정</title>
</head>
<body>
	<!-- Menubar -->
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	
	<!-- Main Content -->
	<section>
		<div class="row align-items-center mt-5">
			<div class="col-lg-7">
				<form action="#" class="contact-form text-left">
					<div class="form-group mb-4">
						<label>Name<sup class="text-primary">✱</sup></label>
						<input type="text" name="name" placeholder="e.g. John Smith" class="form-control">
					</div>
					<div class="form-group mb-4">
						<label>Company Email<sup class="text-primary">✱</sup></label>
						<input type="text" name="email" placeholder="name@company.com" class="form-control">
					</div>
					<div class="form-group mb-4">
						<label>Subject<sup class="text-primary">✱</sup></label>
						<input type="text" name="subject" placeholder="Briefly describe your question" class="form-control">
					</div>
					<div class="form-group mb-4">
						<label>Now let's hear the details<sup class="text-primary">✱</sup></label>
						<textarea name="message" placeholder="Let us know what you need" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<input type="submit" value="Send message" class="btn btn-primary">
					</div>
				</form>
			</div>
			<div class="col-lg-5 contact-details mt-5 mt-lg-0">
				<div class="box">
					<div class="icon d-flex align-items-end">
						<img src="${ pageContext.servletContext.contextPath }/resources/img/placeholder.svg" alt="" class="img-fluid">
					</div>
					<h5>Address</h5>
					<p class="text-small font-weight-light">13/25 New Avenue, New Heaven, 45Y 73J, England, Great Britain</p>
				</div>
				<div class="box">
					<div class="icon d-flex align-items-end">
						<img src="${ pageContext.servletContext.contextPath }/resources/img/technology.svg" alt="" class="img-fluid">
					</div>
					<h5>Call center</h5>
					<p class="text-small font-weight-light">This number is toll free if calling from Great Britain otherwise we advise you to use the electronic form of communicatio</p>
					<strong class="text-muted">+33 555 444 333</strong>
				</div>
				<div class="box">
					<div class="icon d-flex align-items-end">
						<img src="${ pageContext.servletContext.contextPath }/resources/img/multimedia.svg" alt="" class="img-fluid">
					</div>
						<h5>Electronic support</h5>
						<p class="text-small font-weight-light">Please feel free to write an email to us or to use our electronic ticketing system.</p>
						<ul class="text-left">
							<li><a href="mailto:info@fakeemail.com" class="text-small">info@fakeemail.com</a></li>
							<li><a href="#" class="text-small">Ticketio - our ticketing support platform </a></li>
						</ul>
					</div>
			</div>
		</div>
    </section>
	
	<!-- Footer -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>