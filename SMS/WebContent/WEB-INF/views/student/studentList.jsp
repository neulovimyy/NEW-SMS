<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>
	
	<section class="content">
	<h3 align="center">
		<a href="${pageContext.request.contextPath}/student/apply">Apply</a>
	</h3>

	<div class="col-md-12">
		<form:form id="view_students" action="${pageContext.request.contextPath}/student/students" method="post" commandName="studentCommand">
		<div class="page-header">
			<div class="container-fluid"></div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Students</h3>
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
									<c:when test="${!empty students}">
										<c:forEach items="${students}" var="student" varStatus="index">

											<tr class="">
												<td><c:out value="${student.firstName}" />
												<td><c:out value="${student.lastName}" />
												</td>
												<td><c:out value="${student.studentNumberFull}"/>
												</td>
												<td align="center"><a href="edit.html?id=${student.id}">Edit</a> | <a href="delete.html?id=${student.id}">Delete</a>
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

</div>
