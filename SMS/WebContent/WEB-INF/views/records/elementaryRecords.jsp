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
#btn1 {
  border: none;
  outline: none;
  padding: 10px 16px;
  background: lightgray;
  cursor: pointer;
}
#btn2 {
  border: none;
  outline: none;
  padding: 10px 16px;
  background:#f1f1f1;
  cursor: pointer;
  }
  #list , #listLevel{
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

  <br> <br>

  <div class="tabs">
    <button id="btn1" onclick="choose_prof()"> Student's Profile </button>
    <button id="btn2" onclick="choose_list()"> List of Students </button>
  </div>

  <div class="content">
    <div class="levels" id="profLevel">
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

        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="college">
            <button onclick="choose_college()">
              <b> 579 </b> <br>
              <i class="fas fa-graduation-cap"></i> College Students
            </button>
          </div>
        </div>
      </div>
    </div>

<div id="elem">
    <div class="label">
      <b> Elementary Students </b>
    </div>

    <div id="info">
      <div class="search">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <input type="text" placeholder="&#xf002; Enter Student's Name">
          </div>
        </div>
      </div>	
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
                <div class="col-sm-9 col-md-9 col-lg-9">sfdasfds</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">male</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">May 13, 1998</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">21</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Place of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">103 P.Burgos St. Brgy. St. Niño Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Roman Catholic</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">09198923571</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">charloncervas13@gmail.com</div>
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

    </div>
</div>

   <div id="jhs">
    <div class="label">
      <b> Junior High School Students </b>
    </div>

    <div id="info">
      <div class="search">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <input type="text" placeholder="&#xf002; Enter Student's Name">
          </div>
        </div>
      </div>	
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
                <div class="col-sm-9 col-md-9 col-lg-9">sfdasfds</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">male</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">May 13, 1998</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">21</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Place of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">103 P.Burgos St. Brgy. St. Niño Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Roman Catholic</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">09198923571</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">charloncervas13@gmail.com</div>
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

    </div>
</div>

<div id="shs">
    <div class="label">
      <b> Senior High School Students </b>
    </div>

    <div id="info">
      <div class="search">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <input type="text" placeholder="&#xf002; Enter Student's Name">
          </div>
        </div>
      </div>	
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
                <div class="col-sm-9 col-md-9 col-lg-9">sfdasfds</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">male</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">May 13, 1998</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">21</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Place of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">103 P.Burgos St. Brgy. St. Niño Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Roman Catholic</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">09198923571</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">charloncervas13@gmail.com</div>
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

    </div>
</div>

   <div id="college">
    <div class="label">
      <b> College Students </b>
    </div>

    <div id="info">
      <div class="search">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <input type="text" placeholder="&#xf002; Enter Student's Name">
          </div>
        </div>
      </div>	
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
                <div class="col-sm-9 col-md-9 col-lg-9">sfdasfds</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Sex:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">male</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Date of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">May 13, 1998</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Age:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">21</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Place of Birth:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">103 P.Burgos St. Brgy. St. Niño Marikina City</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Religion:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">Roman Catholic</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Contact Number:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">09198923571</div>
                <div class="col-sm-3 col-md-3 col-lg-3">Email Address:</div>
                <div class="col-sm-9 col-md-9 col-lg-9">charloncervas13@gmail.com</div>
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

    </div>
</div>


 <div class="levels" id="listLevel">
      <div class="row">
          <div class="col-sm-3 col-md-3 col-lg-3">
            <div class="elem">
              <button onclick="choose_elemList()">
                <b> 150 </b> <br>
                <i class="fas fa-shapes"></i> Elementary Students
              </button>
            </div>
          </div>
  
        <div class="col-sm-3 col-md-3 col-lg-3">
            <div class="jhs">
              <button onclick="choose_jhsList()">
                <b> 253 </b> <br>
                <i class="fas fa-apple-alt"></i> Junior High School Students
              </button>
            </div>
        </div>
        
        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="shs">
            <button onclick="choose_shsList()">
                <b> 392 </b> <br>
                <i class="fas fa-pencil-alt"></i> Senior High School Students
            </button>
          </div>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3">
          <div class="college">
            <button onclick="choose_collegeList()">
              <b> 579 </b> <br>
              <i class="fas fa-graduation-cap"></i> College Students
            </button>
          </div>
        </div>
      </div>
    </div>
<div id="elem1">

    <div class="label">
      <b> Elementary Students </b>
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
      <br> <br> <br>

    </div>
   
  </div>
  
  
  <div id="jhs1">
  
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
		  
      <br> <br> <br>

	    </div>
	  </div>
 </div>
 
  <div id="shs1">
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
      <br> <br> <br>

    </div>
   
  </div>
  
  <div id="college1">
  
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
      <br> <br> <br>

    </div>
   
  </div>
  
  
  </div>
      <script src=<c:url value="/js/Report/allStudent.js"/>></script>
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
		 document.getElementById("listLevel").style.display="none";
		 document.getElementById("profLevel").style.display="block";
		 
	  }
	  
	  function choose_list(){
			 document.getElementById("info").style.display="none";
			 document.getElementById("list").style.display="block";
			 document.getElementById("btn2").style.background="lightgray"
		     document.getElementById("btn2").style.color="white";
	     	 document.getElementById("btn1").style.background=" #f1f1f1"
	         document.getElementById("btn1").style.color="black";
	     	 document.getElementById("profLevel").style.display="none";
			 document.getElementById("listLevel").style.display="block";
			 document.getElementById("elem").style.display="none";
			 document.getElementById("jhs").style.display="none";
			 document.getElementById("shs").style.display="none"
		     document.getElementById("college").style.display="none";
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
	  
	  function choose_elemList(){
			 document.getElementById("elem1").style.display="block";
			 document.getElementById("jhs1").style.display="none";
			 document.getElementById("shs1").style.display="none"
		     document.getElementById("college1").style.display="none";
	     	
		  } 
	  
	  function choose_jhsList(){
			 document.getElementById("elem1").style.display="none";
			 document.getElementById("jhs1").style.display="block";
			 document.getElementById("shs1").style.display="none"
		     document.getElementById("college1").style.display="none";
	     	
		  } 
	  
	  function choose_shsList(){
			 document.getElementById("elem1").style.display="none";
			 document.getElementById("jhs1").style.display="none";
			 document.getElementById("shs1").style.display="block"
		     document.getElementById("college1").style.display="none";
	     	
		  } 
	  
	  function choose_collegeList(){
			 document.getElementById("elem1").style.display="none";
			 document.getElementById("jhs1").style.display="none";
			 document.getElementById("shs1").style.display="none"
		     document.getElementById("college1").style.display="block";
	     	
		  } 
	  
  </script>
		</div>

	</body>
</html>