<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background-color: black;
}

.container{
    width:420px;
    background:rgb(128, 128, 128);
    padding:40px;
    border-radius:12px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,.25);
}

h1{
    color:#e53935;
    font-size:55px;
    margin-bottom:10px;
}

h2{
    color:#333;
    margin-bottom:15px;
}

p{
    color:#666;
    margin-bottom:30px;
    line-height:1.5;
}

a{
    display:inline-block;
    text-decoration:none;
    background:#1976d2;
    color:white;
    padding:12px 30px;
    border-radius:8px;
    font-size:16px;
    transition:.3s;
    
}

a:hover{
    background:#0d47a1;
}
</style>

</head>

<body>

<div class="container">

    <h1>⚠</h1>

    <h2>Oops! Something Went Wrong</h2>

    <p>
        The page you are looking for cannot be displayed or an unexpected error has occurred.
    </p>

    <a href="${pageContext.request.contextPath}/">🏠 Home</a>

</div>

</body>
</html>