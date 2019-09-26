<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Accounting Information</h1>
		<h2 align="center">Elementary</h2>
		
		<%-- <h3 align="center"><a href="/SMS/account/add.html">Add Table Information for Computation</a></h3> --%>
		
		<div class="table-rover jumbotron">
			<c:if test="${!empty accounts}">
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							<%--<th>Student Number</th>--%>
							<th>Cultural Fee</th>
							<th>Library Fee</th>
							<th>Medical Fee</th>
							<th>Registration Fee</th>
							<th>Laboratory Fee</th>
							<th>Tuition Fee</th>
							<th>Mode of Payment</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
			
					<c:forEach items="${accounts}" var="account">
						
						<tr class="info">
							<%--<td><c:out value="${account.studentNumber}"/></td>--%>
							<td><c:out value="${account.culturalFee}"/></td>
							<td><c:out value="${account.libraryFee}"/></td>
							<td><c:out value="${account.medicalFee}"/></td>
							<td><c:out value="${account.registrationFee}"/></td>
							<td><c:out value="${account.laboratoryFee}"/></td>
							<td><c:out value="${account.totalTuitionFee}"/></td>
							<td><c:out value="${account.modeOfPayment}"/></td>
							<td align="center"><a href="edit.html?id=${account.studentNumber}">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
