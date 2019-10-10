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
		<spring:url value="/css/RecordAndReport/fontawesome.css" var="allFontCss" />
		<link href="${allFontCss}" rel="stylesheet">
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
<!-- Student Record Page -->
<div class="header">
  <div class="row">
    <div class="col-sm-1 col-md-1 col-lg-1">
      <div class="logo">
        <img src="../../assets/sms-logo.png" alt="smslogo">
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
  <a href=""><i class="fas fa-home"></i> &nbsp; Home</a>
  <a href="/stud_rec"><i class="fas fa-user"></i> &nbsp; Student's Record </a>
  <a href="/stud_info"><i class="fas fa-id-badge"></i> &nbsp; Student's Profile </a>
  <a href="/stud_subj"><i class="fas fa-book"></i> &nbsp; Subject List </a>
  <a href="/stud_enroll"><i class="fas fa-scroll"></i> &nbsp; Enrollment</a>
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
            <b> 150 </b> <br> Elementary Students
          </button>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3">
          <button>
            <div class="jhs">
              <i class="fas fa-apple-alt"></i>
            </div>
            <b> 253</b> <br> Junior High School Students
          </button>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3">
          <button>
            <div class="shs">
                <i class="fas fa-lightbulb"></i>
            </div>
            <b> 392 </b> <br> Senior High School Students
          </button>
        </div>

        <div class="col-sm-3 col-md-3 col-lg-3">
          <button>
            <div class="college">
              <i class="fas fa-graduation-cap"></i>
            </div>
            <b> 589 </b> <br> College Students
          </button>
        </div>
      </div>
    </div>

    <div class="result">
      <div id="elem">
        <div class="label">
          <b> Elementary Students </b>
        </div>
        
        <div id="list">
          <div class="options">
            <div class="row">
              <div class="col-sm-2 col-md-2 col-lg-2">
                <select id="elemGradeLevel">
                  <option value="" > Student's List </option>
                  <option value="" > Students in their Last Term </option>
                  <option value="" > Students for graduation </option>
                </select>
              </div>
      
              <div class="col-sm-2 col-md-2 col-lg-2">
                <select id="elemGradeLevel">
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
                <select id="elemsection" name="sectionLevel">
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
                <select id="jhAcademicTerm">
                  <option value="null" >ACADEMIC TERM</option>
                  <option value="allSem" >ALL</option>
                  <option value="jhFirstQuarter" >1ST QUARTER</option>
                  <option value="jhSecondQuarter">2ND QUARTER</option>
                  <option value="jhThirdQuarter" >3RD QUARTER</option>
                  <option value="jhFourthQuarter">4TH QUARTER</option>
                </select>
              </div>

              <div class="col-sm-1 col-md-1 col-lg-1">
                <button>
                  <a href="">  
                    <div class="pdf">
                      <i class="fas fa-file-pdf"></i> &nbsp; PDF
                    </div>
                  </a>
                </button>
              </div>
              <div class="col-sm-1 col-md-1 col-lg-1">
                <button>
                    <a href="">
                      <div class="excel">
                        <i class="fas fa-file-excel"></i> &nbsp; Excel
                      </div>
                    </a>
                  </button>
              </div>
            </div>
          </div>
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
              <tr>
                <td> 1234-1</td>
                <td> Charlon </td>
                <td> Notario </td>
                <td> Cervas </td>		
              </tr>
              <tr>
                <td> 1234-2</td>
                <td> Precious Anne </td>
                <td> Sumanting</td>
                <td> Babaran </td>		
              </tr>
              <tr>
                <td> 1234-6</td>
                <td> Joanna </td>
                <td> Concepcion </td>
                <td> Odono </td>		
              </tr>
              <tr>
                <td> 1234-5</td>
                <td> Jhon Cedrick </td>
                <td> Macahiya </td>
                <td> Sestoso </td>		
              </tr>
            </tbody>
          </table>
          <!--
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
          -->
        </div>
      </div>
      
      <div id="jhs">
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
          </div>
          <!--
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
          </c:if> -->
        </div>
      </div>
      
      <div id="shs">
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
          <!--
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
        -->
        </div>
      </div>
      
      <div id="college">
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
          <!--
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
          </c:if> -->
        </div>
      </div>
    </div>

    <div class="footer">
      <hr>
      <p> © 2019 Peregrinus School | All Rights Reserved. </p>
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
		  document.getElementById("list").style.display="block";
			 document.getElementById("elem1").style.display="block";
			 document.getElementById("jhs1").style.display="none";
			 document.getElementById("shs1").style.display="none"
		     document.getElementById("college1").style.display="none";
	     	
		  } 
	  
	  function choose_jhsList(){
		  document.getElementById("list").style.display="block";
			 document.getElementById("elem1").style.display="none";
			 document.getElementById("jhs1").style.display="block";
			 document.getElementById("shs1").style.display="none"
		     document.getElementById("college1").style.display="none";
	     	
		  } 
	  
	  function choose_shsList(){
		  document.getElementById("list").style.display="block";
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