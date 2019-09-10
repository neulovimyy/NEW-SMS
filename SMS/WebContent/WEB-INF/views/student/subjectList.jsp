<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Database</h1>
		
		<h3 align="center"><a href="addsubject.html">Add Subject</a></h3>
		
		<div class="table-rover jumbotron">
			<c:if test="${!empty subjects}">
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							<th>Subject Name</th>
							<th>Subject Code</th>
							<th>Units</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
			
					<c:forEach items="${subjects}" var="subject">
						
						<tr class="info">
							<td><c:out value="${subject.subjectName}"/></td>
							<td><c:out value="${subject.subjectCode}"/></td>
							<td><c:out value="${subject.subjectUnit}"/></td>
							
							<td align="center"><a href="editsubject.html?subjectId=${subject.subjectId}">Edit</a> | <a href="deletesubject.html?subjectId=${subject.subjectId}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
		