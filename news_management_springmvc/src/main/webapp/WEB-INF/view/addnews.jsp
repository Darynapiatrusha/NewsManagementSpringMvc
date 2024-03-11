<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>News Management</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/styles.css"/>" />
</head>
</head>
<body>
	<div class="header">
		<c:import url="/WEB-INF/view/layers/header.jsp" />
	</div>
	<div class="main-container">
		<c:import url="/WEB-INF/view/layers/menu.jsp" />
		<c:import url="/WEB-INF/view/layers/news_add.jsp" />
	</div>
</body>
</html>