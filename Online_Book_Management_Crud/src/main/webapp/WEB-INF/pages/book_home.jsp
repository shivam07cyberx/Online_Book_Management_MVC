<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Book Store</title>

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
    width:500px;
    background:#1e1e1e;
    padding:40px;
    border-radius:18px;
    box-shadow:0 0 20px rgba(255,140,0,.5);
    text-align:center;
}

h1{
    color:#ff8c00;
    margin-bottom:35px;
}

.menu a{
    display:block;
    text-decoration:none;
    color:white;
    background:#2b2b2b;
    border:2px solid #ff8c00;
    padding:15px;
    margin:15px 0;
    border-radius:12px;
    font-size:18px;
    font-weight:bold;
    transition:.3s;
}

.menu a:hover{
    background:#ff8c00;
    color:black;
    transform:scale(1.05);
    box-shadow:0 0 15px #ff8c00;
}

.footer{
    margin-top:25px;
    color:#aaa;
    font-size:14px;
}

</style>

</head>

<body>

<div class="container">

<h1>📚 Online Book Store</h1>

<div class="menu">

<a href="add_book_form">➕ Add Book</a>

<a href="view_books">📖 View Books</a>

<a href="search_book_form">🔍 Search Book By ID</a>

</div>

<div class="footer">
Developer @Shivam</div>

</div>

</body>
</html>