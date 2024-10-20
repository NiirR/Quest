<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Quest</title>
  <script src="<c:url value="/static/jquery-3.6.0.min.js"/>"></script>
  <link href="../static/main.css" rel="stylesheet">
</head>
<body>


<h1 class="login_M">Главное меню</h1>
<div class=login>

  <c:if test="${login == false}">
  <form action="init">
    Логин
  <br>
  <input class="loginButton" type="text" name="username" size="14">
  <br>
    Пароль
  <br>
  <input class="loginButton" type="password" name="password" size="14" >
  <br>
    <button class="loginButton" >Войти</button>
    </form>
  </c:if>
</div>
<img src="../static/img/menu.jpg">
<br><br><br>
<c:if test="${login == true}">
<div class="login">
  <form action="start" method="get" >
    <button class="game">Квест космос</button>
  </form>
  <br><br>
  <form action="mill" >
    <button class="game">Миллионер</button>
  </form>
</div>
</c:if>

</body>
</html>
