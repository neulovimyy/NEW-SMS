<%@include file="../common/taglibs.jsp" %>

<div class="container">
	  	<h1 align="center">
			<font face="Palatino Linotype" color="#34495E">
			Welcome to the Student Database
			</font>
		</h1>
	</div>

	<div class="jumbotron">
	    <h2 align="center"><a class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/student/students"><i class="glyphicon glyphicon-cloud"></i> Show Students</a></h2>
	    <h2 align="center"><a class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/student/add"><i class="glyphicon glyphicon-cloud"></i> Add Students</a></h2>
	</div>
	 
	<!-- <form method="post" action="students.html">
		<font face="Courier New">
			<input type="submit" value="Show database  " /><br /><br />
		</font>
	</form>  add form code  http://localhost:8080/Spring3/addData.html-->
	
	<!-- 
	<form method="post" action="add.html" >
		<font face="Courier New">
			<input type="submit" value="Add to database"/><br /><br />
		</font>
	</form>
	 -->
	<hr color="black" size="1" width="100%" />
	 <div class="row">
	 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-8">
	 		<h5 align="center"><a href="#about" data-toggle="collapse">About</a> &#9832; 2018
	 		</h5>
	 		<div id="about" class="collapse well hidden-sm hidden-xs">
	 		Student Information System (SIS) is a web-based 
	 		application software designed to introduce a conducive and structured 
	 		information exchange environment for integrating students, parents, 
	 		teachers and the administration of a school or college. Some of the 
	 		other software packages available for this purpose include Student Management System (SMS), 
	 		Student Information Management System (SIMS) and Student Records System (SRS). These software systems enable educational institutions 
	 		to supervise student-related activities such as keeping records of tests or examinations conducted, attendance, appraisal on performance including details of marks scored, particulars of 
	 		everyday school attendance, and all other institution-related activities; in short, they provide a complete student records system. They are designed with diverse application potentials ranging 
	 		from simple management of students’ records at school to management of all student-related functions as well as administrative functions of a university or a chain of educational establishments.
	 		</div>
			<h6 align="center"></h6>
	 	</div>
</div>
