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
	<section class="content">
		<form:form id="save-student" enctype="multipart/form-data" action="${pageContext.request.contextPath}/institute/dashboard/student/save" commandName="command">
			<div class="col-md-12">
				<div class="page-header">
					<div class="container-fluid"></div>
				</div>				
				<div class="panel panel-inverted">
					<div class="col-lg-2">

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
						<label for="upload" style="cursor: pointer; display: inherit; margin-top: -25px; margin-left: 125px; color: #808080; opacity: 75%;" title="upload image"><i class="fa fa-camera"></i> </label> <input id="upload" type='file' name="studentImageFile" onchange="readURL(this);" class="file-upload_input" accept="image/*" style="display: none;" />
						<!-- <input type="button" value="Upload" class="file-upload_input" onclick="document.getElementById('upload').click();" /> -->

					</div>
				</div>
				<div class="panel-body">
					<c:choose>
						<c:when test="${not empty command.id}">
							<form:hidden path="id" />
							<form:hidden path="studentId" />
						</c:when>
					</c:choose>
					<%-- <c:if test="${not empty acad }">
						<input type="hidden" path="acad" value="${acad}" />
					</c:if> --%>
					<c:if test="${not empty command.studentContentType}">
						<form:hidden path="studentImage" />
						<form:hidden path="studentContentType" />
					</c:if>
					<c:if test="${not empty command.studentContentTypeAcademic}">
						<form:hidden path="studentAcademic" />
						<form:hidden path="studentContentTypeAcademic" />
					</c:if>
					<div class="panel-body">
						<c:choose>
							<c:when test="${not empty command.id}">
								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<form:select path="acad" name="acad" class="form-control" disabled="true">
										<option value="EL">Elementary</option>
										<option value="HS">High School</option>
										<option value="JS">Junior High</option>
										<option value="SH">Senior High</option>
										<option value="CO">College</option>

									</form:select>
								</div>
							</c:when>
							<c:otherwise>
								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<form:select path="acad" name="acad" class="form-control">
										<option value="EL">Elementary</option>
										<option value="HS">High School</option>
										<option value="JS">Junior High</option>
										<option value="SH">Senior High</option>
										<option value="CO">College</option>

									</form:select>
								</div>
							</c:otherwise>
						</c:choose>
						<div class="clearfix"></div>
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">First Name </label>
							<form:input id="firstname" path="firstName" cssClass="form-control" maxLength = "50" />
						</div>

					<div class="panel panel-inverted">
						<div class="col-lg-2 preview-doctor"></div>
						<div class="clearfix"></div>

						<div class="panel-heading">
							<h3 id="text-blue">I. Personal Information</h3>
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
							<input type="hidden" path="acad" value="${acad}" />
						</c:if>
						<c:if test="${not empty command.studentContentType}">
							<form:hidden path="studentImage" />
							<form:hidden path="studentContentType" />
						</c:if>
						<c:if test="${not empty command.studentContentTypeAcademic}">
							<form:hidden path="studentAcademic" />
							<form:hidden path="studentContentTypeAcademic" />
						</c:if>
						<div class="panel-body">
							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">First Name </label>
								<form:input id="firstname" path="firstName" cssClass="form-control" maxLength="50" />
							</div>

							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Middle Name </label>
								<form:input id="middleName" path="middleName" cssClass="form-control" maxLength="50" />
							</div>

							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Last Name </label>
								<form:input id="lastName" path="lastName" maxLength="50" cssClass="form-control" />
							</div>

							<div class="clearfix"></div>

							<div class="form-group col-md-3 col-lg-3 col-sm-9 col-xs-9">
								<label class="control-label">Birth Date</label>
								<form:input id="birthDate" path="birthDate" cssClass="form-control" autocomplete="off" />
							</div>

							<div class="form-group col-md-1 col-lg-1 col-sm-4 col-xs-4">
								<label class="control-label">Age</label>
								<form:input id="birthDate" path="age" placeholder=" " cssClass="form-control maskNumberLimit10 " />
							</div>



							<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
								<label class="control-label">Blood Type</label>
								<form:select path="bloodtype" items="${bloodtypeList}" cssClass="form-control" />
							</div>

							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Gender:</label>
								<form:select path="gender" items="${genderList}" cssClass="form-control" />
							</div>
							<div class="clearfix"></div>


							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Place of Birth</label>
								<form:input id="placeOfBirth" path="placeOfBirth" cssClass="form-control" />
							</div>

							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Nationality</label>
								<form:input id="nationality" path="nationality" cssClass="form-control" />
							</div>

							<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
								<label class="control-label">Civil Status</label>
								<form:select path="civilStatus" items="${civilStatusList}" cssClass="form-control" />
							</div>



							<div class="clearfix"></div>
							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Contact #:</label>
								<form:input id="mobileNum" path="mobileNum" cssClass="form-control maskWholeNumberOnLeft" />
							</div>

							<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
								<label class="control-label">Email Address:</label>
								<form:input path="emailAddress" placeholder=" " cssClass="form-control" />
							</div>

							<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12 dropdown-input">
								<label class="control-label">Religion</label>
								<form:select path="religion" items="${religionList}" cssClass="form-control" />
							</div>

							<div class="clearfix"></div>
							<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
								<label class="control-label">Present Address </label>
								<form:textarea rows="2" id="presentAddress" path="presentAddress" cssClass="form-control" maxLength="255" />
							</div>
							<div class="form-group col-md-6 col-lg-6 col-sm-12 col-xs-12">
								<label class="control-label">Permanent Address </label>
								<form:textarea rows="2" id="permanentAddress" path="permanentAddress" cssClass="form-control" maxLength="255" />
							</div>
							<div class="clearfix"></div>

							<div class="form-group col-md-3 col-lg-3 col-sm-12 col-xs-12">
								<label for="upload" title="upload image"><i class="fa fa-book"></i> Upload academic records</label> <input id="" type='file' name="studentAcademicFile" class="file-upload_input" accept="application/*" />
								<c:if test="${not empty command.id}">
									<c:if test="${not empty command.studentContentTypeAcademic}">
										<a href="${pageContext.request.contextPath}/student/document?id=${command.id}"> Download </a>
									</c:if>
								</c:if>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="box box-primary">
										<div class="box-header with-border pull-right"></div>
										<div class="box-body">
											<h3>II. Education Background</h3>
											<div class="row">
												<div class="col-lg-12" id="educbg-table-body">
													<div class="form-group col-lg-2 col-md-2">
														<label class="control-label">Level</label>
													</div>
													<div class="form-group col-lg-2 col-md-2">
														<label class="control-label">Name of School</label>
													</div>
													<div class="form-group col-lg-2 col-md-2">
														<label class="control-label">Year graduated</label>
													</div>
													<div class="form-group col-lg-2 col-md-2">
														<label class="control-label">Inclusive dates</label>
													</div>
													<div class="form-group col-lg-2 col-md-2">
														<label class="control-label">Address</label>
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
																		<input type="hidden" value="${obj.educId}" class="form-control educId" /> <input type="hidden" name="educId" value="${obj.educId}" class=" form-control educId" /> <input type="hidden" value="${obj.student}" class="form-control sss" />
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
								<div class="panel-heading box box-primary">
									<h3 class="redcolor">III. Family Background</h3>
								</div>


								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Mother's Name:</label>
									<form:input path="motherName" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Father's Name:</label>
									<form:input path="fatherName" placeholder=" " cssClass="form-control" />
								</div>


								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Guardian's Name:</label>
									<form:input path="guardianName" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Mother's Occupation:</label>
									<form:input path="motherOccupation" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Father's Occupation:</label>
									<form:input path="fatherOccupation" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Guardian's Occupation:</label>
									<form:input path="motherAddress" placeholder=" " cssClass="form-control" />
								</div>


								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Mother's Contact#:</label>
									<form:input path="motherPhone" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Father's Contact#:</label>
									<form:input path="fatherPhone" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
									<label class="control-label">Guardian's Contact#:</label>
									<form:input path="guardianPhone" placeholder=" " cssClass="form-control" />
								</div>

								<div class="form-group col-md-12 col-lg-12 col-sm-12 col-xs-12">
									<label class="control-label">Home Address:</label>
									<form:input path="motherAddress" placeholder=" " cssClass="form-control" />
								</div>


							</div>

							<div class="clearfix"></div>
							<div class="form-group" style="text-align: right; padding-right: 15px;">
								<button type="submit" class="btn btn-submit btn-primary text-center">
									<i class="fa fa-save fa-fw"></i> SAVE
								</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</form:form>
	</section>
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
	
</script>

