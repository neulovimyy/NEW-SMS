<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../common/taglibs.jsp"%>
<style>
input {
	text-transform: lowercase !important;
}
</style>

<section >
	<div class="form-body without-side">
		<div class="row">
			<div class="img-holder">
				<div class="bg"></div>
			</div>
			<div class="form-holder">
				<div class="form-content pt-100">
					<div class="form-items login-box-body">
						
						<form id="login-form" autocomplete="off" action="<c:url value="/j_spring_security_check"/>" method="post" name="loginForm" role="form">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span> <input id="email" type="text" class="form-control" name="j_username" placeholder="username" autocomplete="off" required="true">
							</div>

							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="password" name="j_password" class="form-control" placeholder="password" required="true">
							</div>


							<c:if test="${isError eq true}">
								<div class="error">
									<span>Incorrect email or password.</span>
								</div>
							</c:if>

							<div class="form-button">
								<button id="submit" type="submit" class="background-cornflowerblue col-lg-12 col-md-12 col-sm-12 col-xs-12">Login</button>
							</div>

							<div class="form-button">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span> <input type="reset" name="reset" class="form-control">
							</div>
							<br />
							<br /> <a href="<c:url value="/institute/forgot"/>">Forgot Password?</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
	<%-- <c:if test="${isError eq true}"> --%>
	<%-- <c:if test="true">
		<div id="notif-alert" class="row ml-auto pull-right" style="width: 25%; position: fixed; top: 5px !important; right: 15px !important;">
			<div class="alert-group">
				<div class="alert alert-danger fade in alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<span>Incorrect email or password.</span>
				</div>
			</div>			
		</div>
	</c:if> --%>
	<c:remove var="userSession" />
	<c:remove var="isError" />

<script>
	$(document).ready(function() {
		setTimeout(function() {
			$('input[name="j_username"]').focus();
		}, 500);
	});
</script>