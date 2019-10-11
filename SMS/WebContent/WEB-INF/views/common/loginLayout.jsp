<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Main Menu</title>
	    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/images/favicon.ico"/>">
	    
	    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
	    
	    
	    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom-login.css"/>">
	    
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="<c:url value="/js/xeone/js/jquery-3.1.1.min.js"/>"></script>
		<!--Bootstrap Core-->
		<script src="<c:url value="/js/xeone/js/popper.min.js"/>"></script>
		<script src="<c:url value="/js/bootstrap.min.js"/>"></script>		
		
		
		<!-- Form Validation -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrapValidator.min.css"/>">
		<script type="text/javascript" src="<c:url value="/js/bootstrapValidator.min.js"/>"></script>
		
	</head>
	<body>
	<tiles:insertAttribute name="body" />
	</body>
</html>