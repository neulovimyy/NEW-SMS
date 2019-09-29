<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<!DOCTYPE html>

<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/allStudent.css" var="allStudentCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${allStudentCss}" rel="stylesheet" >
	</head>
<body>

	<div class="header1">
	
		<div class= "row" style="margin-left: auto; margin-right: auto;">
			
				<div class="title col-lg-2" style="border: 1px solid black; padding-left: 15px; padding-right:0;"> 
					<h3>STUDENT'S LIST </h3> 
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0;">
					<select class= "levelOption" id="studentLevel">
						<option value="null">STUDENT LEVEL</option>
						<option value="04" >COLLEGE</option>
    					<option value="03" >SENIOR HIGH SCHOOL</option>
    					<option value="02" >JUNIOR HIGH SCHOOL</option>
    					<option value="01" >ELEMENTARY</option>
					
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
					<select class= "levelOption" id="collegeCourse" name="COURSE">
						<option value="null" >COURSE:</option>
						<option value="cpe">BSCPE</option>
    					<option value="ie">BSIE</option>
    					<option value="ee">BSEE</option>
    					<option value="ece">BSECE</option>
    					<option value="me">BSME</option>
    					<option value="cafa">CAFA</option>
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
					<select class= "levelOption" id="yearLevel">
						<option value="null" >YEAR LEVEL</option>
						<option value="firstYear" >1ST YEAR</option>
    					<option value="secondYear">2ND YEAR</option>
    					<option value="thirdYear" >3RD YEAR</option>
    					<option value="fourthYear">4TH YEAR</option>
    					<option value="fifthYear">5TH YEAR</option>
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
					<select class= "levelOption" id="section" name="sectionLevel">
						<option value="null">SECTION: </option>
						<option value="sec1">1</option>
    					<option value="sec2">2</option>
    					<option value="sec3">3</option>
    					<option value="sec4">4</option>
    					<option value="sec5">5</option>
					</select>
				</div>
				
					<div class= "search-container col-lg-2" style="padding-left: 15px; padding-right:0px;">
						<input type="text" placeholder="Search.." name="search">
     				 	<button type="submit"><i class="fa fa-search"></i></button>
					</div>
				
				
			</div>
			<div class= "row" style="margin-left: auto; margin-right: auto;">
			
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0;"> 
					<select class= "levelOption" id="docRequirements">
						<option value="null">DOCUMENT REQUIREMENTS</option>
						<option value="docSubmitted">SUBMITTED</option>
    					<option value="docNotSubmitted">NOT SUBMITTED</option>
					
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0;">
					<select class= "levelOption" id="academicRequirements">
						<option value="null">ACADEMIC REQUIREMENTS</option>
						<option value="acadReqComp">COMPLETED</option>
    					<option value="acadReqIncomp">INCOMPLETE</option>
    					
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0;">
					<select class= "levelOption" id="admissionRequirements">
						<option value="null">ADMISSION REQUIREMENTS</option>
						<option value="admiReqComp">COMPLETED</option>
    					<option value="admiReqIncomp">INCOMPLETE</option>
    					
					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
					<select class= "levelOption" id="academicYear">
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
					<select class= "levelOption" id="academicTerm">
						<option value="null" >ACADEMIC TERM</option>
						<option value="allSem" >ALL</option>
						<option value="firstSemCollege" >1ST SEM</option>
    					<option value="secondSemColleg">2ND SEM</option>

					</select>
				</div>
				
				<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
					<select class= "levelOption" id="seniorHighStrand" name="strand">
						<option value="null" >STRAND:</option>
						<option value="strandFullList">FULL LIST</option>
    					<option value="ie">ABM</option>
    					<option value="ee">STEM</option>
    					<option value="ece">HUMSS</option>
    					<option value="me">GAS</option>
					</select>
				</div>
			
			
		</div>
	
				<div class="content">
					<table class="students" id="collegeList">
						  <tr>
						    <th>Student id</th>
						    <th>Name</th>
						    <th>Course</th>
						    <th>Year</th>
						    <th>Section</th>
						    <th>Status</th>
						    <th>Age</th>
						    <th>Contact Number</th>
						    <th>Date Of Birth</th>
						    <th>Gender</th>
						    
						  </tr>
						  <tr>
						    <td>00001</td>
						    <td>Marvin Peralta</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>56</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Male</td>
						  </tr>
						  <tr>
						    <td>00002</td>
						    <td>Joanna Mae Odono</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>78</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Female</td>
						  </tr>
						  <tr>
						    <td>00003</td>
						    <td>Jhon Cedrick Sestoso</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>12</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Male</td>
						  </tr>
						  <tr>
						    <td>00004</td>
						    <td>Michaella Dela Cruz</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>99</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Female</td>
						  </tr>
						  <tr>
						    <td>00005</td>
						    <td>Charlon Cervas</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>69</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Male</td>
						  </tr>
						  <tr>
						    <td>00006</td>
						    <td>Victor Morilla</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>88</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Male</td>
						  </tr>
						  <tr>
						    <td>00007</td>
						    <td>Precious Anne Babaran</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>45</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Female</td>
						  </tr>
						  <tr>
						    <td>00008</td>
						    <td>Russel Bryan Marco</td>
						    <td>BSCPE</td>
						    <td>5th</td>
						    <td>FS1N</td>
						    <td>Regular</td>
						    <td>56</td>
						    <td>09858975467</td>
						    <td>kahapon</td>
						    <td>Male</td>
						  </tr>
					</table>
				
				</div>
	
	</div>


 <script src=<c:url value="/js/allStudent.js"/>></script>
</body>
</html>