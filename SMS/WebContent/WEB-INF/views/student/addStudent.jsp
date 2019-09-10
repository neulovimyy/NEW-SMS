<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>

<div class="content-wrapper">
	<section class="content">
		<form:form id="save-student" method="GET" commandName="command" action="${pageContext.request.contextPath}/student/save">
			<div class="col-md-12">
				<div class="page-header">
					<div class="container-fluid"></div>
				</div>
				<input type="hidden" value="${acad }">
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<h2>Add Student Data</h2>
					</div>
					<div class="panel panel-inverted">
						<div class="panel-heading">
							<h3>I. Personal Information</h3>
						</div>
					</div>
					<div class="panel-body">
						<c:choose>
							<c:when test="${not empty command.id}">
								<form:hidden path="id" />
							</c:when>
						</c:choose>
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">First Name </label>
							<form:input id="firstname" path="firstName" cssClass="form-control" placeholder="Enter first name..." />
						</div>

						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Middle Name </label>
							<form:input id="middleName" path="middleName" cssClass="form-control" placeholder="Enter first name..." />
						</div>

						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Last Name </label>
							<form:input id="lastName" path="lastName" placeholder="Enter last name..." cssClass="form-control" />
						</div>

						<div class="clearfix"></div>

						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Birth Date</label>
							<form:input id="birthDate" path="birthDate" placeholder="MM/DD/YY" cssClass="form-control" />
						</div>

						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Gender:</label>
							<form:select path="gender" items="${genderList}" cssClass="form-control" />
						</div>

						<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
							<label class="control-label">Civil Status</label>
							<form:select path="civilStatus" items="${civilStatusList}" cssClass="form-control" />
						</div>
						<div class="clearfix"></div>
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Contact #:</label>
							<form:input id="mobileNum" path="mobileNum" placeholder="Enter contact number..." cssClass="form-control" />
						</div>
						
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Email Address:</label>
							<form:input path="emailAddress" placeholder="Enter email address..." cssClass="form-control" />
						</div>
	
						<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
							<label class="control-label">Religion</label>
							<form:select path="religion" items="${religionList}" cssClass="form-control" />
						</div>
						
						<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
							<label class="control-label">Blood Type</label>
							<form:select path="bloodtype" items="${bloodtypeList}" cssClass="form-control" />
						</div>

						<div class="clearfix"></div>
						<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
							<label class="control-label">Present Address </label>
							<form:textarea rows="2" id="presentAddress" path="presentAddress" cssClass="form-control" maxLength="255" />
						</div>
						<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
							<label class="control-label">Permanent Address </label>
							<form:textarea rows="2" id="presentAddress" path="permanentAddress" cssClass="form-control" maxLength="255" />
						</div>
						
						<div class="panel panel-inverted">
						<div class="panel-body">
							<h3>II. Education Background</h3>
							<table width="100%" cellspacing="20%" border="1">
								<th>
									Level
								</th>
								<th>
									Name of School
								</th>
								<th>
									Year Graduated
								</th>
								<th>
									Inclusive Date<br>
									of Attendance
								</th>
								<th>
									Scholarship Academic Records
								</th>
								
								
								
								
						</div>
						</div>
						
						<div class="panel panel-inverted">
						<div class="panel-heading">
							<h3 class="redcolor">III. Family Background</h3>
							
								
								
								
								
						</div>
						</div>
						
						<div class="clearfix"></div>
						<div class="form-group" style="text-align: right; padding-right: 15px;">
							<button type="submit" class="btn btn-submit btn-primary text-center">
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



<script src="<c:url value="/js/xeone/jquery-3.1.1.min.js"/>"></script>
<div class="field_wrapper">
    <div>
        <input type="text" name="field_name[]" value=""/>
        <input type="text" name="field_name1[]" value=""/>
        <a href="javascript:void(0);" class="add_button" title="Add field"><img src="add-icon.png"/></a>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
    var maxField = 10; //Input fields increment limitation
    var addButton = $('.add_button'); //Add button selector
    var wrapper = $('.field_wrapper'); //Input field wrapper
    var fieldHTML = '<div><input type="text" name="field_name[]" value=""/>'+
        				  '<input type="text" name="field_name1[]" value=""/><a href="javascript:void(0);" class="remove_button"><img src="remove-icon.png"/></a></div>'; //New input field html 
    var x = 1; //Initial field counter is 1
    
    //Once add button is clicked
    $(addButton).click(function(){
        //Check maximum number of input fields
        if(x < maxField){ 
            x++; //Increment field counter
            $(wrapper).append(fieldHTML); //Add field html
        }
    });
    
    //Once remove button is clicked
    $(wrapper).on('click', '.remove_button', function(e){
        e.preventDefault();
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
    });
});
</script>












