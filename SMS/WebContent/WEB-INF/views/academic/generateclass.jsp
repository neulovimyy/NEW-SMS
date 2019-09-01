<%@include file="../common/taglibs.jsp" %>
	
	<div class = "jumbotron" style = "margin-bottom: 0 px;">
		  <h1 align="center">
				<a class = "header-brand"><img src = "WebContent/theme/xeone/images/logo.png"></a>
					<font face="Palatino Linotype" color="#34495E">
						Academic </font> </h1> </div>
		
		<nav class= "navbar navbar-expand-md navbar-dark bg-primary sticky-top">
			<button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
				<span class="navbar-toggler-icon"> </span> </button>
			
			<div class="collapse navbar-collapse" id="collapse_target">
			
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="home.html"> Home </a> </li>
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="dropdown_target"> 
						Admin
							<span class="caret"></span></a>
								<div class="dropdown-menu" aria-labelledby="dropdown_target">
									<a class="dropdown-item" href="#">
										View Student Status</a> </div> </li>
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="academic"> 
						Faculty 
							<span class = "caret"> </span> </a>
									<div class = "dropdown-menu" aria-labelledby = "academic">
										<a class = "dropdown-item" href="generate.html">Generate Class List</a>
											<div class = "dropdown-divider"></div>
										<a class = "dropdown-item" href="#">Generate Loading Report</a>
											<div class = "dropdown-divider"></div>
										<a class = "dropdown-item" href="encode.html">Encode Grade</a>
											<div class = "dropdown-divider"></div>
										<a class = "dropdown-item" href="#">View Subject Load</a>
											<div class = "dropdown-divider"></div>
										<a class = "dropdown-item" href="#">View Class List</a>
											<div class = "dropdown-divider"></div>
										<a class = "dropdown-item" href="#">Upload Class Record & Modules</a> </div> </li>
				
				<li class = "nav-item dropdown">
					<a class= "nav-link dropdown-toggle" data-toggle="dropdown" data-target="#academic"> 
						Student
							<span class = "caret"> </span> </a>
								<div class = "dropdown-menu" aria-labelledby = "academic">
									<a class = "dropdown-item" href="#">Student Information System</a> </div> <li>
				</ul>
			</div>
		</nav>
		
		<!-- generate start here -->
		<div class="jumbotron"> 
		<div class="row">
			<div class="col-md-6-text-right"> 
					<label for="option1">Academic Level </label>
					<select id="option1">
					<optgroup label="Select one">
						<option>College</option>
						<option>High School</option>
						<option>Elementary
						<option selected></option>
					</optgroup>
				</select>
			</div>

			<div class="col-md-10-text-right">
					<label for="option2">Section </label>
					<select id="option2">
						<optgroup label="Select one">
						<option>1</option>
						<option>2</option>
						<option selected></option>
						</optgroup>
				</select>
			</div>
		</div>		
	</div>
</div>

<script>
	tail.select ('option1',{
		
	})

</script>
		
		
	
	
		<hr color="black" size="1" width="100%"/>
		 <div class="row">
		 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-8">
		 		<h5 align="center"><a href="#about" data-toggle="collapse">About</a> &#9832; 2019 </h5>
		 		<div id="about" class="collapse well hidden-sm hidden-xs">
		 		Student Information System (SIS) is a web-based 
		 		application software designed to introduce a conducive and structured 
		 		information exchange environment for integrating students, parents, 
		 		teachers and the administration of a school or college. Some of the 
		 		other software packages available for this purpose include Student Management System (SMS), 
		 		Student Information Management System (SIMS) and Student Records System (SRS). These software systems enable educational institutions 
		 		to supervise student-related activities such as keeping records of tests or examinations conducted, attendance, appraisal on performance including details of marks scored, particulars of 
		 		everyday school attendance, and all other institution-related activities; in short, they provide a complete student records system. They are designed with diverse application potentials ranging 
		 		from simple management of students records at school to management of all student-related functions as well as administrative functions of a university or a chain of educational establishments.
		 		</div>
				<h6 align="center"></h6>
		 	</div>
	</div>





























