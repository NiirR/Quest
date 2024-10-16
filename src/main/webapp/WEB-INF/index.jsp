<%@ page import="entity.Area" %>
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

<c:set var="ZONE0" value="<%=Area.MINE_MENU%>"/>
<c:set var="ZONE1" value="<%=Area.ZONE1%>"/>
<c:set var="ZONE2" value="<%=Area.ZONE2%>"/>
<c:set var="ZONE3" value="<%=Area.ZONE3%>"/>
<c:set var="ZONE3_1" value="<%=Area.ZONE3_1%>"/>
<c:set var="ZONE4" value="<%=Area.ZONE4%>"/>
<c:set var="ZONE4_1" value="<%=Area.ZONE4_1%>"/>
<c:set var="ZONE5" value="<%=Area.ZONE5%>"/>
<c:set var="ZONE5_1" value="<%=Area.ZONE5_1%>"/>

<c:if test="${area == ZONE0}">
    <h1 class="mainMenu">Главное меню</h1>
    <button class="game" onclick="select('zone1')">Квест космос</button>
    <img src="../static/img/menu.jpg">
</c:if>


<c:if test="${area == ZONE1}">
    <img src="/static/img/bort.jpg">
<h2>Пролог!</h2>
         Ты стоишь в космическом порту и готов подняться на борт свое корабля.
    <br> Разве ты не об этом мечтал? Стать капитаном галактического судна
    <br> с экипажем, который будет совершать подвиги под твоим командованием. так что вперед!
<br>
<br>
<h2>Знакомство с экипажем</h2>
<p>
    Когда ты поднялся на борт корабля, тебя поприветствовала девушка с черной папкой в руках:
    <br>- Здравствуйте, командир! Я Зинаида - ваша помощница. Видите? Там в углу пьет кофе
    <br>наш штурман - сержант Перегарный Шлейф, под штурвалом спит наш бортмеханик - Чёрный Богдан,
    <br>а фотографирует его Сергей Стальная Пятка - наш навигатор.
</p>

<input type="text" name="name" size="12" >
<button class="bt" onclick="named(document.getElementsByName('name')[0].value)">Представится</button>
</c:if>


<h2>
<c:if test="${area == ZONE2}">
     Ты потерял память. Принять вызов НЛО?
     <br>
     <br>
     <button class="bt" onclick="select('zone3')">Принять вызов</button>
     <button class="bt" onclick="select('zone3_1')">Отклонить вызов</button>
</c:if>
<c:if test="${area == ZONE3_1}">
    Ты отклонил вызов. Поражение
    <br><br>
    <button class="bt" onclick="restart()">Начать заново!</button>
</c:if>


<c:if test="${area == ZONE3}">
      Ты принял вызов. Поднимешся на мостик к капитану?
      <br>
      <br>
      <button class="bt" onclick="select('zone4')">Подняться на мостик</button>
      <button class="bt" onclick="select('zone4_1')">Отказатся подниматся на мостик</button>
</c:if>
<c:if test="${area == ZONE4_1}">
    Ты не пошел на переговоры. Поражение
    <br><br>
    <button class="bt" onclick="restart()">Начать заново!</button>
</c:if>

<c:if test="${area == ZONE4}">
   Ты поднялся на мостик.Ты кто?
   <br>
   <br>
   <button class="bt" onclick="select('zone5')">Рассказать правду о себе</button>
   <button class="bt" onclick="select('zone5_1')">Солгать о себе</button>
</c:if>
<c:if test="${area == ZONE5_1}">
   Твою ложь разоблачили. Поражение
   <br><br>
   <button class="bt" onclick="restart()">Начать заново!</button>
</c:if>

<c:if test="${area == ZONE5}">
   Тебя вернули домой. Победа
   <br><br>
   <button class="bt" onclick="restart()">Начать заново!</button>
</c:if>
</h2>

    <div class="name" >
    <c:if test="${area != ZONE1 && area != ZONE0}">
    Ваше имя : <%=session.getAttribute("username")%>
    </c:if>
</div>


<script>
    function select(action){
        $.ajax({
            type: 'POST',
            url: 'start',
            data: {action: action},
            success: function (){
                location.reload();
            }
        });
    }

    function named(name){
        $.ajax({
            type: 'POST',
            url: 'start',
            data: {name: name},
            success: function (){
                location.reload();
            }
        });
    }

    function restart() {
        $.ajax({
            url: '/restart',
            type: 'POST',
            async: false,
            success: function () {
                location.reload();
            }
        });
    }

</script>
</body>
</html>
