<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; pageEncoding=UTF-8"%>
<%@include file="../common/taglibs.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<spring:url value="/resources/js/res.js" var="resJs" /> 
		<spring:url value="/css/RecordAndReport/allStudent.css" var="allStudentCss" />	
		<link href="${pageContext.request.contextPath}/theme1/themejs/res.js" rel="stylesheet">
		<link href="${allStudentCss}" rel="stylesheet">
		<spring:url value="/css/RecordAndReport/fontawesome.css" var="allFontCss" />
		<link href="${allFontCss}" rel="stylesheet">
	
	</head>

	<body>
		<!-- Student Record Page -->
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
		        <form action="elemRec.html" method="get">
		          <button type ="submit">
		            <div class="elem">
		              <i class="fas fa-pencil-alt"></i>
		            </div>
		            <b> ${count}</b> <br> Elementary Students
		          </button>
		          </form>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		        <form action="jhsRec.html" method="get">
		          <button type="submit">
		            <div class="jhs">
		              <i class="fas fa-apple-alt"></i>
		            </div>
		            <b> ${countJHS}</b> <br> Junior High School Students
		          </button>
		          </form>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		        <form action="shsRecords.html" method="get">
		          <button type="submit">
		            <div class="shs">
		                <i class="fas fa-lightbulb"></i>
		            </div>
		            <b> ${countSHS} </b> <br> Senior High School Students
		          </button>
		          </form>
		        </div>
		
		        <div class="col-sm-3 col-md-3 col-lg-3">
		        <form action="colRec.html" method="get">
		          <button type="submit">
		            <div class="college">
		              <i class="fas fa-graduation-cap"></i>
		            </div>
		            <b> ${countCollege} </b> <br> College Students
		          </button>
		          </form>
		        </div>
		      </div>
		    </div>
		
		    <div class="result">
				<div class="label">
				  <b> JHS Students </b>
				</div>

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
		              <option value="null" >Grade Level</option>
		              <option value="gradeOne" >1</option>
		              <option value="gradeTwo">2</option>
		              <option value="gradeThree">3</option>
		              <option value="gradeFour">4</option>
		              <option value="gradeFive">5</option>
		              <option value="gradeSix">6</option>
		            </select>
		          </div>
		          
		          <div class="col-sm-2 col-md-2 col-lg-2">
		            <select id="elemsection" name="sectionLevel">
		              <option value="null">Section </option>
		              <option value="sec1">1</option>
		              <option value="sec2">2</option>
		              <option value="sec3">3</option>
		              <option value="sec4">4</option>
		              <option value="sec5">5</option>
		            </select>
		          </div>
		                            
		          <div class="col-sm-2 col-md-2 col-lg-2">
		            <select class= "levelOption" id="elemAcademicYear">
		              <option value="null">Academic Year</option>
		              <option value="allYears" >ALL</option>
		              <option value="1920" >SY 2019-2020</option>
		              <option value="2021">SY 2020-2021</option>
		              <option value="2122" >SY 2021-2022</option>
		              <option value="2223">SY 2022-2023</option>
		              <option value="2324">SY 2023-2024</option>
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
		          
		          <div class="col-sm-1 col-md-1 col-lg-1">
		           <div class="sort">
		           	<b> Sort by: </b>
		           </div>
		          </div>
		          
		          <div class="col-sm-1 col-md-1 col-lg-1">
		<div class="form-group"> 	<!-- Show Numbers Of Rows -->
				<select class  ="form-control" name="state" id="maxRows">
					<option value="5000">All rows</option>
					<option value="5">5</option>
					<option value="10">10</option>
					<option value="15">15</option>
					<option value="20">20</option>
					<option value="50">50</option>
					<option value="70">70</option>
					<option value="100">100</option>
				</select>
			</div>
		</div>
		         
		         </div>
		       </div>
				          
		          <c:if test="${!empty student}">         
		            <table class="table table-striped table-class" id= "table-id">
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
				
				<div class="page">
					<div class='pagination-container'>
						<nav>
					  		<ul class="pagination">
				         				<li data-page="prev">
									<span> < <span class="sr-only">(current)</span></span>
								</li>
					   			<!--	Here the JS Function Will Add the Rows -->
				     					<li data-page="next" id="prev">
									<span> > <span class="sr-only">(current)</span></span>
								</li>
					  		</ul>
						</nav>
					</div>
				</div>

		        <script type="text/javascript">
    getPagination('#table-id');
	//getPagination('.table-class');
	//getPagination('table');

/*					PAGINATION 
- on change max rows select options fade out all rows gt option value mx = 5
- append pagination list as per numbers of rows / max rows option (20row/5= 4pages )
- each pagination li on click -> fade out all tr gt max rows * li num and (5*pagenum 2 = 10 rows)
- fade out all tr lt max rows * li num - max rows ((5*pagenum 2 = 10) - 5)
- fade in all tr between (maxRows*PageNum) and (maxRows*pageNum)- MaxRows 
*/

function getPagination (table){

var lastPage = 1 ; 

$('#maxRows').on('change',function(evt){
//$('.paginationprev').html('');						// reset pagination 


lastPage = 1 ; 
$('.pagination').find("li").slice(1, -1).remove();
var trnum = 0 ;									// reset tr counter 
var maxRows = parseInt($(this).val());			// get Max Rows from select option

if(maxRows == 5000 ){

	$('.pagination').hide();
}else {
	
	$('.pagination').show();
}

var totalRows = $(table+' tbody tr').length;		// numbers of rows 
$(table+' tr:gt(0)').each(function(){			// each TR in  table and not the header
	trnum++;									// Start Counter 
	if (trnum > maxRows ){						// if tr number gt maxRows
		
		$(this).hide();							// fade it out 
	}if (trnum <= maxRows ){$(this).show();}// else fade in Important in case if it ..
});											//  was fade out to fade it in 
if (totalRows > maxRows){						// if tr total rows gt max rows option
	var pagenum = Math.ceil(totalRows/maxRows);	// ceil total(rows/maxrows) to get ..  
												//	numbers of pages 
	for (var i = 1; i <= pagenum ;){			// for each page append pagination li 
	$('.pagination #prev').before('<li data-page="'+i+'">\
				      <span>'+ i++ +'<span class="sr-only">(current)</span></span>\
				    </li>').show();
	}											// end for i 
} 												// end if row count > max rows
$('.pagination [data-page="1"]').addClass('active'); // add active class to the first li 
$('.pagination li').on('click',function(evt){		// on click each page
evt.stopImmediatePropagation();
evt.preventDefault();
var pageNum = $(this).attr('data-page');	// get it's number

var maxRows = parseInt($('#maxRows').val());			// get Max Rows from select option

if(pageNum == "prev" ){
	if(lastPage == 1 ){return;}
	pageNum  = --lastPage ; 
}
if(pageNum == "next" ){
	if(lastPage == ($('.pagination li').length -2) ){return;}
	pageNum  = ++lastPage ; 
}

lastPage = pageNum ;
var trIndex = 0 ;							// reset tr counter
$('.pagination li').removeClass('active');	// remove active class from all li 
$('.pagination [data-page="'+lastPage+'"]').addClass('active');// add active class to the clicked 
// $(this).addClass('active');					// add active class to the clicked 
 $(table+' tr:gt(0)').each(function(){		// each tr in table not the header
 	trIndex++;								// tr index counter 
 	// if tr index gt maxRows*pageNum or lt maxRows*pageNum-maxRows fade if out
 	if (trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)){
 		$(this).hide();		
 	}else {$(this).show();} 				//else fade in 
 }); 										// end of for each tr in table
	});										// end of on click pagination list

}).val(5).change();

								// end of on select change 



				// END OF PAGINATION 
}	







$(function(){
// Just to append id number for each row  
	$('table tr:eq(0)').prepend('<th> ID </th>')

	var id = 0;

	$('table tr:gt(0)').each(function(){	
		id++
		$(this).prepend('<td>'+id+'</td>');
	});
})

</script>
		
		    <div class="footer">
		      <hr>
		      <p> � 2019 Peregrinus School | All Rights Reserved. </p>
		    </div>
		
		  </div>
		</div>
	</body>
</html>