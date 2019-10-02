<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Accounting Information Table</h1>
		<h2 align="center">Payment Details</h2>
		<h3 align="center"><a href="/SMS/account/add1.html">View Student Account Information</a></h3>
				
	<section class="content">

	<div class="col-md-12">
		<form:form id="view_students" action="${pageContext.request.contextPath}/account/transaction1" method="GET" commandName="account">
		<div class="page-header">
			<div class="container-fluid"></div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Account</h3>
			</div>
			
			<div class="panel-body">
				<div class="col-md-12">
					<div class="row">
								<div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
									<div class="input-group">
										<form:input class="form-control" path="search" placeholder="Search..." autocomplete="off"/>
										<span class="input-group-btn">
											<button class="btn btn-danger" type="submit">
												<i class="fa fa-search fa-fw"></i> Search
											</button> 
											 </span>
									</div>
								</div>
								
							</div>
					<div class="row">
						<div class="table-responsive">
							<table class="table grid-view table-hover table-responsive">
								<thead>
									<tr class="active">
										
										<th>First Name</th>
										<th>Last Name</th>
										<th>Student Number</th>
										<th colspan="2">Options</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${!empty accounts}">
										<c:forEach items="${accounts}" var="student" varStatus="index">

											<tr class="">
												<td><c:out value="${account.firstName}" />
												<td><c:out value="${account.lastName}" />
												</td>
												<td><c:out value="${account.studentId}"/>
												</td>
												<td align="center"><a href="edit.html?id=${account.studentNumber}">Edit</a> | <a href="delete.html?id=${account.studentNumber}">Delete</a>
												</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td class="text-center" colspan="4">No records found</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form:form>
	</div>
	</section>
		
		
		
		
		
	
