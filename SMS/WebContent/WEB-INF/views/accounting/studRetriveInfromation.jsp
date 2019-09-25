<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Accounting Information Table</h1>
		<h2 align="center">Payment Details</h2>
		<h3 align="center"><a href="/SMS/account/add1.html">View Student Account Information</a></h3>
								
		
		<div class="table-rover jumbotron">
			<c:if test="${!empty accounts}">
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							
							<th>School Year</th>
							<th>Semester</th>
							<th>OR Number</th>
							<th>Description</th>
							<th>Assessment</th>
							<th>Payments</th>
							<th>Balance</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
			
					<c:forEach items="${accounts}" var="account">
						
						<tr class="info">
							
							<td><c:out value="${account.schoolYear}"/></td>
							<td><c:out value="${account.semester}"/></td>
							<td><c:out value="${account.orNumber}"/></td>
							<td><c:out value="${account.description}"/></td>
							<td><c:out value="${account.assessment}"/></td>
							<td><c:out value="${account.payments}"/></td>
							<td><c:out value="${account.balance}"/></td>
							<td align="center"><a href="edit1.html?id=${account.studentNumber}">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
