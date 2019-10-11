<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="taglibs.jsp"%>
<section>

<section>
<h3 class="text-center font-bold pt-25">
	WELCOME TO PEREGRINUS STUDENT DATABASE!
</h3>
</section>


<nav class="nav">
	<ul class="nav navbar-nav text-black pl-420">
		<li>
			<a class="navbar-brand text-black bg-cornflowerblue" href="${pageContext.request.contextPath}/institute/">Home</a>
		</li>
	</ul>
	<ul class="nav navbar-nav">
		<li class="active"> 
			<a class="text-black bg-cornflowerblue" href="${pageContext.request.contextPath}/institute/dashboard/student/home.html">Student Record</a> 
		</li>
	</ul>
	<ul class="nav navbar-nav">
		<li> 
			<a class="text-black bg-cornflowerblue">Message</a> 
		</li>
	</ul>
	<ul class="nav navbar-nav">
		<li>
			<a class="text-black bg-cornflowerblue">Schedule</a> 
		</li>
	</ul>
	<ul class="nav navbar-nav">
		<li>
			<a href="${pageContext.request.contextPath }/institute/dashboard/curriculum/view" class="text-black bg-cornflowerblue">Add Curriculum/s</a>
		</li>
	</ul>
	<ul class="nav navbar-nav">
		<li>
			<a href="${pageContext.request.contextPath}/institute/"class="text-black bg-cornflowerblue">Log Out</a>
		</li>
	</ul>
</nav>
</section>

<div class="pb-50"></div>