<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Регистрация - news management</title>
</head>
<body>
	<div class="header">
		<c:import url="/WEB-INF/view/layers/header.jsp" />
	</div>
	
	<c:if test="${not empty param.error_message}">
		<div class="info-message">
			<p>Ошибка при регистрации, попробуйте еще раз!</p>
		</div>
	</c:if>
	
	<div class="registration-container">
		<div class="frame">
			<h1><c:out value="Регистрация" /></h1>
			<form name="registration" action="loginForm" method="post">
				<input type="hidden" name="command" value="registration">
				
				<label><b><c:out value="Имя" /></b></label><br>
				<input type="text" name="name" required>
				
				<label><b><c:out value="Фамилия" /></b></label><br>
				<input type="text" name="surname" required><br> 
				
				<label><b><c:out value="e-mail" /></b></label><br>
				<input type="text" name="email" required> 
				
				<label><b><c:out value="Логин" /></b></label><br>
				<input type="text" name="login" required>

				<label><b>Пароль</b></label><br>
				<input type="password" name="password" required><br>
				
				<div class="authorization-btn">
					<a href="authPage/showAuthForm">Уже есть аккаунт?</a>
				</div>
				
				<input type="submit" class=btn value=<c:out value="Зарегистрироваться" />> <br>
			</form>
		</div>
	</div>
</body>
<style>
<%@include file='/resources/css/styles.css' %>
</style>
</html>