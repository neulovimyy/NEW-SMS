<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>
	<form method="POST" action="../student/add">
		<select name="acad">
			<option value="elem">Elementary(Grade 1-6)</option> 
			<option value="hs">High School(Grade 7 - 10)</option>
			<option value="shs">Senior High/Junior High (Grade 11 - 12)</option>
			<option value="college">College</option>
		</select>
		<button type="submit"> Submit </button>
	</form>