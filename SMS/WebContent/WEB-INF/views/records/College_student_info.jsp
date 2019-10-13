<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/taglibs.jsp" %>
<!DOCTYPE html>
<html>

	<head>
		<spring:url value="/css/RecordAndReport/student_info.css" var="studentinfoCss" />
		<link href= "${studentinfoCss}" rel="stylesheet" />
		<script src=<c:url value="/js/Report/sample.js"/>></script>
	</head>

	<body>
    <!-- Student Info Page -->
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
             <form action="studInfo.html" method="get">
              <button type="submit">
                <div class="elem">
                  <i class="fas fa-pencil-alt"></i>
                </div>
                <b> ${count} </b> <br> Elementary Students
              </button>
              </form>
            </div>

            <div class="col-sm-3 col-md-3 col-lg-3">
            <form action="studInfoJHS.html" method="get">
              <button  type="submit">
                <div class="jhs">
                  <i class="fas fa-apple-alt"></i>
                </div>
                <b> ${countJHS}</b> <br> Junior High School Students
              </button>
              </form>
            </div>

            <div class="col-sm-3 col-md-3 col-lg-3">
            <form action="studInfoSHS.html" method="get">
              <button type="submit">
                <div class="shs">
                    <i class="fas fa-lightbulb"></i>
                </div>
                <b> ${countSHS} </b> <br> Senior High School Students
              </button>
              </form>
            </div>

            <div class="col-sm-3 col-md-3 col-lg-3">
            <form action="studInfoCollege.html" method="get">
              <button type=submit>
                <div class="college">
                  <i class="fas fa-graduation-cap"></i>
                </div>
                <b> ${countCollege} </b> <br> College Students
              </button>
              </form> 	
            </div>
          </div>
        </div>

        <div class="profile">
          <div class="label">
            <b> College Students </b>
          </div>

          <div class="search">
            <form:form id="view_students" action="${pageContext.request.contextPath}/records/studInfoJHS" method="post" commandName="collegestudentCommand">
              <form:input class="form-control" path="search" placeholder="Search..." autocomplete="off" />
              <span class="input-group-btn">
                <button class="btn btn-danger" type="submit">
                  <i class="fa fa-search fa-fw"></i> Search
                </button>
              </span>

              <c:choose>
                <c:when test="${!empty colstudent}"> 
                  <c:forEach items="${colstudent}" var="shsstudent">
                    <div class="box1">
                      <div class="row">
                        <div class="col-sm-4 col-md-4 col-lg-4">
                        <spring:url value="/image" var="images" />
                        <img id="studImg" src="${images}/charlon.png"/>
                        </div> 
                        <div class="col-sm-8 col-md-8 col-lg-8">
                          <div class="studInfo">
                            <div class="row">
                              <div class="col-sm-3 col-md-3 col-lg-3">Name:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.firstName} ${colstudent.middleName} ${colstudent.lastName} &nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.gender}&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.birthDate} &nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">21&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Permanent Address:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.permanentAddress}&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Present Address:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.presentAddress}&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.religion}&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.mobileNum}</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">${colstudent.emailAddress}&nbsp;</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Mothers name:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">Ma. Cecilla Cervas</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Fathers name:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">Charlie Cervas</div>
                              <div class="col-sm-3 col-md-3 col-lg-3">Fathers Occupation:</div>
                              <div class="col-sm-9 col-md-9 col-lg-9">Administratve Staff</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </c:forEach>
                </c:when>
                <c:otherwise>
                  <h1 class="text-center" colspan="4">No records found</h1>
                </c:otherwise>
              </c:choose>
            </form:form>
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