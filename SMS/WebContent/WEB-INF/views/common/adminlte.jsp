<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="taglibs.jsp"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><tiles:insertAttribute name="title" /></title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css"/>">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/font-awesome/css/font-awesome.min.css"/>">
		<!-- Ionicons -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/Ionicons/css/ionicons.min.css"/>">
		<!-- Theme style -->
		<link rel="stylesheet" href="<c:url value="/adminlte/dist/css/AdminLTE.min.css"/>">
		<link rel="stylesheet" href="<c:url value="/adminlte/dist/css/custom.css"/>">
		<!-- AdminLTE Skins. Choose a skin from the css/skins
		       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<c:url value="/adminlte/dist/css/skins/_all-skins.min.css"/>">
		<!-- jvectormap -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/jvectormap/jquery-jvectormap.css"/>">
		<!-- Date Picker -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"/>">
		<!-- Daterange picker -->
		<link rel="stylesheet" href="<c:url value="/adminlte/bower_components/bootstrap-daterangepicker/daterangepicker.css"/>">
		<!-- bootstrap wysihtml5 - text editor -->
		<link rel="stylesheet" href="<c:url value="/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>">
		<!-- Form Validation -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/form-validation/formValidation.css"/>">
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		  <![endif]-->
		
		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">		
		<!-- jQuery 3 -->
		<script src="<c:url value="/adminlte/bower_components/jquery/dist/jquery.min.js"/>"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="<c:url value="/adminlte/bower_components/jquery-ui/jquery-ui.min.js"/>"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="<c:url value="/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>
		<!-- Form Validation -->
		<script type="text/javascript" src="<c:url value="/js/form-validation/formValidation.js"/>"></script>
	</head>
	<body class="hold-transition skin-blue fixed sidebar-mini">
		<tiles:insertAttribute name="body" />		
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<!-- <script>
		  $.widget.bridge('uibutton', $.ui.button);
		</script> -->
		<!-- Sparkline -->
		<%-- <script src="<c:url value="/adminlte/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"/>"></script> --%>
		<!-- jvectormap -->
		<%-- <script src="<c:url value="/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"/>"></script>
		<script src="<c:url value="/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"></script> --%>
		<!-- jQuery Knob Chart -->
		<%-- <script src="<c:url value="/adminlte/bower_components/jquery-knob/dist/jquery.knob.min.js"/>"></script> --%>
		<!-- daterangepicker -->
		<%-- <script src="<c:url value="/adminlte/bower_components/moment/min/moment.min.js"/>"></script>
		<script src="<c:url value="/adminlte/bower_components/bootstrap-daterangepicker/daterangepicker.js"/>"></script> --%>
		<!-- datepicker -->
		<%-- <script src="<c:url value="/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"/>"></script> --%>
		<!-- Bootstrap WYSIHTML5 -->
		<%-- <script src="<c:url value="/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>"></script> --%>
		<!-- Slimscroll -->
		<%-- <script src="<c:url value="/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"/>"></script> --%>
		<!-- FastClick -->
		<%-- <script src="<c:url value="/adminlte/bower_components/fastclick/lib/fastclick.js"/>"></script> --%>
		<!-- AdminLTE App -->
		<script src="<c:url value="/adminlte/dist/js/adminlte.min.js"/>"></script>
		<script src="<c:url value="/adminlte/plugins/pagination/jquery.simplePagination.js"/>"></script>
	</body>	
</html>