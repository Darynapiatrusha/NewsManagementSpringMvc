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
<body>
	<div class="header">
		<c:import url="/WEB-INF/view/layers/header.jsp" />
	</div>
	<div class="main-container">
		<c:import url="/WEB-INF/view/layers/menu.jsp" />
		<c:import url="/WEB-INF/view/layers/content.jsp" />
		<ul class="pagination">
        <c:if test="${currentPage != 1}">
                <a class="page-link" href="${currentPage - 1}" tabindex="-1">Предыдущая</a>
        </c:if>
        <c:forEach begin="1" end="${totalPages}" var="page">
                <a class="page-link" href="${page}">${page}</a>
        </c:forEach>
        <c:if test="${currentPage != totalPages}">
                <a class="page-link" href="${currentPage + 1}">Следующая</a>
        </c:if>
    </ul>
	</div>
</body>
</html>