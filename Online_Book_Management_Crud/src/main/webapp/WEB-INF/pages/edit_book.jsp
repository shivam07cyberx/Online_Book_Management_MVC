<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#111;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.container{
    width:430px;
    background:#1e1e1e;
    padding:35px;
    border-radius:15px;
    box-shadow:0 0 20px rgba(255,140,0,.4);
}

h2{
    color:#ff8c00;
    text-align:center;
    margin-bottom:25px;
    letter-spacing:1px;
}

table{
    width:100%;
}

td{
    padding:8px 0;
}

label{
    color:#fff;
    font-weight:bold;
}

input{
    width:100%;
    padding:12px;
    border:2px solid #ff8c00;
    border-radius:8px;
    background:#2b2b2b;
    color:white;
    outline:none;
    transition:.3s;
}

input:focus{
    box-shadow:0 0 10px #ff8c00;
    border-color:#ffa733;
}

input[type="submit"]{
    background:#ff8c00;
    color:black;
    font-weight:bold;
    cursor:pointer;
    font-size:16px;
    border:none;
    margin-top:15px;
    transition:.3s;
}

input[type="submit"]:hover{
    background:#ff6a00;
    color:white;
    transform:scale(1.03);
}
</style>

</head>
<body>

<div class="container">

<h2>📚 Edit A Book</h2>

<form action="edit_book_details" method="post">

<table>
<tr>
<td><label>Book ID</label></td>
</tr>

<tr>
<td><input type="text" name="bookId" value= ${book.bookId} readonly="readonly" ></td>
</tr>
<tr>
<td><label>Book Title</label></td>
</tr>
<tr>
<td><input type="text" name="bookTitle" value= ${book.bookTitle} ></td>
</tr>

<tr>
<td><label>Category</label></td>
</tr>
<tr>
<td><input type="text" name="category" value= ${book.category} ></td>
</tr>

<tr>
<td><label>Price</label></td>
</tr>
<tr>
<td><input type="number" name="price" value= ${book.price}></td>
</tr>

<tr>
<td><label>Publisher</label></td>
</tr>
<tr>
<td><input type="text" name="publisher" value= ${book.publisher}></td>
</tr>

<tr>
<td><label>Published Date</label></td>
</tr>
<tr>
<td><input type="date" name="publishDate" value= ${book.publishDate}></td>
</tr>

<tr>
<td><label>Stock Quantity</label></td>
</tr>
<tr>
<td><input type="number" name="stockQuantity" value= ${book.stockQuantity}></td>
</tr>

<tr>
<td>
<input type="submit" value="Edit Book">
</td>
</tr>


<tr>
<td>
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
</div></td>
</tr>

</table>



</form>



<c:if test="${not empty msg}">
    <h3 style="text-align: center; color: red; font-weight: bolder;">${msg}</h3>
</c:if>

</div>

</body>
</html>