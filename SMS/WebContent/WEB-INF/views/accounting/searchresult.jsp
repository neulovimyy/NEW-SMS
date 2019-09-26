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
									<c:when test="${!empty accounts}">
							
							<table class="table grid-view table-hover table-responsive">
								<thead>
									<tr class="active">
										
										<tr class="active">
							<th>Student Number</th>
							<th>School Year</th>
							<th>Semester</th>
							<th>OR Number</th>
							<th>Description</th>
							<th>Assessment</th>
							<th>Payments</th>
							<th>Balance</th>
							<th colspan="2"	>Options</th>
						</tr>
									</tr>
								</thead>
								
									<c:forEach items="${accounts}" var="account">
						
						<tr class="info">
							<td><c:out value="${account.studentId}"/>
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