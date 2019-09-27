
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@include file="../common/taglibs.jsp" %>

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
			        	<form:label for="total-TuitionFee" path="totalTuitionFee" >Total Tuition Fee:</form:label>
			      		<form:input path="totalTuitionFee" name="totalTuitionFee" id="totalTuitionFee" placeholder="0.00" onblur="return blank(\"totalTuitionFee\")"/>
						<br>
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Mode of Payment:</label>
							<form:select path="modeOfPayment" items="${paymentMethod}" cssClass="form-control" />
						</div>
			      		<input onclick="return validate()" id="save" type="submit" value="Submit" />
	</form:form>
