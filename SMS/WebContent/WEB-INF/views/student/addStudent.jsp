<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
	<div class="content-wrapper">
		<section class="content">
			<h2>Add Student Data</h2>
			<form:form id="save-student" method="POST" commandName="command" action="/SMS/student/save.html">
			   	<div class="redcolor">
			   		<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">First Name </label>
						<form:input id="firstname" path="firstName" cssClass="form-control" placeholder="Enter first name..." />
					</div>
			    </div>
	      		<div class="">
		       		<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Middle Name </label>
						<form:input id="middleName" path="middleName" cssClass="form-control" placeholder="Enter first name..." />
					</div>
	       		</div>
	       		<div class="clearfix"></div>
	       		<div class="pt-20">
                	<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Last Name </label>
						<form:input id="lastName" path="lastName" placeholder="Enter last name..." cssClass="form-control" />
					</div>
                </div>
                <div class="clearfix"></div>
                <div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
					<label class="control-label">birth Date</label>
					<form:input id="birthDate" path="birthDate" placeholder="Enter date of birth..." cssClass="form-control" />
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
			</form:form>
		</section>
		<script src=<c:url value="/js/student.js"/>></script>
	</div>
	
