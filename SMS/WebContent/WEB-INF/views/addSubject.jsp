<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="common/taglibs.jsp" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><tiles:insertAttribute name="title" ignore="true"/></title>
<%-- <link href="<c:url value="themes/xeone/images/favicon.png"/>" rel="icon"> --%>
<link href="<c:url value="themes/images/favicon.png"/>" rel="icon">
<link rel="stylesheet" href="<c:url value="themes/xeone/css/plugins.css"/>">
<%-- <link rel="stylesheet" href="<c:url value="themes/xeone/css/bootstrap.min.css"/>"> --%>
<link rel="stylesheet" href="<c:url value="themes/xeone/css/style.css"/>">
<link rel="stylesheet" href="<c:url value="themes/css/custom.css"/>">
<link rel="stylesheet" href="<c:url value="themes/css/default.css"/>">
<!-- Form Validation -->
<link rel="stylesheet" type="text/css" href="<c:url value="/css/form-validation/formValidation.css"/>">
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="<c:url value="themes/xeone/js/jquery-3.1.1.min.js"/>"></script>
<!--Bootstrap Core-->
<script src="<c:url value="themes/xeone/js/popper.min.js"/>"></script>
<script src="<c:url value="themes/xeone/js/bootstrap.min.js"/>"></script>
<!-- Form Validation -->
<script type="text/javascript" src="<c:url value="/js/form-validation/formValidation.js"/>"></script>
</head>
<body>
		<h2>Add Student Data</h2>
		<form:form id="save-student" method="POST" commandName="command" action="/SMS/save.html">
	   		
		<c:if test="${!empty students}"> 
				       
			    	</c:if>
			   			<div class="pt-100 redcolor">
			        	<form:label for="first-name" path="firstName" class="redcolor">First name:</form:label>
			       		<form:input path="firstName" name="firstName" id="firstname" placeholder="Enter first name..." onblur="return blank(\"firstName\")"/>
			      		</div>
			      		<br>
			      		<div class="pt-300">
			        	<form:label for="middle-name" path="middleName">Middle name:</form:label>
			       		<form:input path="middleName" name="middleName" id="middleName" placeholder="Enter middle name..." onblur="return blank(\"middleName\")"/>
			       		<br>
			       		</div>
				     	<form:label for="last-name" path="lastName" >Last name:</form:label>
			        	<form:input path="lastName" name="lastName" id="lastName" placeholder="Enter last name..." onblur="return blank(\"lastName\")"/>
                   		<br>
			        	<form:label for="birth-date" path="birthDate" >Date of Birth:</form:label>
			        	<form:input path="birthDate" name="birthDate" id="birthDate" placeholder="Enter date of birth..." onblur="return blank(\"lastName\")"/>
                   		<br>
			        	<form:label for="civil-status" path="civilStatus" >Civil Status:</form:label>
			      		<form:input path="civilStatus" name="civilStatus" id="civilStatus" placeholder="Enter civil status..." onblur="return blank(\"lastName\")"/>
                  		<br>
			        	<form:label for="gender" path="gender" >Gender:</form:label>
                    	<form:input path="gender" name="gender" id="gender" placeholder="Enter gender..." onblur="return blank(\"lastName\")"/>
                 		<br>
			        	<form:label for="last-name" path="mobileNum" >Contact #:</form:label>
			      		<form:input path="mobileNum" name="mobileNum" id="lastName" placeholder="Enter contact number..." onblur="return blank(\"lastName\")"/>
						<br>
			      		<input onclick="return validate()" id="save" type="submit" value="Submit" />
	</form:form>
	</body>
	</html>