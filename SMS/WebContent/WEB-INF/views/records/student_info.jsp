<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>

	<spring:url value="/resources/css/res.css" var="resCss" />
	<spring:url value="/resources/js/res.js" var="resJs" />
	<spring:url value="/css/RecordAndReport/student_info.css" var="studentinfoCss" />
	<link href= "${studentinfoCss}" rel="stylesheet" />
</head>

<body>
	<div class="wrapper">
		<div class="backbutton"><button><a href="home.html"><i class="glyphicon glyphicon-remove"></i></a></button></div>
		<div class="infopanel">
			<div>
				<img src="<c:url value="/images/image.png" />">
			</div>
		</div>
	</div>
</body>
</html>