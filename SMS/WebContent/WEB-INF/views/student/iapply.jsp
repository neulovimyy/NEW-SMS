<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>
	<form:form method="POST" action="../student/add" commandName="command">
		<form:select path="acad" name="acad" class="text-center">
			<option value="EL">Elementary</option> 
			<option value="HS">High School</option>
			<option value="JS">Junior High</option>
			<option value="SH">Senior High</option>
			<option value="CO">College</option>
		</form:select>
		<button type="submit"> Submit </button>
	</form:form>