<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>

<div class="content-wrapper">
	<section class="content"> <form:form id="save-student" method="POST" commandName="command" action="/SMS/student/savesubject.html">
		<div class="col-md-12">
			<div class="page-header">
				<div class="container-fluid"></div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1>Add Subject</h1>
				</div>
				<div class="panel-body">
					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Subject Name</label>
						<form:input id="subjectName" path="subjectName" cssClass="form-control" placeholder="Enter first name..." />
					</div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Subject Code</label> 
						<form:input id="subjectCode" path="subjectCode" cssClass="form-control" placeholder="Enter first name..." />
					</div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Subject Unit</label>
						<form:input id="subjectUnit" path="subjectUnit" placeholder="Enter last name..." cssClass="form-control" />
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-submit btn-primary">
							<i class="fa fa-save fa-fw"></i> SAVE
						</button>
					</div>
				</div>
			</div>
		</div>
	</form:form> </section>
	<script src=<c:url value="/js/student.js"/>></script>
</div>

