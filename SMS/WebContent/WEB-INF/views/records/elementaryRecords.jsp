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
						<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
							<select class="levelOption" id="elemGradeLevel">
								<option value="" > Student's List </option>
								<option value="" > Subject List </option>
								<option value="" > Students in their last term </option>
								<option value="" > Students for graduation </option>
							
							</select>
						</div>
					
						<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
							<select class= "levelOption" id="elemGradeLevel">
								<option value="null" >GRADE LEVEL</option>
								<option value="gradeOne" >GRADE 1</option>
								<option value="gradeTwo">GRADE 2</option>
								<option value="gradeThree" >GRADE 3</option>
								<option value="gradeFour">GRADE 4</option>
								<option value="gradeFive" >GRADE 3</option>
								<option value="gradeSix">GRADE 4</option>
							
							</select>
						</div>
					
						<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
							<select class= "levelOption" id="elemsection" name="sectionLevel">
								<option value="null">SECTION: </option>
								<option value="sec1">1</option>
								<option value="sec2">2</option>
								<option value="sec3">3</option>
								<option value="sec4">4</option>
								<option value="sec5">5</option>
							</select>
						</div>
						
						
						<div class= "option col-lg-2" style="padding-left: 15px; padding-right:0px;">
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

				</div>
				<!--
				<div class="ccontent">
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
					</table>
				</div>
			-->
			</div>
			<script src=<c:url value="/js/allStudent.js"/>></script>
		</div>

	</body>
</html>