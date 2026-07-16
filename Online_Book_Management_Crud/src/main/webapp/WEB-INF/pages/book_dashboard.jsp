<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>

<style>

body{
    background:#111;
    color:white;
    font-family:Arial;
}

h2{
    text-align:center;
    color:orange;
    margin:30px;
}

table{
    width:95%;
    margin:auto;
    border-collapse:collapse;
}

th{
    background:orange;
    color:black;
    padding:15px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #444;
}

tr:nth-child(even){
    background:#222;
}

tr:nth-child(odd){
    background:#1a1a1a;
}

tr:hover{
    background:#333;
}

a{
    text-decoration:none;
    font-size:20px;
    margin:0 8px;
}

.edit{
    color:#00ff88;
}

.delete{
    color:red;
}

</style>

</head>
<body>

<h2>📚 Book List</h2>

<table>

<tr>
<th>ID</th>
<th>Title</th>
<th>Category</th>
<th>Price</th>
<th>Publisher</th>
<th>Published Date</th>
<th>Stock</th>
<th>Action</th>
</tr>

<c:forEach var="book" items="${books.content}">

<tr>

<td>${book.bookId}</td>
<td>${book.bookTitle}</td>
<td>${book.category}</td>
<td>${book.price}</td>
<td>${book.publisher}</td>
<td>${book.publishDate}</td>
<td>${book.stockQuantity}</td>

<td>

<a class="edit"
   href="${pageContext.request.contextPath}/edit?id=${book.bookId}">
    ✏️
</a>

<a class="delete"
   href="${pageContext.request.contextPath}/delete?id=${book.bookId}&pageNo=${books.number}"
   onclick="return confirm('Are you sure?')">
   🗑️
</a>

</td>

</tr>



</c:forEach>

</table>
<div style="text-align:center; margin-top:20px;">
    <div style="display:inline-block;
                border:2px solid orange;
                border-radius:20px;
                padding:10px 25px;">
        <a href="/"
           style="text-decoration:none;
                  color:orange;
                  font-weight:bold;">
            🏠 Go to Home
        </a>
    </div>
</div>
<c:if test="${not empty msg}">
    <h3 style="text-align: center; color: red; font-weight: bolder;">${msg}</h3>
</c:if>

<div style="display: flex; justify-content:space-around;">

<c:if test="${books.hasPrevious()}">
    <a style="color: orange"  href="${pageContext.request.contextPath}/view_books/${books.number - 1}">
        Previous
    </a>
</c:if>


<c:if test="${books.hasNext()}">
    <a style="color: orange" href="${pageContext.request.contextPath}/view_books/${books.number + 1}">
        Next
    </a>
</c:if>
</div>


<p style="text-align: center" >${books.number + 1}</p>

</body>
</html>