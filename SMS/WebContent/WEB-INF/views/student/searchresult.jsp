<%@include file="../common/taglibs.jsp"%>
<h1 align="center">Student Database</h1>

<div class="content-wrapper">
	<section class="content-header"> </section>
	
	<section class="content">

<div class="panel-body">
				<div class="col-md-12">
					<div class="row">
						<div class="table-responsive">
							<c:choose>
									<c:when test="${!empty students}">
							
							<table class="table grid-view table-hover table-responsive">
								<thead>
									<tr class="active">
										
										<th>First Name</th>
										<th>Last Name</th>
										<th>Student Number</th>
										<th colspan="2">Options</th>
									</tr>
								</thead>
								
										<c:forEach items="${students}" var="student" varStatus="index">

											<tr class="">
												<td><c:out value="${student.firstName}" /></td>
												<td><c:out value="${student.lastName}" /></td>
												<td><c:out value="${student.studentNumberFull}"/></td>
												<td class="text-center"><a href="edit.html?id=${student.id}">Edit</a> | <a href="delete.html?id=${student.id}">Delete</a>
												</td>
											</tr>
										</c:forEach>
									
									<c:otherwise>
										<tr>
											<td class="text-center" colspan="4">No records found</td>
										</tr>
									</c:otherwise>
								
									</table>
								</c:when>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>