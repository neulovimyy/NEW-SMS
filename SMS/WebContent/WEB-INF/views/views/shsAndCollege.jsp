
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@include file="common/taglibs.jsp" %>
<html>
<body>
		<h2>Student Accounting Information</h2>
		<form:form id="save-accountingInfo" method="POST" commandName="account" action="/SMS/account/save.html">
	   		
		<c:if test="${!empty accounts}"> 
				       
			    	</c:if>
			   			<div class="pt-50 redcolor">
			        	<form:label for="student-number" path="studentNumber" class="redcolor">Student Number:</form:label>
			       		<form:input path="studentNumber" name="studentNumber" id="studentNumber" placeholder="2015-0000-MN-0" onblur="return blank(\"studentNumber\")"/>
			      		</div>
			      		<br>
			      		<div class="pt-300">
			        	<form:label for="library-fee" path="libraryFee">Library Fee:</form:label>
			       		<form:input path="libraryFee" name="libraryFee" id="libraryFee" placeholder="0.00" onblur="return blank(\"libraryFee\")"/>
			       		<br>
			       		</div>
				     	<form:label for="cultural-fee" path="culturalFee" >Cultural Fee:</form:label>
			        	<form:input path="culturalFee" name="culturalFee" id="culturalFee" placeholder="0.00" onblur="return blank(\"culturalFee\")"/>
                   		<br>
			        	<form:label for="medical-fee" path="medicalFee" >Medical Fee:</form:label>
			        	<form:input path="medicalFee" name="medicalFee" id="medicalFee" placeholder="0.00" onblur="return blank(\"medicalFee\")"/>
                   		<br>
			        	<form:label for="registration-fee" path="registrationFee" >Registration Fee:</form:label>
			      		<form:input path="registrationFee" name="registrationFee" id="registrationFee" placeholder="0.00" onblur="return blank(\"registrationFee\")"/>
                  		<br>
			        	<form:label for="laboratory-fee" path="laboratoryFee" >Laboratory Fee:</form:label>
                    	<form:input path="laboratoryFee" name="laboratoryFee" id="laboratoryFee" placeholder="0.00" onblur="return blank(\"laboratoryFee\")"/>
                 		<br>
                 		<form:label for="academic-units" path="academicUnits" >Academic Units:</form:label>
                    	<form:input path="academicUnits" name="academicUnits" id="academicUnits" placeholder="0.00" onblur="return blank(\"academicUnits\")"/>
                 		<br>
                 		<form:label for="newspaper-fee" path="newspaperFee" >Newspaper Fee:</form:label>
                    	<form:input path="newspaperFee" name="newspaperFee" id="newspaperFee" placeholder="0.00" onblur="return blank(\"newspaperFee\")"/>
                 		<br>
                 		<form:label for="student-council-fee" path="studentCouncilFee" >Student Council Fee:</form:label>
                    	<form:input path="studentCouncilFee" name="studentCouncilFee" id="studentCouncilFee" placeholder="0.00" onblur="return blank(\"studentCouncilFee\")"/>
                 		<br>
                 		<form:label for="system-fee" path="systemFee" >System Fee:</form:label>
                    	<form:input path="systemFee" name="systemFee" id="systemFee" placeholder="0.00" onblur="return blank(\"systemFee\")"/>
                 		<br>
			        	<form:label for="total-TuitionFee" path="totalTuitionFee" >Total Tuition Fee:</form:label>
			      		<form:input path="totalTuitionFee" name="totalTuitionFee" id="totalTuitionFee" placeholder="0.00" onblur="return blank(\"totalTuitionFee\")"/>
						<br>
						<form:label for="mode-ofPayment" path="modeOfPayment" >Mode of Payment:</form:label>
			      		<form:input path="modeOfPayment" name="modeOfPayment" id="modeOfPayment" placeholder="0.00" onblur="return blank(\"modeOfPayment\")"/>
			      		<input onclick="return validate()" id="save" type="submit" value="Submit" />
	</form:form>
	</body>
	
	</html>