<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>


<html>
<head>
		<spring:url value="/css/RecordAndReport/studentSubject.css" var="studentSubjectCss" />
		<link href="${studentSubjectCss}" rel="stylesheet" >
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
    <!-- Elementary -->
    <div class="elem">
      <button class="accordion"> Elementary</button>
      <!-- Grade 1 -->
      <div class="panel">
        <button class="accordion"> Grade 1</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
                <div class="col-sm-12 col-md-12 col-lg-12">
        <br> <br>
		  		<c:if test="${!empty report}">         
  <table class="table">
    <thead>
      <tr>
        <th>Subject ID</th>
        <th>Subject Code</th>
        <th>Subject Name</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${report}" var="report">						
		<tr>
			<td><c:out value="${report.subjectId}"/></td>
			<td><c:out value="${report.subjectCode}"/></td>
			<td><c:out value="${report.subjectName}"/></td>		
		</tr>
	</c:forEach>
    </tbody>	
  </table>
  </c:if>
      </div>
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
			    <div class="col-sm-12 col-md-12 col-lg-12">
			        <br> <br>
					  		<c:if test="${!empty report}">         
			  <table class="table">
			    <thead>
			      <tr>
			        <th>Subject ID</th>
			        <th>Subject Code</th>
			        <th>Subject Name</th>
			      </tr>
			    </thead>
			    <tbody>
			      <c:forEach items="${report}" var="report">						
					<tr>
						<td><c:out value="${report.subjectId}"/></td>
						<td><c:out value="${report.subjectCode}"/></td>
						<td><c:out value="${report.subjectName}"/></td>		
					</tr>
				</c:forEach>
			    </tbody>	
			  </table>
			  </c:if>
			      </div>
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 2 -->
      <div class="panel">
        <button class="accordion"> Grade 2</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 3 -->
      <div class="panel">
        <button class="accordion"> Grade 3</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 4 -->
      <div class="panel">
        <button class="accordion"> Grade 4</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 5 -->
      <div class="panel">
        <button class="accordion"> Grade 5</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 6 -->
      <div class="panel">
        <button class="accordion"> Grade 6</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>

    </div>
    <!-- Junior High School -->
    <div class="jhs">
      <button class="accordion"> Junior High School </button>
      <!-- Grade 1 -->
      <div class="panel">
        <button class="accordion"> Grade 1</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 2 -->
      <div class="panel">
        <button class="accordion"> Grade 2</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 3 -->
      <div class="panel">
        <button class="accordion"> Grade 3</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 4 -->
      <div class="panel">
        <button class="accordion"> Grade 4</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 5 -->
      <div class="panel">
        <button class="accordion"> Grade 5</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      <!-- Grade 6 -->
      <div class="panel">
        <button class="accordion"> Grade 6</button>
          <div class="panel">
            <!--Section 1 -->
            <button class="accordion"> Section 1 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 2 -->
            <button class="accordion"> Section 2 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 3-->
            <button class="accordion"> Section 3 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 4 -->
            <button class="accordion"> Section 4 </button>
              <div class="panel">
              *insert table*
              </div>
            <!--Section 5 -->
            <button class="accordion"> Section 5 </button>
              <div class="panel">
              *insert table*
              </div>
        </div>
      </div>
      
    </div>
    <!-- Senior High School -->
    <div class="shs">
      <button class="accordion"> Senior High School </button>
      <div class="panel">
        <!-- Grade 11 -->
        <button class="accordion"> Grade 11 </button>
        <div class="panel">
          <!-- ABM -->
          <button class="accordion"> ABM </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- GAS -->
          <button class="accordion"> GAS </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- HUMSS -->
          <button class="accordion"> HUMSS </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- STEM -->
          <button class="accordion"> STEM </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
          <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
          <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
          <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
          <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
          <div class="panel"> *insert table* </div>
          </div>
        </div>
        <!-- Grade 12 -->
        <button class="accordion"> Grade 12 </button>
        <div class="panel">
          <!-- ABM -->
          <button class="accordion"> ABM </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- GAS -->
          <button class="accordion"> GAS </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- HUMSS -->
          <button class="accordion"> HUMSS </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
          <!-- STEM -->
          <button class="accordion"> STEM </button>
          <div class="panel">
            <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
            <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
          </div>
        </div>
      </div>
    </div>

        <!-- COLLEGE -->
        <div class="college">
          <button class="accordion">COLLEGE </button>
          <div class="panel">
            <!-- Grade 11 -->
            <button class="accordion"> COE </button>
            <div class="panel">
              <!-- ABM -->
              <button class="accordion"> 1st Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- GAS -->
              <button class="accordion"> 2nd Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- HUMSS -->
              <button class="accordion"> 3rd Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- STEM -->
              <button class="accordion"> 4th Year</button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
              <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
              <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
              <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
              <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
              <div class="panel"> *insert table* </div>
              </div>
            </div>
            <!-- Grade 12 -->
            <button class="accordion"> CpE </button>
            <div class="panel">
              <!-- ABM -->
              <button class="accordion"> 1st Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- GAS -->
              <button class="accordion"> 2nd Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- HUMSS -->
              <button class="accordion"> 3rd Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
              <!-- STEM -->
              <button class="accordion"> 4th Year </button>
              <div class="panel">
                <button class="accordion"> Section 1 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 2 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 3 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 4 </button>
                  <div class="panel"> *insert table* </div>
                <button class="accordion"> Section 5 </button>
                  <div class="panel"> *insert table* </div>
              </div>
            </div>
          </div>
        </div>
  </div>
</div>

<script>
    var acc = document.getElementsByClassName("accordion");
    var i;
    
  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  }
  </script>
</body>
</html>