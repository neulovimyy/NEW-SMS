<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
	<div class="content-wrapper">
		<section class="content">
			<h2>Add Student Data</h2>
			<form:form id="save-faculty" method="POST" commandName="faculty" action="/SMS/faculties/save.html">
			   	<div class="redcolor">
			   		<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">First Name </label>
						<form:input id="facultyName" path="facultyName" cssClass="form-control" placeholder="Enter first name..." />
					</div>
			    </div>
               
				<div class="clearfix"></div>
			      		<div class="form-group">
						<button type="submit" class="btn btn-submit btn-primary">
							<i class="fa fa-save fa-fw"></i> SAVE
						</button>
					</div>
			</form:form>
		</section>
		<script src=<c:url value="/js/student.js"/>></script>
	</div>
	
