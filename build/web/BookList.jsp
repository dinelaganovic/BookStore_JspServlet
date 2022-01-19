<%-- 
    Document   : BookList
    Created on : Jan 17, 2022, 1:58:31 AM
    Author     : dinelaganovic
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Book Store Title</title>
	</head>
	<body style="background: bisque">
		<center>
			<h1 style="background: wheat ; width: 80%"> All Books</h1>
			<h2>
			<a href = "ControllerServlet?action=new" style="background: wheat ; padding: 10px" >Add New Book</a> 
                        <a style="background: bisque ; padding: 10px"> </a>
			<a href = "ControllerServlet?action=list" style="background: wheat ; padding: 10px">List All Book</a> 
			</h2>
		</center>
		<div align=center>
			<table border="1" cellpadding="5">
				<caption><h2>List of Books</h2></caption>
				<tr>
					<th>Id</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Actions</th>
				</tr>
				<c:forEach items="${listBook}" var="book">
				<tr>
					<td><c:out value="${book.id}"/></td>
					<td><c:out value="${book.title}"/></td>
					<td><c:out value="${book.author}"/></td>
					<td><c:out value="${book.price}"/></td>
					<td>
						<a href="ControllerServlet?action=edit&id=<c:out value='${book.id}'/>">Edit</a>
						<a href="ControllerServlet?action=delete&id=<c:out value='${book.id}'/>">Delete</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	
	</body>
</html>
