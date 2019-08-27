<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Database</h1>
		
		<h3 align="center"><a href="add.html">Add Student</a></h3>
		
		<div class="table-rover jumbotron">
			<c:if test="${!empty students}">
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							<th>Faculty #</th>
							<th>Faculty Name</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
			
					<c:forEach items="${faculty}" var="faculty">
						
						<tr class="info">
							<td><c:out value="${faculty.id}"/></td>
							<td><c:out value="${faculty.}"/></td>
							
							<td align="center"><a href="edit.html?id=${student.id}">Edit</a> | <a href="delete.html?id=${student.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
		