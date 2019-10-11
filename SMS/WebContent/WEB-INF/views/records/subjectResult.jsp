
<%@include file="../common/taglibs.jsp"%>
<div>
<form:form  action="${pageContext.request.contextPath}/records/result" method="post" commandName="subjectCommand">
<form:input class="form-control" path="search" placeholder="Search..." autocomplete="off" />
	<span class="input-group-btn">
		<button class="btn btn-danger" type="submit">
			<i class="fa fa-search fa-fw"></i> Search
		</button>
	</span>
		  		<c:if test="${!empty report}">         
  <table class="table">
    <thead>
      <tr>
        <th>Subject ID</th>
        <th>Subject Code</th>
        <th>Subject Name</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${report}" var="report">						
		<tr>
			<td><c:out value="${report.subjectId}"/></td>
			<td><c:out value="${report.subjectCode}"/></td>
			<td><c:out value="${report.subjectName}"/></td>		
		</tr>
	</c:forEach>
    </tbody>	
  </table>
  </c:if>
	</form:form>
</div>