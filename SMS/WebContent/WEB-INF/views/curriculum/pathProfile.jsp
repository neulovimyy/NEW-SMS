<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>

<div class="content-wrapper">
	<section class="content"> 
		<form:form id="save-student" enctype="multipart/form-data" action="${pageContext.request.contextPath}/institute/dashboard/path/save" commandName="curriculumCommand">
			<div class="col-md-12">
				<div class="page-header">
					<div class="container-fluid"></div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<h2>Add Curriculum Path</h2>
					</div>
					<c:choose>
						<c:when test="${not empty curriculumCommand.id}">
							<form:hidden path="id" />
							
						</c:when>
					</c:choose>
					<input type="hidden" name="path.id" value="${pathid}" />
					<div class="panel-body">
						<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
							<label class="control-label">Curriculum Path Name: </label>
							<form:input id="name" path="name" cssClass="form-control" placeholder="Enter curriculum name..." />
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
		</form:form> 
	</section>
</div>