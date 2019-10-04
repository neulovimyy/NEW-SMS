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
		
		<style>
	
#elem{
display:block;
}
#jhs{
display:none;
}
#shs{
display:none;
}
#college{
display:none;
}	
	</style>
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
		
		<div class="content"> <div class="levels">
      <div class="row">
          <div class="col-sm-3 col-md-3 col-lg-3">
            <div class="elem">
              <button onclick="choose_elem()">
                <b> 150 </b> <br>
                <i class="fas fa-shapes"></i> Elementary Students
              </button>
            </div>
          </div>
  
        <div class="col-sm-3 col-md-3 col-lg-3">
            <div class="jhs">
              <button onclick="choose_jhs()">
                <b> 253 </b> <br>
                <i class="fas fa-apple-alt"></i> Junior High School Students
              </button>
            </div>
        </div>
        
        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="shs">
            <button onclick="choose_shs()">
                <b> 392 </b> <br>
                <i class="fas fa-pencil-alt"></i> Senior High School Students
            </button>
          </div>
        </div>
<<<<<<< HEAD

        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="college">
            <button onclick="choose_college()">
              <b> 579 </b> <br>
              <i class="fas fa-graduation-cap"></i> College Students
            </button>
          </div>
        </div>
      </div>
   <div id="elem">
   <div id="list">
      <div class="options">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-lg-2">
              <b> Subjects's List </b>     
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
        </div>
      </div>
      </div>
			</div>
			
=======

        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="college">
            <button onclick="choose_college()">
              <b> 579 </b> <br>
              <i class="fas fa-graduation-cap"></i> College Students
            </button>
          </div>
        </div>
      </div>
   <div id="elem">
   <div id="list">
      <div class="options">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-lg-2">
              <b> Subjects's List </b>     
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
        </div>
      </div>
      </div>

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
>>>>>>> cd72d18d78be89432936e3a7fc43feb3dbbbce2d
	
	  <div id="jhs">
   <div id="list">
      <div class="options">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-lg-2">
              <b> Subjects's List </b>     
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
      </div>
<<<<<<< HEAD
			</div>
			
=======
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
>>>>>>> cd72d18d78be89432936e3a7fc43feb3dbbbce2d
			<div id="shs">
   <div id="list">
      <div class="options">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-lg-2">
              <b> Subjects's List </b>     
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
              <option value="jhFirstQuarter" >1ST SEM</option>
              <option value="jhSecondQuarter">2ND SEM</option>
            </select>
          </div>
        </div>
      </div>
      </div>
<<<<<<< HEAD
=======
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
>>>>>>> cd72d18d78be89432936e3a7fc43feb3dbbbce2d
			</div>
			
			<div id="college">
   <div id="list">
      <div class="options">
        <div class="row">
          <div class="col-sm-2 col-md-2 col-lg-2">
              <b> Subjects's List </b>     
          </div>
  
          <div class="col-sm-2 col-md-2 col-lg-2">
            <select class= "levelOption" id="elemGradeLevel">
              <option value="null" >Year LEVEL</option>
              <option value="gradeOne" >GRADE 1</option>
              <option value="gradeTwo">GRADE 2</option>
              <option value="gradeThree" >GRADE 3</option>
              <option value="gradeFour">GRADE 4</option>
              <option value="gradeFive" >GRADE 5</option>
              <option value="gradeSix">GRADE 6</option>
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
              <option value="jhFirstQuarter" >1ST SEM</option>
              <option value="jhSecondQuarter">2ND SEM</option>
            </select>
          </div>
        </div>
      </div>
      </div>
<<<<<<< HEAD
=======
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
>>>>>>> cd72d18d78be89432936e3a7fc43feb3dbbbce2d
			</div>
			
 			<script src=<c:url value="/js/allStudent.js"/>></script>
 			   <script>
        function pick(){
    var x = document.getElementById("elemGradeLevel").selectedIndex;
	  if(x==0){
    document.getElementById("content").style.display="none";
	  } 
	  else if(x==1){
		  document.getElementById("content").style.display="block";
	  }
        }
	
	  function choose_prof(){
		 document.getElementById("info").style.display="block";
		 document.getElementById("list").style.display="none";
		 document.getElementById("btn1").style.background="lightgray"
		 document.getElementById("btn1").style.color="white";
		 document.getElementById("btn2").style.background=" #f1f1f1"
	     document.getElementById("btn2").style.color="black";
		 
	  }
	  function choose_list(){
			 document.getElementById("info").style.display="none";
			 document.getElementById("list").style.display="block";
			 document.getElementById("btn2").style.background="lightgray"
		     document.getElementById("btn2").style.color="white";
	     	 document.getElementById("btn1").style.background=" #f1f1f1"
	         document.getElementById("btn1").style.color="black";
		  } 
	  
	  
	  function choose_elem(){
			 document.getElementById("elem").style.display="block";
			 document.getElementById("jhs").style.display="none";
			 document.getElementById("shs").style.display="none"
		     document.getElementById("college").style.display="none";
	     	
		  } 
	  
	  function choose_jhs(){
			 document.getElementById("elem").style.display="none";
			 document.getElementById("jhs").style.display="block";
			 document.getElementById("shs").style.display="none"
		     document.getElementById("college").style.display="none";
	     	
		  } 
	  
	  function choose_shs(){
			 document.getElementById("elem").style.display="none";
			 document.getElementById("jhs").style.display="none";
			 document.getElementById("shs").style.display="block"
		     document.getElementById("college").style.display="none";
	     	
		  } 
	  
	  function choose_college(){
			 document.getElementById("elem").style.display="none";
			 document.getElementById("jhs").style.display="none";
			 document.getElementById("shs").style.display="none"
		     document.getElementById("college").style.display="block";
	     	
		  } 
	  
  </script>
	  	</div>
	</div>

</body>
</html>