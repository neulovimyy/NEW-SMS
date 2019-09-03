<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>
	
	<section class="content">
	<h3 align="center">
		<a href="${pageContext.request.contextPath}/student/add">Add Student</a>
	</h3>

	<div class="col-md-12">
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
						<div class="table-responsive">
							<table class="table grid-view table-hover table-responsive">
								<thead>
									<tr class="active">
										<th>No.</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th colspan="2">Options</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${!empty students}">
										<c:forEach items="${students}" var="student" varStatus="index">

											<tr class="">
												<td><c:out value="${index.count}" />
												</td>
												<td><c:out value="${student.firstName}" />
												</td>
												<td><c:out value="${student.lastName}" />
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
	</div>
	</section>

</div>
