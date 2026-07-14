<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Book</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#111;
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
}

.container{
    width:700px;
    background:#1c1c1c;
    padding:35px;
    border-radius:12px;
    box-shadow:0 0 20px rgba(255,140,0,.3);
}

h2{
    text-align:center;
    color:orange;
    margin-bottom:30px;
}

form{
    display:flex;
    justify-content:center;
    gap:15px;
    margin-bottom:25px;
}

input[type="number"]{
    width:220px;
    padding:12px;
    border:none;
    border-radius:6px;
    font-size:16px;
    background:#2d2d2d;
    color:white;
    outline:none;
}

input[type="number"]:focus{
    border:2px solid orange;
}

input[type="submit"]{
    background:orange;
    color:black;
    border:none;
    padding:12px 25px;
    font-size:16px;
    font-weight:bold;
    border-radius:6px;
    cursor:pointer;
    transition:.3s;
}

input[type="submit"]:hover{
    background:#ffb84d;
    transform:scale(1.05);
}

table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
}

table th{
    background:orange;
    color:black;
    padding:14px;
}

table td{
    background:#2b2b2b;
    color:white;
    padding:14px;
    text-align:center;
    border-bottom:1px solid #444;
}

table tr:hover td{
    background:#3a3a3a;
}

.success{
    color:#00ff88;
    text-align:center;
    margin-top:20px;
}

.error{
    color:#ff4444;
    text-align:center;
    margin-top:20px;
    font-size:18px;
    font-weight:bold;
}

</style>

</head>
<body>

<div class="container">

<h2>📚 Search Book By ID</h2>

<form action="search" method="get">

    <input type="number"
           name="id"
           placeholder="Enter Book ID"
           required>

    <input type="submit" value="Search">

</form>

<c:if test="${not empty book}">

    <table>

        <tr>
            <th>ID</th>
            <th>Book Title</th>
            <th>Category</th>
            <th>Publisher</th>
        </tr>

        <tr>
            <td>${book.bookId}</td>
             <td>${book.bookTitle}</td>
              <td>${book.category}</td>
               <td>${book.publisher}</td>
        </tr>

    </table>

</c:if>



<c:if test="${not empty msg}">
    <h3 style="text-align: center; color: red; font-weight: bolder;">${msg}</h3>
</c:if>

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


</div>

</body>
</html>