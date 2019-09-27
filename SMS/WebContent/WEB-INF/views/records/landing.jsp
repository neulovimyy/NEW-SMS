<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>



<html>
	<head>
		<spring:url value="/css/RecordAndReport/landing.css" var="landingCss" />
		<link href="${landingCss}" rel="stylesheet" >
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
      <img src="../../assets/sms-logo.png" alt="smslogo">
    </div>
    <div class="col-sm-11 col-md-11 col-lg-11">
      <br>
      <p> School Management System <br></p>
<div class="container-fluid">
    <div class="header">
      <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <b> &nbsp; Records and Reports Module </b>
            <button class="hamburger" style ="margin-top: 50 px; margin-left: -130 px; margin-right: 100px;"> ☰ </button>
          </div>
      </div>
  <div class="content">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12">
        <b> &nbsp; REAL TIME COUNT OF ENROLLED STUDENTS </b>
        
        <a href="all.html">Click me!</a>
        
        inserting real time in hh:mm:ss format
      </div>
      <div class="col-sm-1 s col-md-2 col-lg-2"></div>
      <div class="col-sm-5 sm col-md-4 col-lg-4">
        <button class="button" style="width: 200px; height: 100px; background-color: #003B46; cursor: pointer; border: none; color: white; font-size:14px; border-radius: 5px;">
            <p> Elementary Students: <br>
              <i class="fas fa-pencil-alt"></i> 100
            </p>
        </button>
      </div>
      <div class="col-sm-5 sm col-md-4 col-lg-4">
        <button class="button" style="width: 200px; height: 100px; background-color: #003B46; cursor: pointer; border: none; color: white; font-size:14px; border-radius: 5px;">
            <p> Junior Highschool Students: <br>
              <i class="fas fa-apple-alt"></i> 100
            </p>
        </button>
      </div>
      <div class="col-sm-1 s col-md-2 col-lg-2"></div>

      <div class="col-sm-5 sm col-md-4 col-lg-4">
        <button class="button" style="width: 200px; height: 100px; background-color: #003B46; cursor: pointer; border: none; color: white; font-size:14px; border-radius: 5px;">
            <p> Senior Highschool Students: <br>
              <i class="far fa-lightbulb"></i> 100
            </p>
        </button>
      </div>
      <div class="col-sm-5 sm col-md-4 col-lg-4">
        <button class="button" style="width: 200px; height: 100px; background-color: #003B46; cursor: pointer; border: none; color: white; font-size:14px; border-radius: 5px;">
            <p> College Students: <br>
              <i class="fas fa-university"></i> 100
            </p>
        </button>
      </div>
      <div class="col-sm-1 s col-md-2 col-lg-2"></div>
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
      <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <b> ENROLLED ELEMENTARY STUDENTS </b> <br> <br>
            <div class="dropdown">
              <button class="dropbtn">Year Level &nbsp; <i class="fas fa-caret-down"></i></button>
                <div class="dropdown-content">
                  <a href="report.html">Grade 1</a>
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

        </div>
      </div>

	<div class="content">
	  <div class="levels">
	    <div class="row">
	      <div class="col-sm-3 col-md-3 col-lg-3">
	        <div class="elem">
	          <b> 150 </b> <br>
	          <i class="fas fa-shapes"></i> Elementary Students
	        </div>
	      </div>
	
	      <div class="col-sm-3 col-md-3 col-lg-3">
	        <div class="jhs">
	          <b> 253 </b> <br>
	          <i class="fas fa-apple-alt"></i> Junior High School Students
	        </div>
	      </div>
	      
	      <div class="col-sm-3 col-md-3 col-lg-3">
	        <div class="shs">
	          <b> 392 </b> <br>
	          <i class="fas fa-pencil-alt"></i> Senior High School Students
	        </div>
	      </div>
	
	      <div class="col-sm-3 col-md-3 col-lg-3">
	        <div class="college">
	          <b> 579 </b> <br>
	          <i class="fas fa-graduation-cap"></i> College Students
	        </div>
	      </div>
	    </div>
	  </div>

	  <div class="icons">
	    <div class="row">
	      <div class="col-sm-12 col-md-12 col-lg-12">
	        <b> Records and Report Management Quick Icons</b>
	      </div>
	      
	       <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#"> 
	          <button>
	            <i class="fas fa-users"></i> <br>
	            Students
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#"> 
	          <button>
	            <i class="fas fa-list-ul"></i> <br>
	            Sections
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            Subjects
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            wala malagay 1
	          </button>
	        </a>
	      </div>
	      
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            wala malagay 2
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            wala malagay 3
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            wala malagay 4
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	        <a href="#">
	          <button>
	            <i class="fas fa-book"></i> <br>
	            wala malagay 5
	          </button>
	        </a>
	      </div>
	
	      <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#">
	            <button>
	              <i class="fas fa-book"></i> <br>
	              wala malagay 6
	            </button>
	          </a>
	        </div>
	  
	        <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#">
	            <button>
	              <i class="fas fa-book"></i> <br>
	              wala malagay 7
	            </button>
	          </a>
	        </div>
	  
	        <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#">
	            <button>
	              <i class="fas fa-book"></i> <br>
	              wala malagay 8
	            </button>
	          </a>
	        </div>
	  
	        <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#">
	            <button>
	              <i class="fas fa-book"></i> <br>
	              wala malagay 9
	            </button>
	          </a>
	        </div>
	    </div>
	  </div>
  </div>
  
</div>

	</body>

 </html>