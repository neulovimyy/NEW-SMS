<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/allStudent.css" var="allStudentCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${allStudentCss}" rel="stylesheet">
		<script src=<c:url value="/js/Report/sample.js"/>></script>
	</head>
<body>

	<div id="mySidenav" class="sidenav">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	  <br> <br>
	  <a href="#">Home</a>
	  <a href="#">Students</a>
	  <a href="#">Sections</a>
	  <a href="#">Subjects</a>
	  <a href="#">Records</a>
	</div>
	<div id="main">
	
		<div class="header">
		  <div class="row">
		    <div class="col-sm-1 col-md-1 col-lg-1">
		      	<spring:url value="/image" var="images" />
		    	<img src="${images}/logo.png"/>
		    </div>
		    <div class="col-sm-11 col-md-11 col-lg-11">
		      <br>
		      <p> School Management System <br></p>
		      </div>
		      </div>
		      </div>
		<div class="subheading">
		  <div class="row">
		    <div class="col-sm-12 col-md-12 col-lg-12">
		      <span onclick="openNav()"> &#9776; </span>
		      <b> &nbsp; &nbsp; Records and Report Management</b>
		    </div>
		  </div>
		</div>
		<div class="content">
			<div class="cheader">
				<div class= "row" style="margin-left: auto; margin-right: auto;">
				
					<div class="title col-lg-2" style="border: 1px solid black; padding-left: 15px; padding-right:0;"> 
						<h3>STUDENT'S LIST </h3> 
					</div>
					
					<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
						<select class= "levelOption" id="GradeLevel">
							<option value="null" >YEAR LEVEL</option>
							<option value="firstYear" >GRADE 7</option>
	    					<option value="secondYear">GRADE 8</option>
	    					<option value="thirdYear" >GRADE 9</option>
	    					<option value="fourthYear">GRADE 10</option>
						</select>
					</div>
					
					<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
						<select class= "levelOption" id="jhSection" name="sectionLevel">
							<option value="null">SECTION: </option>
							<option value="sec1">1</option>
	    					<option value="sec2">2</option>
	    					<option value="sec3">3</option>
	    					<option value="sec4">4</option>
	    					<option value="sec5">5</option>
						</select>
					</div>
					
					<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
						<select class= "levelOption" id="jhAcademicYear">
							<option value="null">ACADEMIC YEAR</option>
							<option value="allYears" >ALL</option>
							<option value="1920" >SY 2019-2020</option>
	    					<option value="2021">SY 2020-2021</option>
	    					<option value="2122" >SY 2021-2022</option>
	    					<option value="2223">SY 2022-2023</option>
	    					<option value="2324">SY 2023-2024</option>
						</select>
					</div>
					
					<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
						<select class= "levelOption" id="jhAcademicTerm">
							<option value="null" >ACADEMIC TERM</option>
							<option value="allSem" >ALL</option>
							<option value="jhFirstQuarter" >1ST QUARTER</option>
	    					<option value="jhSecondQuarter">2ND QUARTER</option>
	    					<option value="jhThirdQuarter" >3RD QUARTER</option>
	    					<option value="jhFourthQuarter">4TH QUARTER</option>
	
						</select>
					</div>
					
				</div>
				
				<div class="ccontent">
				 	<c:if test="${!empty student}">         
  <table class="table">
    <thead>
      <tr>
        <th>Student ID</th>
        <th> First Name</th>
        <th> Middle Name</th>
        <th> Last Name</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${student}" var="student">						
		<tr>
			<td><c:out value="${student.studentId}"/></td>
			<td><c:out value="${student.firstName}"/></td>
			<td><c:out value="${student.middleName}"/></td>
			<td><c:out value="${student.lastName}"/></td>		
		</tr>
	</c:forEach>
    </tbody>	
  </table>
  </c:if>
				</div>	
			</div>
	 	<script src=<c:url value="/js/allStudent.js"/>></script>
		</div>
	</div> 

</body>
</html>