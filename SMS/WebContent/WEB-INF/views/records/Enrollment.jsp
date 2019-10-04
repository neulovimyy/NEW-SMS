<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>



<html>
	<head>
		<spring:url value="/css/RecordAndReport/Enrollment.css" var="enrollmentCss" />
		<link href="${enrollmentCss}" rel="stylesheet" >
		<script src=<c:url value="/js/Report/sample.js"/>></script> 
	</head>
<body>
 

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <br> <br>
  <a href="home.html">Home </a>
  <a href="elemRec.html">Students Record </a>
  <a href="shsRec.html">Subjects </a>
  <a href="enrollment.html">Enrollment </a>
</div>
<div id="main">
<div class="header">
  <div class="row">
    <div class="col-sm-1 col-md-1 col-lg-1">
      <spring:url value="/image" var="images" />
    	<img src="${images}/Cedrick.png"/>
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

<div class = "Top">
  <div class="row">
	  <div class ="Enrollment">
	  <b>Enrollment Status</b>
	  
	  </div>
  </div>
</div>

<div class = "2">
  <div class = "row">
  	<div class = "Name">
  	<table>
  		<tr>
	  		<th>Student No.</th>
	  		<th>Name</th>
	  		<th>Educational Stage</th>
	  		<th>Status</th>
	  		<th>Validation</th>
  		</tr>
  		<tr>
	  		<td>2015-00484-MN-0</td>
	  		<td>Charlon Notario Cervas</td>
	  		<td>College</td>
	  		<td>New</td>
	  		<td>Approved</td>
  		</tr>
  		<tr>
  			<td>2015-03422-MN-0</td>
  			<td>Jhon Cedrick Macahiya Sestoso</td>
  			<td>College</td>
  			<td>Old</td>
  			<td>Subject to review</td>
  		</tr>
  		<tr>
  			<td>2015-52154-MN-0</td>
  			<td>Joanna Mae Concepcion Odoño</td>
  			<td>Senior High School</td>
  			<td>New</td>
  			<td>Approved</td>
  		</tr>
  		<tr>
  			<td>2015-04423-MN-0</td>
  			<td>Marvin Abrigo Peralta</td>
  			<td>Elementary</td>
  			<td>Old</td>
  			<td>Denied</td>
  		</tr>
  		<tr>
  			<td>2015-04963-MN-0</td>
  			<td>Michaella Pole Dela Cruz</td>
  			<td>Elementary</td>
  			<td>Old</td>
  			<td>Denied</td>
  		</tr>
  		<tr>
  			<td>2015-04253-MN-0</td>
  			<td>Precious Anne Sumanting Babaran</td>
  			<td>College</td>
  			<td>Old</td>
  			<td>Approved</td>
  		</tr>
  		<tr>
  			<td>2015-04733-MN-0</td>
  			<td>Victor Morilla</td>
  			<td>Senior Highschool</td>
  			<td>New</td>
  			<td>Denied</td>
  		</tr>
  		<tr>
  			<td>2015-04463-MN-0</td>
  			<td>Paul Benedict Nadonga</td>
  			<td>Highshool</td>
  			<td>Old</td>
  			<td>Subject to review</td>
  		</tr>
  		<tr>
  			<td>2015-04453-MN-0</td>
  			<td>Joshua Soco Jose</td>
  			<td>Elementary</td>
  			<td>New</td>
  			<td>Approved</td>
  		</tr>
  		<tr>
  			<td>2015-14453-MN-0</td>
  			<td>Jane Doe</td>
  			<td>College</td>
  			<td>Old</td>
  			<td>Pending</td>
  		</tr>
  		<tr>
  			<td>2015-04453-MN-0</td>
  			<td>John Doe</td>
  			<td>Senior Highschool</td>
  			<td>New</td>
  			<td>Denied</td>
  		</tr>
  	</table>
  	</div>
  </div>
</div>
</div>

  

	</body>

 </html>