<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>

<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#image-profile').attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

	$(document).ready(function() {
		/* $("#upload").change(function() {
			//this.form.submit();
		}); */
	});
</script>

<div class="content-wrapper">
	<section class="content"> <form:form id="save-student" enctype="multipart/form-data" action="${pageContext.request.contextPath}/student/save" commandName="command">
		<div class="col-md-12">
			<%-- enctype="multipart/form-data" --%>
			<div class="page-header">
				<div class="container-fluid"></div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading text-center">
					<h2>Add Student Data</h2>
				</div>
				<div class="col-lg-2 preview-doctor">
					<c:choose>
						<c:when test="${not empty command.studentContentType}">
							<img id="image-profile" src="<c:url value="${command.studentPicture}"/>" alt="your image" width="140" height="140" class="" style="border-radius: 50%;" />
						</c:when>
						<c:otherwise>
							<img id="image-profile" src="<c:url value="/image/default.jpeg"/>" alt="your image" width="140" height="140" class="" style="border-radius: 50%;" />
						</c:otherwise>
					</c:choose>
					<label for="upload" style="cursor: pointer; display: inherit; margin-top: -25px; margin-left: 125px; color: #808080; opacity: 75%;" title="upload image"><i class="fa fa-camera"></i> </label> <input id="upload" type='file' name="studentImageFile" onchange="readURL(this);" class="file-upload_input" accept="image/*" />
				</div>
				<div class="panel panel-inverted">
					<div class="panel-heading">
						<h3>I. Personal Information</h3>
					</div>
				</div>
				<div class="panel-body">
					<c:choose>
						<c:when test="${not empty command.id}">
							<form:hidden path="id" />
							<form:hidden path="studentId" />
						</c:when>
					</c:choose>
					<c:if test="${not empty acad }">
						<form:hidden path="acad" value="${acad}" />
					</c:if>
					<c:if test="${not empty command.studentContentType}">
						<form:hidden path="studentImage" />
						<form:hidden path="studentContentType" />
					</c:if>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">First Name </label>
						<form:input id="firstname" path="firstName" cssClass="form-control" placeholder="Enter first name..." />
					</div>
<<<<<<< Updated upstream
=======
					<div class="panel-body">
						<c:choose>
							<c:when test="${not empty command.id}">
								<form:hidden path="id" />
								<form:hidden path="studentId" />
							</c:when>
						</c:choose>

						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">First Name </label>
							<form:input id="firstname" path="firstName" cssClass="form-control" placeholder="Enter first name..." />
						</div>
>>>>>>> Stashed changes

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Middle Name </label>
						<form:input id="middleName" path="middleName" cssClass="form-control" placeholder="Enter first name..." />
					</div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Last Name </label>
						<form:input id="lastName" path="lastName" placeholder="Enter last name..." cssClass="form-control" />
					</div>

					<div class="clearfix"></div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Birth Date</label>
						<form:input id="birthDate" path="birthDate" placeholder="MM/DD/YY" cssClass="form-control" />
					</div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Gender:</label>
						<form:select path="gender" items="${genderList}" cssClass="form-control" />
					</div>

					<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
						<label class="control-label">Civil Status</label>
						<form:select path="civilStatus" items="${civilStatusList}" cssClass="form-control" />
					</div>
					<div class="clearfix"></div>
					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Contact #:</label>
						<form:input id="mobileNum" path="mobileNum" placeholder="Enter contact number..." cssClass="form-control" />
					</div>

					<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
						<label class="control-label">Email Address:</label>
						<form:input path="emailAddress" placeholder="Enter email address..." cssClass="form-control" />
					</div>

					<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
						<label class="control-label">Religion</label>
						<form:select path="religion" items="${religionList}" cssClass="form-control" />
					</div>

					<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
						<label class="control-label">Blood Type</label>
						<form:select path="bloodtype" items="${bloodtypeList}" cssClass="form-control" />
					</div>

					<div class="clearfix"></div>
					<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
						<label class="control-label">Present Address </label>
						<form:textarea rows="2" id="presentAddress" path="presentAddress" cssClass="form-control" maxLength="255" />
					</div>
					<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
						<label class="control-label">Permanent Address </label>
						<form:textarea rows="2" id="presentAddress" path="permanentAddress" cssClass="form-control" maxLength="255" />
					</div>
					
					<div class="row">
						<div class="col-lg-12">
							<div class="box box-primary">
								<div class="box-header with-border pull-right">
									
								</div>
								<div class="box-body">
									<h3>II. Education Background</h3>
									<!-- <table width="100%" cellspacing="20%" border="1">
								<th>Level</th>
								<th>Name of School</th>
								<th>Year Graduated</th>
								<th>Inclusive Date<br> of Attendance</th>
								<th>Scholarship Academic Records</th>



							</table> -->
									<div class="row">
										<div class="col-lg-12" id="educbg-table-body">
											<div class="form-group col-lg-2 col-md-2">
												<label class="control-label">Level</label>
											</div>
											<div class="form-group col-lg-2 col-md-2">
												<label class="control-label">Name of School</label>
											</div>
											<div class="form-group col-lg-2 col-md-2">
												<label class="control-label">Year graduateed</label>
											</div>
											<div class="form-group col-lg-2 col-md-2">
												<label class="control-label">Inlusive dates</label>
											</div>
											<div class="form-group col-lg-2 col-md-2">
												<label class="control-label">address</label>
											</div>
											<div class="form-group col-lg-1 col-md-1">
												<label class="control-label">Honor</label>
											</div>
											<div class="form-group col-lg-1 col-md-1">
												<label class="control-label">Action</label>
											</div>
											<div class="scrollable col-lg-12 col-md-12" id="scrollbar">
												<c:if test="${not empty command.educationalBackground}">
													<c:forEach items="${command.educationalBackground}" var="obj">
														<div class="educ-table">
															<div class="row">
																<div class="form-group col-md-2 col-lg-2">
																	<input value="${obj.schoolLevel}" Class="form-control schoolLevel" />
																</div>
																<div class="form-group col-md-2 col-lg-2">
																	<input value="${obj.schoolName}" class="form-control schoolName" />
																</div>
																<div class="form-group col-md-2 col-lg-2">
																	<input value="${obj.years}" class="form-control years" />
																</div>
																<div class="form-group col-md-2 col-lg-2">
																	<input value="${obj.inclusiveDates}" class="form-control inclusiveDates" />
																</div>
																<div class="form-group col-md-2 col-lg-2">
																	<input value="${obj.address}" class="form-control schoolAddress" />
																</div>
																<div class="form-group col-md-2 col-lg-1">
																	<input value="${obj.honor}" class="form-control honors" />
																</div>
																	<input type="hidden" value="${obj.educId}" class="form-control educId" />
																
																<input type="hidden" name="educId" value="${obj.educId}" class=" form-control educId"/>
																<input type="hidden" value="${obj.student}" class="form-control sss"/>
																<%-- <input type="hidden" name="idTable" value="${id}" class=" form-control id" /> <input type="hidden" name="detailsId" value="${obj.detailsId}" class=" form-control detailsId" /> <input type="hidden" value="${obj.sss}" class="form-control sss" /> --%>

																<div class="form-group col-md-1 col-lg-1">
																	<a class="btn btn-danger glyphicon glyphicon-remove delete-data" href="" data-href="${pageContext.request.contextPath}/student/delete/${command.id}?educId=${obj.educId}" data-toggle="modal" data-target="#confirm"> </a>
																</div>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer pull-right">
									<button id="add-educbg-template" type="button" class="btn btn-primary">Add</button>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-inverted">
						<div class="panel-heading">
							<h3 class="redcolor">III. Family Background</h3>
						</div>
					</div>

					<div class="clearfix"></div>
					<div class="form-group" style="text-align: right; padding-right: 15px;">
						<button type="submit" class="btn btn-submit btn-primary text-center">
							<i class="fa fa-save fa-fw"></i> SAVE
						</button>
					</div>
					<input type="text" id="demo" name="demo">
				</div>
			</div>
		</div>
	</form:form> </section>
</div>

<!-- Ito ung div na nakahide, pag pinindot yung add mag-aappend to dun sa taas!!!  -->
<div id="educbg-table-template" class="hide">
	<div class="educbg-table">
		<div class="row">
			<div class="form-group col-md-2 col-lg-2">
				<input class="form-control schoolLevel" />
			</div>
			<div class="form-group col-md-2 col-lg-2">
				<input class="form-control schoolName" />
			</div>
			<div class="form-group col-md-2 col-lg-2">
				<input class="form-control years" />
			</div>
			<div class="form-group col-md-2 col-lg-2">
				<input class="form-control inclusiveDates" />
			</div>
			<div class="form-group col-md-2 col-lg-2">
				<input class="form-control schoolAddress" />
			</div>
			<div class="form-group col-md-1 col-lg-1">
				<input class="form-control honors" />
			</div>
			<div class="form-group col-md-1 col-lg-1">
				<button type="button" class='btn btn-danger glyphicon glyphicon-remove delete-educbg-template'></button>
			</div>
		</div>
	</div>
</div>


<script src=<c:url value="/js/student.js"/>></script>
<script>
	$(document).ready(function() {
		var today = new Date();
		var year = today.getFullYear();
		$('#demo').val(year);

	});
</script>

