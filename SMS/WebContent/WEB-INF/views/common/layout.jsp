<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="">
        <title></title>
        
        <link rel="stylesheet" href="<c:url value="/public/css/bootstrap.min.css"/>" />
		<!-- Latest compiled and minified JavaScript -->
		<script src="<c:url value="/public/js/jquery-1.9.1.js"/>"></script>
		<script src="<c:url value="/public/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/public/fonts/glyphicons-halflings-regular.eot"/>"></script>

		<style>
				form:input.invalid, textarea.invalid{
					border: 2px solid red;
				}

				.valid, textarea.valid{
					border: 2px solid green;
				}
				
				#save-student .has-error .control-label,
				#save-student .has-error .help-block,
				#save-student .has-error .form-control-feedback {
					color: #f39c12;
				}
				
				#save-student .has-success .control-label,
				#save-student .has-success .help-block,
				#save-student .has-success .form-control-feedback {
					color: #18bc9c;
				}
				
				.jumbotron{
					background: #a6a6a6;
					color: white;
					
				}
				.error{
					display: none;
					margin-left: 10px;
				}		

				.error_show{
					color: red;
					margin-left: 10px;
				}
		</style>
	<!-- <script src="<c:url value="/js/student.js"/>"></script> -->
	</head>
	<body class="hold-transition skin-red-light sidebar-mini fixed">
		<div class="wrapper background-body">
			<tiles:insertAttribute name="body" />
		</div>
	</body>
	
	
</html>