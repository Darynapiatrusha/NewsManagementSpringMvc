<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="content">

	<form:form action="editNews" modelAttribute="news" method="POST">
		<form:hidden path="status" value="${news.status}" /> 
		<form:hidden path="id" value="${news.id}" /> 
		
		
		<label>Заголовок</label><br>
		<form:textarea path="title" />
		<form:errors path="title" /><br>
		
		<label>Бриф</label><br> 
		<form:textarea path="brief"	/> <br> 
		
		<label>Контент</label><br>
		<form:textarea path="content" class="contentTextarea" /> <br> 
		
		<input type="submit" value="Редактировать">
	</form:form>

<style>
.error {
	color: red

}
.contentTextarea{
min-height:200px;
}
</style>
</div>

