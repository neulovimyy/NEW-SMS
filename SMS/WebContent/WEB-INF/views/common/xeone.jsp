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
		<link rel="icon" type="icon/ico "href="<c:url value="/image/image.ico"/>">
		<%-- <link rel="stylesheet" href="<c:url value="/css/xeone/css/plugins.css"/>"> --%>
		<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
		<%-- <link rel="stylesheet" href="<c:url value="/css/xeone/css/style.css"/>">
		<link rel="stylesheet" href="<c:url value="/themes/css/custom.css"/>">
		<link rel="stylesheet" href="<c:url value="/themes/css/default.css"/>"> --%>
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/font-awesome.min.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/AdminLTE.min.css"/>">
		<!--  for padding purposes -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/padding.css"/>">
		<!--  for custom and some classes -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/colors.css"/>">
		<!-- Form Validation -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrapValidator.min.css"/>">
		<!-- datePicker -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/datepicker.min.css"/>">
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="<c:url value="/js/xeone/js/jquery-3.1.1.min.js"/>"></script>
		<!--Bootstrap Core-->
		<script src="<c:url value="/js/xeone/js/popper.min.js"/>"></script>
		<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
		<!-- Form Validation -->
		<script type="text/javascript" src="<c:url value="/js/common/jquery.maskMoney.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/js/common/maskingAndValidation.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/js/common/formValidation.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/js/common/bootstrap.js"/>"></script>
		<script src="<c:url value="/js/bootstrap-datepicker.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/js/bootstrapValidator.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/js/common/common.js"/>"></script>
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

		<style type="text/css">
			.form-control-feedback {
				width: 63px !important;
				line-height: 32px !important;
			}
		</style>
		<div id="confirmDeleteModal" class="modal fade" data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header bg-gray">
						<h4 class="modal-title">
							<i class="fa fa-warning fa-fw"></i><span class="title">Warning Message</span>
						</h4>
					</div>
					<div class="modal-body">Do you want to delete <strong><span class="message"></span></strong>?</div>
					<div class="modal-footer">
						<button type="button" id="btn-cancel-modal" class="btn btn-sm btn-sm btn-default" data-dismiss="modal">
							<i class="fa fa-times-circle"></i>&nbsp;&nbsp;CANCEL
						</button>
						<button type="button" data-dismiss="modal" id="btn-delete-modal" class="btn btn-sm btn-sm btn-danger">
							<i class="fa fa-check"></i>&nbsp;&nbsp;SUBMIT
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title" id="myModalLabel">Confirm Message</h4>
		            </div>
		            <div id="modal-confirm-message" class="modal-body reminder-modal">
		                
		            </div>
		            <div class="modal-footer" align="right">
		            	<button type="button" class="btn btn-default confirm-no" data-dismiss="modal" style="width: 20%;">Close</button>
		            	<a class="btn btn-primary btn-ok" style="width: 20%;">Confirm</a>
		            </div>
		        </div>
		        <!-- /.modal-content -->
		    </div>
		    <!-- /.modal-dialog -->
		</div>
		<tiles:insertAttribute name="header"/>
		<div class="wrapper background-body">
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer"/>
	</body>
</html>
