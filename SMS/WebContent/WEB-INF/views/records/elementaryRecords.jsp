<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/allStudent.css" var="allStudentCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet">
		<link href="${allStudentCss}" rel="stylesheet">
		<spring:url value="/css/RecordAndReport/fontawesome.css" var="allFontCss" />
		<link href="${allFontCss}" rel="stylesheet">
		<script src=<c:url value="/js/Report/sample.js"/>></script>
	</head>

	<body>
		<!-- Student Record Page -->
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
		  <a href="/stud_info"><i class="fas fa-id-badge"></i> &nbsp; Student's Profile </a>
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
		      <div id="elem">
		        <div class="label">
		          <b> Elementary Students </b>
		        </div>
		        
		        <div id="list">
		          <div class="options">
		            <div class="row">
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select id="elemGradeLevel">
		                  <option value="" > Student's List </option>
		                  <option value="" > Students in their Last Term </option>
		                  <option value="" > Students for graduation </option>
		                </select>
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
		                <select id="elemsection" name="sectionLevel">
		                  <option value="null">SECTION: </option>
		                  <option value="sec1">1</option>
		                  <option value="sec2">2</option>
		                  <option value="sec3">3</option>
		                  <option value="sec4">4</option>
		                  <option value="sec5">5</option>
		                </select>
		              </div>
		                                
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemAcademicYear">
		                  <option value="null">ACADEMIC YEAR</option>
		                  <option value="allYears" >ALL</option>
		                  <option value="1920" >SY 2019-2020</option>
		                  <option value="2021">SY 2020-2021</option>
		                  <option value="2122" >SY 2021-2022</option>
		                  <option value="2223">SY 2022-2023</option>
		                  <option value="2324">SY 2023-2024</option>
		                </select>
		              </div>
		                  
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select id="jhAcademicTerm">
		                  <option value="null" >ACADEMIC TERM</option>
		                  <option value="allSem" >ALL</option>
		                  <option value="jhFirstQuarter" >1ST QUARTER</option>
		                  <option value="jhSecondQuarter">2ND QUARTER</option>
		                  <option value="jhThirdQuarter" >3RD QUARTER</option>
		                  <option value="jhFourthQuarter">4TH QUARTER</option>
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
		      
		      <div id="jhs">
		        <div class="label">
		          <b> Junior High School Students </b>
		        </div>
		        
		        <div id="list">
		          <div class="options">
		            <div class="row">
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class="levelOption" id="elemGradeLevel">
		                  <option value="" > Student's List </option>
		                  <option value="" > Students in their Last Term </option>
		                  <option value="" > Students for graduation </option>
		                </select>
		              </div>
		    
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemGradeLevel">
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
		                <select class= "levelOption" id="elemsection" name="sectionLevel">
		                  <option value="null">SECTION: </option>
		                  <option value="sec1">1</option>
		                  <option value="sec2">2</option>
		                  <option value="sec3">3</option>
		                  <option value="sec4">4</option>
		                  <option value="sec5">5</option>
		                </select>
		              </div>
		                                
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemAcademicYear">
		                  <option value="null">ACADEMIC YEAR</option>
		                  <option value="allYears" >ALL</option>
		                  <option value="1920" >SY 2019-2020</option>
		                  <option value="2021">SY 2020-2021</option>
		                  <option value="2122" >SY 2021-2022</option>
		                  <option value="2223">SY 2022-2023</option>
		                  <option value="2324">SY 2023-2024</option>
		                </select>
		              </div>
		                  
		              <div class="col-sm-2 col-md-2 col-lg-2">
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
		          </div>
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
		      
		      <div id="shs">
		        <div class="label">
		          <b> Senior High School Students </b>
		        </div>
		        <div id="list">
		          <div class="options">
		            <div class="row">
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class="levelOption" id="elemGradeLevel">
		                  <option value="" > Student's List </option>
		                  <option value="" > Students in their Last Term </option>
		                  <option value="" > Students for graduation </option>
		                </select>
		              </div>
		      
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemGradeLevel">
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
		                <select class= "levelOption" id="elemsection" name="sectionLevel">
		                  <option value="null">SECTION: </option>
		                  <option value="sec1">1</option>
		                  <option value="sec2">2</option>
		                  <option value="sec3">3</option>
		                  <option value="sec4">4</option>
		                  <option value="sec5">5</option>
		                </select>
		              </div>
		                                
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemAcademicYear">
		                  <option value="null">ACADEMIC YEAR</option>
		                  <option value="allYears" >ALL</option>
		                  <option value="1920" >SY 2019-2020</option>
		                  <option value="2021">SY 2020-2021</option>
		                  <option value="2122" >SY 2021-2022</option>
		                  <option value="2223">SY 2022-2023</option>
		                  <option value="2324">SY 2023-2024</option>
		                </select>
		              </div>
		                  
		              <div class="col-sm-2 col-md-2 col-lg-2">
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
		          </div>
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
		      
		      <div id="college">
		        <div class="label">
		          <b> College Students </b>
		        </div>
		        <div id="list">
		          <div class="options">
		            <div class="row">
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class="levelOption" id="elemGradeLevel">
		                  <option value="" > Student's List </option>
		                  <option value="" > Students in their Last Term </option>
		                  <option value="" > Students for graduation </option>
		                </select>
		              </div>
		    
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemGradeLevel">
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
		                <select class= "levelOption" id="elemsection" name="sectionLevel">
		                  <option value="null">SECTION: </option>
		                  <option value="sec1">1</option>
		                  <option value="sec2">2</option>
		                  <option value="sec3">3</option>
		                  <option value="sec4">4</option>
		                  <option value="sec5">5</option>
		                </select>
		              </div>
		                                
		              <div class="col-sm-2 col-md-2 col-lg-2">
		                <select class= "levelOption" id="elemAcademicYear">
		                  <option value="null">ACADEMIC YEAR</option>
		                  <option value="allYears" >ALL</option>
		                  <option value="1920" >SY 2019-2020</option>
		                  <option value="2021">SY 2020-2021</option>
		                  <option value="2122" >SY 2021-2022</option>
		                  <option value="2223">SY 2022-2023</option>
		                  <option value="2324">SY 2023-2024</option>
		                </select>
		              </div>
		                  
		              <div class="col-sm-2 col-md-2 col-lg-2">
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
		          </div>
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
		    </div>
		
		    <div class="footer">
		      <hr>
		      <p> � 2019 Peregrinus School | All Rights Reserved. </p>
		    </div>
		
		  </div>
		</div>
	</body>
</html>