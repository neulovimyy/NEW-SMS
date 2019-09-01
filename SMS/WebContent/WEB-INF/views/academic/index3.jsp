<%@include file="../common/taglibs.jsp" %>
	<section>
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
										<a class = "dropdown-item" href="#">Generate Class List</a>
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
	</section>