<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<title>Books</title>
</head>
<body>
	<div class="container mt-5">
		<a href="/books" class="link text-decoration-none float-end">Go To Books</a>
		<h1><c:out value="${book.title}"/></h1>
		<p class="mt-5">Description: <c:out value="${book.description}"/></p>
		<p class="mt-3">Language: <c:out value="${book.language}"/></p>
		<p class="mt-3">Number Of Pages: <c:out value="${book.numberOfPages}"/></p>
		<div class="d-flex w-25 justify-content-between mt-5">
			<a href="/books/${book.id}/edit" class="btn btn-outline-primary">Edit Book</a>
			<form action="/books/${book.id}/delete" method="post">
				<input type="hidden" name="delete" value="delete">
				<input type="submit" value="Delete Book" class="btn btn-outline-danger">
			</form>
		</div>
		
	</div>
</body>
</html>