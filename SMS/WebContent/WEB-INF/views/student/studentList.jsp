<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>

	<section class="content">
	<h3 align="center">
		<a href="${pageContext.request.contextPath}/student/add">Apply</a>
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
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-md-3 col-lg-3 col-xs-12 col-sm-12 pull-right">
									<div class="input-group">
										<form:input class="form-control" path="search" placeholder="Search..." autocomplete="off" />
										<span class="input-group-btn">
											<button class="btn btn-danger" type="submit">
												<i class="fa fa-search fa-fw"></i>
											</button>
										</span>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="col-lg-12">
						<div class="row">
							<div class="table-responsive">
								<table class="table grid-view table-hover table-responsive">
									<thead>
										<tr class="active">
											<th>Picture</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Student Number</th>
											<th colspan="2">Options</th>
										</tr>
									</thead>
									<tbody>
									<c:choose>
										<c:when test="${!empty students}">
											<c:forEach items="${students}" var="student" varStatus="index">

												<tr class="">
													<td><c:choose>
															<c:when test="${not empty student.studentContentType}">
																<img class="img-circle" id="image-profile" width="50" height="50" src="<c:url value="${student.studentPicture}"/>">
															</c:when>
															<c:otherwise>
																<img class="img-circle" id="image-profile" width="50" height="50" src="<c:url value="/image/default.jpeg"/>">
															</c:otherwise>
														</c:choose>
													</td>
													<td><c:out value="${student.firstName}" />
													<td><c:out value="${student.lastName}" /></td>
													<td><c:out value="${student.studentId}" /></td>
													<td align="center"><a href="edit.html?id=${student.id}">Edit</a> | <a href="delete.html?id=${student.id}">Delete</a></td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td class="text-center" colspan="5">No records found</td>
											</tr>
										</c:otherwise>
									</c:choose>
									</tbody>
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
