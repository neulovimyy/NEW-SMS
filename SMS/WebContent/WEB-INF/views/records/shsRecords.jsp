<%@include file="../common/taglibs.jsp"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<!DOCTYPE html>
<html>
  	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/allStudent.css" var="allStudentCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${allStudentCss}" rel="stylesheet">
		
	</head>
	<body>
		<div class="header">
		  <div class="row">
		    <div class="col-sm-1 col-md-1 col-lg-1">
		      <div class="logo">
					<spring:url value="/image" var="images" />
					<img src="${images}/logo.png"/>
		      </div>
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
		      <b> Records and Report Management</b>
		    </div>
		  </div>
		</div>
		
		<div class="sidenav">
			<a href="home.html"><i class="fas fa-home"></i> &nbsp; Home</a>
			<a href="elemRec.html"><i class="fas fa-user"></i> &nbsp; Student's Record </a>
			<a href="studInfo.html"><i class="fas fa-id-badge"></i> &nbsp; Student's Profile </a>
			<a href="shsRec.html"><i class="fas fa-book"></i> &nbsp; Subject List </a>
			<a href="enrollment.html"><i class="fas fa-scroll"></i> &nbsp; Enrollment</a>
			<a href="#"><i class="fas fa-print"></i> &nbsp; Generate & Print</a>
		</div>
			
		<div class="main">
		  <div class="content">
		    <div class="levels">
		      <div class="row">
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="elem">
		              <i class="fas fa-pencil-alt"></i>
		            </div>
		            <b> ${count}</b> <br> Elementary Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		        
		          <button>
		            <div class="jhs">
		              <i class="fas fa-apple-alt"></i>
		            </div>
		            	
		            <b> ${countJHS}</b> <br> Junior High School Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="shs">
		                <i class="fas fa-lightbulb"></i>
		            </div>
		            <b> ${countSHS} </b> <br> Senior High School Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="college">
		              <i class="fas fa-graduation-cap"></i>
		            </div>
		            <b> ${countCollege}</b> <br> College Students
		          </button>
		        </div>
		      </div>
		    </div>
		
		    <div class="result">    
				<div class="label">
				<b> Elementary Students </b>
				</div>
		
				<div class="options">
					<div class="row">
						<div class="col-sm-2 col-md-2 col-lg-2">
							<div class="title">
							<b> Subjects's List </b>
							</div>
						</div>
				
						<div class="col-sm-2 col-md-2 col-lg-2">
							<select id="elemGradeLevel">
							<option value="null" >GRADE LEVEL</option>
							<option value="gradeOne" >GRADE 1</option>
							<option value="gradeTwo">GRADE 2</option>
							<option value="gradeThree" >GRADE 3</option>
							<option value="gradeFour">GRADE 4</option>
							<option value="gradeFive" >GRADE 5</option>
							<option value="gradeSix">GRADE 6</option>
							</select>
						</div>
									
						<div class="col-sm-2 col-md-2 col-lg-2">
							<select id="elemAcademicYear">
							<option value="null">ACADEMIC YEAR</option>
							<option value="allYears" >ALL</option>
							<option value="1920" >SY 2019-2020</option>
							<option value="2021">SY 2020-2021</option>
							<option value="2122" >SY 2021-2022</option>
							<option value="2223">SY 2022-2023</option>
							<option value="2324">SY 2023-2024</option>
							</select>
						</div>
						
						<div class="col-sm-1 col-md-1 col-lg-1">
							<button>
							<a href="">  
								<div class="pdf">
								<i class="fas fa-file-pdf"></i> &nbsp; PDF
								</div>
							</a>
							</button>
						</div>
			
						<div class="col-sm-1 col-md-1 col-lg-1">
							<button>
								<a href="">
								<div class="excel">
									<i class="fas fa-file-excel"></i> &nbsp; Excel
								</div>
								</a>
							</button>
						</div>       
					</div>
				</div>
		        
		        <div class="search">
					<form:form  action="${pageContext.request.contextPath}/records/shsRec" method="post" commandName="subjectCommand">
						<form:input id="count" class="form-control" path="search" placeholder="Search... " autocomplete="off" />
						<span class="input-group-btn">
							<button class="btn-search" type="submit">
								<i class="fa fa-search fa-fw"></i> Search
							</button>
								<!-- <button class="btn btn-danger" type="submit" id="button1" onclick="myFunction()">
								<i class="fa fa-search fa-fw"></i> charlon
							</button>-->
						</span>
						      
							<table class="table">
								<thead>
									<tr>
									<th>Subject ID</th>
									<th>Subject Code</th>
									<th>Subject Name</th>
									</tr>
								</thead>
							<tbody>
							<c:choose>
								<c:when test="${!empty report}"> 
									<c:forEach items="${report}" var="report">						
									<tr>
										<td><c:out value="${report.subjectId}"/></td>
										<td><c:out value="${report.subjectCode}"/></td>
										<td><c:out value="${report.subjectName}"/></td>
										<td><c:out value="${students.firstName}"/></td>	
									</tr>
										</c:forEach>	
			            		</c:when>
								<c:otherwise>
									<tr>
										<td class="text-center" colspan="4">No records found</td>
									</tr>
								</c:otherwise>
			            	  </c:choose>
							</tbody>	
					  	</table>
					</form:form>
					<script>
					function myFunction() {
						  document.getElementById("count").value = "";
						}
					</script>
				</div>
			</div>
		</div>
	</body>
</html>