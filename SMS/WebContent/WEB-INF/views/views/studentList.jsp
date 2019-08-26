<%@include file="taglibs.jsp" %>
		<h1 align="center">Student Database</h1>
		
		<h3 align="center"><a href="add.html">Add Student</a></h3>
		
		<div class="table-rover jumbotron">
			<c:if test="${!empty students}">
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							<th>Student Number</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
			
					<c:forEach items="${students}" var="student">
						
						<tr class="info">
							<td><c:out value="${student.id}"/></td>
							<td><c:out value="${student.firstName}"/></td>
							<td><c:out value="${student.lastName}"/></td>
							<td align="center"><a href="edit.html?id=${student.id}">Edit</a> | <a href="delete.html?id=${student.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
		