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
		<h1 class="text-center">Edit Book</h1>
		<form action="/books" method="post" modelAttribute="book">
			<label for="title" class="mt-3">Title</label>
			<input type="text" name="title" value="${book.title}" id="title" class="form-control">
			<label for="language" class="mt-3">Language</label>
			<input type="text" name="language" value="${book.language}" id="language" class="form-control">
			<label for="pages" class="mt-3">Pages</label>
			<input type="number" value="${book.numberOfPages}" id="pages" name="numberOfPages" class="form-control">
			<label for="description" class="mt-3">Description</label>
			<br>
			<textarea name="description" value="${book.description}" id="description" cols="50" rows="10"></textarea>
			<br>
			<input type="submit" value="Edit" class="btn btn-primary btn-lg">
		</form>
	</div>
</body>
</html>