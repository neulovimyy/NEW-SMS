
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@include file="../common/taglibs.jsp" %>

		<h2>Student Accounting Information Table</h2>
		<form:form id="save-accountingInfo" method="POST" commandName="account" action="/SMS/account/save1.html">
	   		
		<c:if test="${!empty accounts}"> 
				       
			    	</c:if>
			   			<div class="">
			        	<form:label for="student-number" path="studentNumber" class="redcolor">Entry Number:</form:label>
			       		<form:input path="studentNumber" name="studentNumber" id="studentNumber" placeholder="2015-0000-MN-0" onblur="return blank(\"studentNumber\")"/>
			      		</div>
			      		<br>
			      		<div class="">
			        	<form:label for="school-year" path="schoolYear">School Year:</form:label>
			       		<form:input path="schoolYear" name="schoolYear" id="schoolYear" onblur="return blank(\"schoolYear\")"/>
			       		<br>
			       		</div>
				     	<form:label for="semester" path="semester" >Semester:</form:label>
			        	<form:input path="semester" name="semester" id="semester" onblur="return blank(\"semester\")"/>
                   		<br>
                   		
                   		<form:label for="studentId" path="studentId" >Student Number:</form:label>
			        	<form:input path="studentId" name="studentId" id="studentId" onblur="return blank(\"studentId\")"/>
                   		<br>
                   		
			        	<form:label for="or-number" path="orNumber" >OR Number:</form:label>
			        	<form:input path="orNumber" name="orNumber" id="orNumber" onblur="return blank(\"orNumber\")"/>
                   		<br>
			        	<form:label for="description" path="description" >Description:</form:label>
			      		<form:input path="description" name="description" id="description" onblur="return blank(\"description\")"/>
			      		<br>
			        	<form:label for="assessment" path="assessment" >Assessment:</form:label>
			      		<form:input path="assessment" name="assessment" id="assessment" placeholder="0.00" onblur="return blank(\"assessment\")"/>
                  		<br>
			        	<form:label for="payments" path="payments" >Payments:</form:label>
                    	<form:input path="payments" name="payments" id="payments" placeholder="0.00" onblur="return blank(\"payments\")"/>
                 		<br>
			        	<form:label for="balance" path="balance" >Balance:</form:label>
			      		<form:input path="balance" name="balance" id="balance" placeholder="0.00" onblur="return blank(\"balance\")"/>
						<br>
						
			      		<input onclick="return validate()" id="save" type="submit" value="Submit" />
	</form:form>
