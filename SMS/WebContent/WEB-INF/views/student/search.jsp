<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>
	
	<section class="content">
	

	<div class="col-md-12">
		<div class="page-header">
			<div class="container-fluid"></div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Students</h3>
			</div>
			
			<form:form method="GET" commandName="command" action="${pageContext.request.contextPath}/student/searchresult">
				<input name="search" type="text">
				<input type="submit">
			</form:form>
			
			
		</div>
	</div>
	</section>

</div>