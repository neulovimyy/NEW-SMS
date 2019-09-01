<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="common/taglibs.jsp" %>
	<div class="content-wrapper">
		<section class="content">
			
			<form:form id="save-student" method="POST" commandName="command" action="/SMS/student/save.html">
				<div class="col-md-12">
				<div class="page-header">
					<div class="container-fluid">
					
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h1>Add Student Data</h1>
					</div>
					<div class="panel-body">
		   		<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
					<label class="control-label">First Name </label>
					<form:input id="firstname" path="firstName" cssClass="form-control" placeholder="Enter first name..." />
				</div>
	
	      		
	       		<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
					<label class="control-label">Middle Name </label>
					<form:input id="middleName" path="middleName" cssClass="form-control" placeholder="Enter first name..." />
				</div>
	       	
	       			<div class="pt-20">
                	<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Last Name </label>
						<form:input id="lastName" path="lastName" placeholder="Enter last name..." cssClass="form-control" />
					</div>
	                </div>
                
                <div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
					<label class="control-label">Birth Date</label>
					<form:input id="birthDate" path="birthDate" placeholder="MM/DD/YY" cssClass="form-control" />
				</div>
                <div class="clearfix"></div>
                	<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Civil Status:</label>
						<form:input id="civilStatus" path="civilStatus" placeholder="Enter civil status..." cssClass="form-control" />
					</div>
                <div class="clearfix"></div>
                	<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Gender:</label>
						<form:input id="gender" path="gender" placeholder="Enter gender..." cssClass="form-control" />
					</div>
                <div class="clearfix"></div>
                	<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Contact #:</label>
						<form:input id="mobileNum" path="mobileNum" placeholder="Enter contact number..." cssClass="form-control" />
					</div>
				<div class="clearfix"></div>
			      		<div class="form-group">
						<button type="submit" class="btn btn-submit btn-primary">
							<i class="fa fa-save fa-fw"></i> SAVE
						</button>
					</div>
					</div>
					</div>
					</div>
			</form:form>
		</section>
		<script src=<c:url value="/js/student.js"/>></script>
	</div>
	
