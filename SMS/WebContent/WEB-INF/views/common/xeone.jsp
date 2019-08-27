<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="taglibs.jsp"%>
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title><tiles:insertAttribute name="title" ignore="true"/></title>
		<%-- <link href="<c:url value="themes/xeone/images/favicon.png"/>" rel="icon"> --%>
		<link href="<c:url value="/themes/images/favicon.png"/>" rel="icon">
		<link rel="stylesheet" href="<c:url value="/css/xeone/css/plugins.css"/>">
		<link rel="stylesheet" href="<c:url value="/css/xeone/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value="/css/xeone/css/style.css"/>">
		<link rel="stylesheet" href="<c:url value="/themes/css/custom.css"/>">
		<link rel="stylesheet" href="<c:url value="/themes/css/default.css"/>">
		<!-- Form Validation -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/form-validation/formValidation.css"/>">
		
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="<c:url value="/js/xeone/js/jquery-3.1.1.min.js"/>"></script>
		<!--Bootstrap Core-->
		<script src="<c:url value="/js/xeone/js/popper.min.js"/>"></script>
		<script src="<c:url value="/js/xeone/js/bootstrap.min.js"/>"></script>
		<!-- Form Validation -->
		<script type="text/javascript" src="<c:url value="/js/form-validation/formValidation.js"/>"></script>
	</head>	
	
	<!--to view items on reach-->
	<script src="<c:url value="/js/xeone/js/jquery.appear.js"/>"></script>
	
	<!--Equal-Heights-->
	<script src="<c:url value="/js/xeone/js/jquery.matchHeight-min.js"/>"></script>
	
	<!--Owl Slider-->
	<script src="<c:url value="/js/xeone/js/owl.carousel.min.js"/>"></script>
	
	<!--number counters-->
	<script src="<c:url value="/js/xeone/js/jquery-countTo.js"/>"></script>
	 
	<!--Parallax Background-->
	<script src="<c:url value="/js/xeone/js/parallaxie.js"/>"></script>
	  
	<!--Cubefolio Gallery-->
	<script src="<c:url value="/js/xeone/js/jquery.cubeportfolio.min.js"/>"></script>
	
	<!--FancyBox popup-->
	<script src="<c:url value="/js/xeone/js/jquery.fancybox.min.js"/>"></script>          
	
	<!-- Video Background-->
	<script src="<c:url value="js/xeone/js/jquery.background-video.js"/>"></script>
	
	<!--TypeWriter-->
	<script src="<c:url value="/js/xeone/js/typewriter.js"/>"></script> 
	      
	<!--Particles-->
	<script src="<c:url value="/js/xeone/js/particles.min.js"/>"></script>
	        
	<!--WOw animations-->
	<script src="<c:url value="/js/xeone/js/wow.min.js"/>"></script>
	      
	<!--Revolution SLider-->
	<script src="<c:url value="/js/xeone/js/revolution/jquery.themepunch.tools.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/jquery.themepunch.revolution.min.js"/>"></script>
	<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.actions.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.carousel.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.kenburn.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.layeranimation.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.migration.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.navigation.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.parallax.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.slideanims.min.js"/>"></script>
	<script src="<c:url value="/js/xeone/js/revolution/extensions/revolution.extension.video.min.js"/>"></script>	
	<script src="<c:url value="/js/xeone/js/functions.js"/>"></script>
	<script src="<c:url value="/js/adminlte/plugins/pagination/jquery.simplePagination.js"/>"></script>
	<body>
		<div class="wrapper background-body">
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer"/>
	</body>
</html>
