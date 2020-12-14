
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
</head>
<body>
	
	<div class="offset-md-4 container-fluid">
	
		<div class="row">
			<div class="col-md-4">
				<form:form action="/login" 
				method="POST" class="form">
				<c:if test="${param.error != null}">
					Invalid Credentials! Access Denied!
				</c:if>
				<input type="hidden" name="${_csrf.parameterName}"	
						value="${_csrf.token}" />
				<div class="form-control-group">
					<form:errors path="*"/>				
				</div>
				<div class="form-control-group">
					<label class="form-control-label">UserName: </label>
					<input class="form-control" type="text" name="unm" />
				</div> 
				<div class="form-control-group">
					<label class="form-control-label">Password: </label>
					<input class="form-control" type="password" name="pwd" />
				</div>					 
				
					<button class="btn btn-primary">LOGIN</button>
				
				
					
				
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>