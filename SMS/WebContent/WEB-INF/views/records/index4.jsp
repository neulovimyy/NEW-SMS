<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>
<head>
		<spring:url value="/resources/css/res.css" var="resCss" />
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/table.css" var="tableCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themecss/res.css" rel="stylesheet" >
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${tableCss}" rel="stylesheet" >
</head>
<div class="container-fluid">
  <div class="header">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <img src="../../assets/logo/sms-logo.png" alt="peregrinus logo">
          <b> &nbsp; Records and Reports Module </b>
          <button class="hamburger"> ☰ </button>
        </div>
    </div>
  </div>
  <div class="content">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <b> ENROLLED ELEMENTARY STUDENTS </b> <br> <br>
          <div class="dropdown">
            <button class="dropbtn">Year Level &nbsp; <i class="fas fa-caret-down"></i></button>
              <div class="dropdown-content">
                <a href="#">Grade 1</a>
                <a href="#">Grade 2</a>
                <a href="#">Grade 3</a>
                <a href="#">Grade 4</a>
                <a href="#">Grade 5</a>
                <a href="#">Grade 6</a>
              </div>
            </div>
          </div>
      <div class="col-sm-12 col-md-12 col-lg-12">
        <br> <br>
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
    </div>
  </div>
</div> 

</html>