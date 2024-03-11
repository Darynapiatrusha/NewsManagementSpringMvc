<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="header-content">
	<div class="heeader-logo">
	<img class="logo" alt="logo" src="<c:url value="/resources/img/logo.png"/>">
	</div>
	<div class="header-name">
		<h2>NEWS MANAGEMENT</h2>
	</div>

	<div class="header-lang" align="right">

		<form action="Controller?command=local" method="post">
			<input type="hidden" name="local" value="ru"/> <input type="submit"
				value="Русский" /><br />
		</form>
		<form action="Controller?command=local" method="post">
			<input type="hidden" name="local" value="en"/> <input type="submit"
				value="Английский" /><br />
		</form>
		<c:if test="${sessionScope.userId != null}">
			<form action="Controller" method="post">
				<input type="hidden" name="command" value="sign_out" /> <input
					type="submit" value="Выйти" /><br />
			</form>
		</c:if>
	</div>
</div>
