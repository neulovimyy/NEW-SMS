<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>
<form:form method="POST" action="${pageContext.request.contextPath }/institute/dashboard/student/add" commandName="command">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading text-center">
				<h3>Select Academic Level</h3>
			</div>
			<div class="panel-body">
				<div class="form-group col-md-4 col-lg-4 col-sm-12 col-xs-12">
					<form:select path="acad" name="acad" class="form-control">
						<option value="EL">Elementary</option>
						<option value="HS">High School</option>
						<option value="JS">Junior High</option>
						<option value="SH">Senior High</option>
						<option value="CO">College</option>

					</form:select>
				</div>
				<div class="clearfix"></div>
				<div class="form-group" style="padding-left:15px;">
					<button type="submit" class="btn btn-submit btn-primary text-center">
						<i class="fa fa-save fa-fw"></i> Submit
					</button>
				</div>
			</div>
		</div>
	</div>
</form:form>