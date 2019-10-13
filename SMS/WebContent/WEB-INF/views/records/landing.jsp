	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/landing.css" var="landingCss" />
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet">
		
		<link href="${landingCss}" rel="stylesheet">
		<script src=<c:url value="/js/Report/sample.js"/>></script> 
	</head>
	
	<body>
	<!-- Landing Page -->
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
	            <b>${count}</b> <br> Elementary Students
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
	            <b> ${countCollege} </b> <br> College Students
	          </button>
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
	              <i class="fas fa-user"></i> <br>
	              Student's Record
	            </button>
	          </a>
	        </div>
	  
	        <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#"> 
	            <button>
	              <i class="fas fa-book"></i> <br>
	              Subject List
	            </button>
	          </a>
	        </div>
	  
	        <div class="col-sm-2 col-md-2 col-lg-2">
	          <a href="#">
	            <button>
	              <i class="fas fa-scroll"></i> <br>
	              Enrollment
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
	
	    <div class="footer">
	      <hr>
	      <p> � 2019 Peregrinus School | All Rights Reserved. </p>
	    </div>
	
	  </div>
	</div>	
	</body>

</html>