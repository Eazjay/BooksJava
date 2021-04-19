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
		<h1 class="text-center">All Books</h1>
		<table class="table table-striped border">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Title</th>
					<th scope="col">Description</th>
					<th scope="col">Language</th>
					<th scope="col">Page Length</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books}" var="book">
					<tr>
						<td><c:out value="${book.id}"></c:out></td>
						<td><c:out value="${book.title}" /></td>
						<td><c:out value="${book.description}" /></td>
						<td><c:out value="${book.language}" /></td>
						<td><c:out value="${book.numberOfPages}" /></td>
						<td>
							<a href="/books/${book.id}"><button type="submit" class="btn btn-outline-info">View</button></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/books/new" class="btn btn-primary">New Book</a>
	</div>
</body>
</html>