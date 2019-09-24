<%@include file="../common/taglibs.jsp" %>
		<h1 align="center">Student Database</h1>
		
		<h3 align="center"><a href="addsubject.html">Add Subject</a></h3>
		
		<div class="table-rover jumbotron">
			
				<table class="table table-hover" align="center" border="1">
					<thead>
						<tr class="active">
							<th>Subject Name</th>
							<th>Subject Code</th>
							<th>Units</th>
							<th colspan="2"	>Options</th>
						</tr>
					</thead>
				<c:choose>
					<c:when test="${!empty subjects}">
						<c:forEach items="${subjects}" var="subject" varStatus="index">
						<tr class="info">
							<td><c:out value="${subject.subjectName}"/></td>
							<td><c:out value="${subject.subjectCode}"/></td>
							<td><c:out value="${subject.subjectUnit}"/></td>
							
							<td align="center"><a href="editsubject?subjectId=${subject.subjectId}">Edit</a> | <a href="deletesubject.html?subjectId=${subject.subjectId}">Delete</a></td>
						</tr>
						</c:forEach>
					
					</c:when>
					<c:otherwise>
						<p class="text-center">No records found</p>
					</c:otherwise>
				</c:choose>
				</table>
		</div>
		