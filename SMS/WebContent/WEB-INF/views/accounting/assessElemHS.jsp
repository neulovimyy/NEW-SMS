<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Assessment (ELEMENTARY AND HIGH SCHOOL)</h1>
		
		<div class="table-rover jumbotron">
		
		<table class="table table-hover" border="1">
				
				<thead>
						<tr class="active">
						<th>Student Name:</th>
						<th>Student No:</th>
						</tr>
						
						<tr class="active">
						<th>Level:</th>
						<th>Year Level:</th>
						</tr>
						
						<tr class="active">
						<th>Status:</th>
						<th>Section:</th>
						</tr>
						
						<tr class="active">
						<th colspan="2">School Year:</th>
						</tr>
				
				
				</table>
		
		
			<c:if test="${!empty subjects}">
				<table class="table table-hover" border="1">
					<p>Schedule of Subjects:</p>
					<thead>
						<tr class="active">
							<th>Subject Code</th>
							<th>Description</th>
							<th>Lecture Hours</th>
							<th>Lab Hours</th>
							<th>Tuition Hours</th>
							<th>Credit Units</th>
							<%-- <th>Time</th>
							<th>Day</th>
							<th>Room</th>--%>
						
						</tr>
					</thead>
			
					<c:forEach items="${subjects}" var="subject">
						<tr class="info">
							<td><c:out value="${subject.subjectCode}"/></td>
							<td><c:out value="${subject.subjectName}"/></td>
							<td></td>
							<td></td>
							<td><c:out value="${subject.subjectUnit}"/></td>
							<td></td>
							<%-- <td><input value="" type="text" readonly /></td>
							<td><input value="" type="text" readonly /></td>
							<td><input value="" type="text" readonly /></td>--%>
						</tr>
					</c:forEach>
					<tr>
					<th colspan="4">Total:</th>
					
					<%
					int total=0;
					int subjectUnit=12;
					total=subjectUnit;
				
					
					%>
					<td style="color: blue"><%=total%></td>
					<td style="color: blue"></td>		
					</tr>
				</table>
				
			</c:if>
			
			<p><b>Tuition Fee</b></p>
			<c:if test="${!empty accounts}">
			<table>
			<c:forEach items="${accounts}" var="account">
						
						<tr class="info">
			<tr>
			<th>
			Academic
			</th>
			</tr>
			
			<tr>
			<th>Cultural Fee</th>
			<td>:</td>
			<td><c:out value="${account.culturalFee}"/></td>
			</tr>
			
			<tr>
			<th>Laboratory Fee</th>
			<td>:</td>
			<td><c:out value="${account.laboratoryFee}"/></td>
			</tr>
			
			<tr>
			<th>Library Fee</th>
			<td>:</td>
			<td><c:out value="${account.libraryFee}"/></td>
			</tr>
			
			<tr>
			<th>Medical Fee</th>
			<td>:</td>
			<td><c:out value="${account.medicalFee}"/></td>
			</tr>
			
			<tr>
			<th>Registration Fee</th>
			<td>:</td>
			<td><c:out value="${account.registrationFee}"/></td>
			</tr>
			
			<tr>
			<th>
			System Fee
			</th>
			</tr><br>
			</c:forEach>
			</table><br><br>
			</c:if>
				<p style="font-size:15px; font-family:verdana;"><b>Mode of payment:</b>
	<select>
		<option>--Mode of Payment--</option>
 		 <option value="${account}">Full Payment</option>
 		 <option value="${account}">Partial Payment</option>
	</select>
	</p>
			
			<input type="submit" value="Cancel"/>
			<input type="submit" value="Save"/>
			
		</div>
		
		
		
		