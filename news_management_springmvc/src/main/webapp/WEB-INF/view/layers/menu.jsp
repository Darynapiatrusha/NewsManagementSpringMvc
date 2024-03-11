<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

		<div class="navigation">
			<div class="navigatinon-content">
				<p>
				<c:url var="showNewsList" value="/news/list/1"></c:url>
					<a href="${showNewsList}">Список новостей</a>
				</p>
				<p>
				<c:url var="showAddNews" value="/news/showAddNews"></c:url>
					<a href="${showAddNews}">Добавить новость</a>
				</p>
				
			</div>
		</div>


