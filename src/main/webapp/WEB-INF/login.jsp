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

  <c:if test="${login != true }">
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
<c:if test="${login == false}">
  <h2 class="eror">Неверный логин или пароль</h2>
</c:if>

<img src="../static/img/menu.jpg">
<br><br><br>
<c:if test="${login == true}">
  <form action="start" method="get">
    <input type="image" src="../static/img/q.png" onclick="" class="imgQ">
  </form>
  <br><br>
  <form action="mill" method="get">
    <input type="image" src="../static/img/m.png" onclick="" class="imgM">
  </form>

</c:if>

</body>
</html>
