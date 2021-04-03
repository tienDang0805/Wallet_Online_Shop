<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Project </title>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/css.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/bootstrap.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/slick-theme.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/nouislider.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/font-awesome.min.css"/>"/>
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/user/css/style.css"/>"/>
	<style>
		*[id$=errors] {
			color: red;
		}
		
		.loginForm {
		  float: left;
		  padding: 10px;
		  margin-top: 150px;
		  margin-left: 150px;
		}
		
		.loginForm  input{
		  padding: 10px;
		  margin: 10px;
		  width: 250%;
		}
		
		.loginForm button {
		  padding: 10px;
		  width: 200px;
		  margin-top: 20px;
		  margin-left: 95%;
		}
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp" %>
	<!-- REGISTER FORM-->
	<div class="container">
		<c:url var="url" value="/newRegister.htm"/>
		<form:form action="${url }" modelAttribute="user" class="registerForm">
			<div>
				<label>*Tên đăng nhập</label>
				<input id="usernameRegister" name="username" type="text" /> 
				<form:errors path="username"/>
			</div>
			
			<div>
				<label>*Mật khẩu</label> 
				<input type="password" name="password" id="passwordRegister">
				<input type="password" name="password1" id="passwordRegister1"> 
				<form:errors path="password"/>
			</div>
			
			<div>
				<label>*Email</label> 
				<input type="text" name="email" id="txtGmail">
				<form:errors path="email"/>
			</div>
			
			<button class="btn btn-info btn-lg">Register</button>
		</form:form>
	</div>
	<!-- END REGISTER FORM-->
	<%@include file="/WEB-INF/views/user/footer.jsp" %>
	
	<!-- jQuery Plugins -->
	<script src="<c:url value="resources/user/js/jquery.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/slick.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/nouislider.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/jquery.zoom.min.js"/>"></script>
	<script src="<c:url value="resources/user/js/main.js"/>"></script>

</body>
</html>