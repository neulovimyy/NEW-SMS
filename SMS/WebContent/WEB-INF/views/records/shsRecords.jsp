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
		<!-- Subject Page -->
		<div class="header">
		  <div class="row">
		    <div class="col-sm-1 col-md-1 col-lg-1">
		      <div class="logo">
		        <img src="../../assets/sms-logo.png" alt="smslogo">
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
		  <a href=""><i class="fas fa-home"></i> &nbsp; Home</a>
		  <a href="/stud_rec"><i class="fas fa-user"></i> &nbsp; Student's Record </a>
		  <a href="/stud_info"><i class="fas fa-id-badge"></i> &nbsp; Student's Profile </a>
		  <a href="/stud_subj"><i class="fas fa-book"></i> &nbsp; Subject List </a>
		  <a href="/stud_enroll"><i class="fas fa-scroll"></i> &nbsp; Enrollment</a>
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
		            <b> 150 </b> <br> Elementary Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="jhs">
		              <i class="fas fa-apple-alt"></i>
		            </div>
		            <b> 253</b> <br> Junior High School Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="shs">
		                <i class="fas fa-lightbulb"></i>
		            </div>
		            <b> 392 </b> <br> Senior High School Students
		          </button>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		          <button>
		            <div class="college">
		              <i class="fas fa-graduation-cap"></i>
		            </div>
		            <b> 589 </b> <br> College Students
		          </button>
		        </div>
		      </div>
		    </div>
		
		    <div class="result">    
		      <div class="label">
		        <b> Elementary Students </b>
		      </div>
		
		      <div id="list">
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
		        
		        <table class="table">
		          <thead>
		            <tr>
		              <th> Subject ID </th>
		              <th> Subject Code </th>
		              <th> Subject Name </th>
		              <th> # of units </th>
		            </tr>
		          </thead>
		          <tbody>
		            <tr>
		              <td> 1</td>
		              <td> 101 </td>
		              <td> Analytic Geometry </td>
		              <td> 3 </td>		
		            </tr>
		            <tr>
		              <td> 2</td>
		              <td> 102 </td>
		              <td> Trigonometry </td>
		              <td> 4 </td>		
		            </tr>
		            <tr>
		              <td> 3</td>
		              <td> 103 </td>
		              <td> Algebra </td>
		              <td> 3 </td>		
		            </tr>
		            <tr>
		              <td> 4</td>
		              <td> 104 </td>
		              <td> Calculus </td>
		              <td> 5 </td>		
		            </tr>
		          </tbody>
		        </table>
		      </div>
		    </div>
		
		    <div class="footer">
		      <hr>
		      <p> © 2019 Peregrinus School | All Rights Reserved. </p>
		    </div>
		
		  </div>
		</div>
	</body>
</html>