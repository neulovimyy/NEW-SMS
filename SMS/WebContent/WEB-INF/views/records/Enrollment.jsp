<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>



<html>
	<head>
		<spring:url value="/css/RecordAndReport/Enrollment.css" var="enrollmentCss" />
		<link href="${enrollmentCss}" rel="stylesheet" >
		<script src=<c:url value="/js/Report/sample.js"/>></script> 
	</head>
	<body>
		<!-- Enrollment Page -->
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
	          <button>
	            <div class="elem">
	              <i class="fas fa-pencil-alt"></i>
	            </div>
	            <b>${count}</b> <br> Elementary Students
	          </button>
	        </div>
	
	        <div class="col-sm-3 col-md-3 col-lg-3">
	          <button>
	            <div class="jhs">
	              <i class="fas fa-apple-alt"></i>
	            </div>
	            <b> ${countJHS}</b> <br> Junior High School Students
	          </button>
	        </div>
	
	        <div class="col-sm-3 col-md-3 col-lg-3">
	          <button>
	            <div class="shs">
	                <i class="fas fa-lightbulb"></i>
	            </div>
	            <b> ${countSHS} </b> <br> Senior High School Students
	          </button>
	        </div>
	
	        <div class="col-sm-3 col-md-3 col-lg-3">
	          <button>
	            <div class="college">
	              <i class="fas fa-graduation-cap"></i>
	            </div>
	            <b> ${countCollege} </b> <br> College Students
	          </button>
	        </div>
	      </div>
	    </div>
		
		    <div class="result">
		      <div class="label">
		        <b>Enrollment Status</b>
		      </div>
		
		      <table id="Table">
		        <tr>
		        <th onclick="sortTable(0)">Student No.</th>
		        <th onclick="sortTable(1)">Name</th>
		        <th onclick="sortTable(2)">Educational Stage</th>
		        <th onclick="sortTable(3)">Status</th>
		        <th onclick="sortTable(4)">Validation</th>
		      </tr>
		        <tr>
		          <td>2015-00484-MN-0</td>
		          <td>Charlon Notario Cervas</td>
		          <td>College</td>
		          <td>New</td>
		          <td>Approved</td>
		        </tr>
		        <tr>
		          <td>2015-03422-MN-0</td>
		          <td>Jhon Cedrick Macahiya Sestoso</td>
		          <td>College</td>
		          <td>Old</td>
		          <td>Subject to review</td>
		        </tr>
		        <tr>
		          <td>2015-52154-MN-0</td>
		          <td>Joanna Mae Concepcion Odoño</td>
		          <td>Senior High School</td>
		          <td>New</td>
		          <td>Approved</td>
		        </tr>
		        <tr>
		          <td>2015-04423-MN-0</td>
		          <td>Marvin Abrigo Peralta</td>
		          <td>Elementary</td>
		          <td>Old</td>
		          <td>Denied</td>
		        </tr>
		        <tr>
		          <td>2015-04963-MN-0</td>
		          <td>Michaella Pole Dela Cruz</td>
		          <td>Elementary</td>
		          <td>Old</td>
		          <td>Denied</td>
		        </tr>
		        <tr>
		          <td>2015-04253-MN-0</td>
		          <td>Precious Anne Sumanting Babaran</td>
		          <td>College</td>
		          <td>Old</td>
		          <td>Approved</td>
		        </tr>
		        <tr>
		          <td>2015-04733-MN-0</td>
		          <td>Victor Morilla</td>
		          <td>Senior Highschool</td>
		          <td>New</td>
		          <td>Denied</td>
		        </tr>
		        <tr>
		          <td>2015-04463-MN-0</td>
		          <td>Paul Benedict Nadonga</td>
		          <td>Highshool</td>
		          <td>Old</td>
		          <td>Subject to review</td>
		        </tr>
		        <tr>
		          <td>2015-04453-MN-0</td>
		          <td>Joshua Soco Jose</td>
		          <td>Elementary</td>
		          <td>New</td>
		          <td>Approved</td>
		        </tr>
		        <tr>
		          <td>2015-14453-MN-0</td>
		          <td>Jane Doe</td>
		          <td>College</td>
		          <td>Old</td>
		          <td>Pending</td>
		        </tr>
		        <tr>
		          <td>2015-04453-MN-0</td>
		          <td>John Doe</td>
		          <td>Senior Highschool</td>
		          <td>New</td>
		          <td>Denied</td>
		        </tr>
		      </table>
		      <script>
		        function sortTable(n) {
		          var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
		          table = document.getElementById("Table");
		          switching = true;
		          // Set the sorting direction to ascending:
		          dir = "asc";
		          /* Make a loop that will continue until
		          no switching has been done: */
		          while (switching) {
		            // Start by saying: no switching is done:
		            switching = false;
		            rows = table.rows;
		            /* Loop through all table rows (except the
		            first, which contains table headers): */
		            for (i = 1; i < (rows.length - 1); i++) {
		              // Start by saying there should be no switching:
		              shouldSwitch = false;
		              /* Get the two elements you want to compare,
		              one from current row and one from the next: */
		              x = rows[i].getElementsByTagName("TD")[n];
		              y = rows[i + 1].getElementsByTagName("TD")[n];
		              /* Check if the two rows should switch place,
		              based on the direction, asc or desc: */
		              if (dir == "asc") {
		                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
		                  // If so, mark as a switch and break the loop:
		                  shouldSwitch = true;
		                  break;
		                }
		              } else if (dir == "desc") {
		                if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
		                  // If so, mark as a switch and break the loop:
		                  shouldSwitch = true;
		                  break;
		                }
		              }
		            }
		            if (shouldSwitch) {
		              /* If a switch has been marked, make the switch
		              and mark that a switch has been done: */
		              rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
		              switching = true;
		              // Each time a switch is done, increase this count by 1:
		              switchcount ++;
		            } else {
		              /* If no switching has been done AND the direction is "asc",
		              set the direction to "desc" and run the while loop again. */
		              if (switchcount == 0 && dir == "asc") {
		                dir = "desc";
		                switching = true;
		              }
		            }
		          }
		        }
		      </script>
		    </div>
		
		    <div class="footer">
		      <hr>
		      <p> © 2019 Peregrinus School | All Rights Reserved. </p>
		    </div>
		  </div>
		</div>
	</body>
 </html>