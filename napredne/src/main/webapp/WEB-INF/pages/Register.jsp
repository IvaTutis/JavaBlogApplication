<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
		.error {
		   font-family: fantasy;
		   font-weight: bold;
		   font-size: 0.9em;
		   color: #FF0000;
		   padding-left: 110px;
		}
</style>
<title>


<c:choose>
<c:when test="${currentUserId == null }">
Anonymous
</c:when>
<c:otherwise>
${currentUserName }
</c:otherwise>
</c:choose>

</title>
</head>
<body>
<div class="pravokutnik"></div>
<div class="header"><h1>Regisriraj se</h1></div>


<div class="sadrzaj">
<br>
<br>
<br>
<br>
<form action="register" method="post">

Username:<input type="text" name="username">
<div class="error">
<c:if test="${errors.get('username')!=null }">
<br>
<c:out value="${errors.get('username')}"></c:out>
</c:if>
</div>
<br>

Lozinka:<input type="password" name="password">
<div class="error">
<c:if test="${errors.get('password')!=null }">
<br>
<c:out value="${errors.get('password')}"></c:out>
</c:if>
</div>
<br>

<input type="submit" class="button" value="Registriraj me!">
</form>
<br>
<form action="main" method="post">
<input type="submit" class="button" value="Vrati se na početnu!">
</form>
<br><br>
</div>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Indie+Flower" />

<style>
.header{
padding: 10px;
font-family: "Indie Flower";
font-size: 28px;
color: white;
position: absolute;
top: 0;
left:0;
height: 120px;
width:100vw;
background-color: #d3d3d3;

}


.pravokutnik{
position: fixed;
top:0;
left:0;
bottom: 0;
width: 40px;
background-color: #a3a3a3;



}
.sadrzaj{
position:absolute;
top:50px;
left: 60px;
font-family: "Indie Flower";
font-size: 25px;
color: #000;}

a{
font-family: "Indie Flower";
font-size: 25px;
color: #000;
}

a:hover, a:visited{
opacity:0.7;
font-family: "Indie Flower";
font-size: 25px;
color: #000;
}

.dnevnik{
margin: 28px;
border-bottom: 1px solid #d3d3d3;
border-right: 1px solid #d3d3d3;
width:60vw;
}


input[type="text"]
{
    font-size:16px;
    font-family: "Indie Flower";
    color: #a3a3a3;
}


.button{
  background-color: #a3a3a3;
  border: none;
  color: #000;
  font-family: "Indie Flower";
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  font-size: 20px;
}
.button:hover{
opacity:0.7;

}</stlye>
</body>
</html>