<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="content">

	<form:form action="addNews" modelAttribute="news" method="post">
		<form:hidden path="status" value="active" /> 
		
		 <label><c:out value="Заголовок" /></label><br>
		<form:textarea class="titleTextarea" path="title"  />
		<form:errors path="title" cssClass="error"/><br> 
		
		<label><c:out value="Бриф" /></label><br> 
		<form:textarea path="brief" class="briefTextarea"  /><br> 
		
		<label><c:out value="Контент" /></label><br>
		<form:textarea path="content" class="contentTextarea" /><br> 
		
		<input type="submit" value="Добавить">
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

