<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>



<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/landing.css" var="landingCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet" >
		<link href="${landingCss}" rel="stylesheet" >
	</head>
<body>

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
      <div class="col-sm-1 s col-md-2 col-lg-2"> </div>
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

    </div>
 


	</body>
 </html>