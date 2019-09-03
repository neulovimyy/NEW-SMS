<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<div class="container">
  <h2>Sample Records</h2> 
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
</div>