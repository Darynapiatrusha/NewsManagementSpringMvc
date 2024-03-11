<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="content">

	<div class="content-item-view" modelAttribute="news">
		<div class="content-item-title-view">
			<h4>${news.title}</h4>
		</div>
		<div class="content-item-date-view">
			<p>${news.date}</p>
		</div>
		<div class="content-item-text-view">
			<p>${news.content}</p>
		</div>
	</div>
	<div class="content-item-manage">
		<p>
		<c:url var="showEditNews" value="/news/showEditNews">
			<c:param name="newsId" value="${news.id}" />
		</c:url>
			<a href="${showEditNews}" ><c:out value="Редактировать" /></a>
			</p>
		<p>
		<c:url var="deleteNews" value="/news/deleteNews">
			<c:param name="newsId" value="${news.id}" />
		</c:url>
				<a href="${deleteNews}"><c:out value="Удалить" /></a>
		</p>
	</div>
</div>