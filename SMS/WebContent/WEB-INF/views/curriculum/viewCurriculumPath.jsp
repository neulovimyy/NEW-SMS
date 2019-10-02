<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>

	<section class="content">

	<div class="col-md-12">
		<form:form id="view_students" action="${pageContext.request.contextPath}/path/view" method="post" commandName="curriculumCommand">
			<div class="page-header">
				<div class="container-fluid"></div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3>Curriculum Path</h3>
				</div>

				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-md-3 col-lg-3 col-xs-12 col-sm-12 pull-right">
									<div class="input-group">
										<form:hidden path="id"/>
										<form:input class="form-control" path="search" placeholder="Search..." autocomplete="off" />
										<span class="input-group-btn">
											<button class="btn btn-danger" type="submit">
												<i class="fa fa-search fa-fw"></i>
											</button>
										</span>
									</div>
								</div>
								<div class="col-lg-1">
									<a type="button" class="btn btn-primary " href="<c:url value="/path/form?pathid=${pathid}"/>"><i class="fa fa-plus fa-fw"></i> Create</a>
								</div>
							</div>
						</div>

					</div>
					<div class="col-lg-12">
						<div class="row">
								<table class="table table-hover table-responsive">
									<thead>
										<tr class="active">
											<th></th>
											<th>Name</th>
											<th colspan="2">Options</th>
										</tr>
									</thead>
									<tbody>
									<c:choose>
										<c:when test="${!empty path}">
											<c:forEach items="${path}" var="obj" varStatus="index">

												<tr class="">
													<td>${index.count}</td>
													<td><c:out value="${obj.name}" />
													<td>
														<div class="input-group">
															<div class="input-group-btn">
																<button type="button" class="btn btn-primary btn-flat dropdown-toggle" data-toggle="dropdown">
																	<span class="fa fa-gear"> <i class="filesIcon fa fa-caret-down icon"></i></span>
																</button>
																<ul class="dropdown-menu">
																	<li><a href="${pageContext.request.contextPath}/curriculum/form?id=${obj.id}"><i class="filesIcon fa fa-edit icon"></i> Edit</a></li>
																	<li><a href="#" data-href="${pageContext.request.contextPath}/curriculum/delete?id=${obj.id}" data-toggle="modal" data-target="#confirm"><i class="filesIcon fa fa-eye icon"></i> Delete</a></li>
																	<li><a href="${pageContext.request.contextPath}/path/view?id=${obj.id}"><i class="filesIcon fa fa-eye icon"></i> View</a></li>
																</ul>
															</div>
															<!-- /btn-group -->
														</div>
													</td>
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
		</form:form>
	</div>
	</section>

</div>
