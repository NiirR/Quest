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


<c:if test="${area == ZONE1}">
    <img src="/static/img/bort.jpg">
    <div class="qt1">
<h2>Пролог!</h2>
     Ты стоишь в космическом порту и готов подняться на борт
<br> своего корабля. Разве ты не об этом мечтал? Стать капитаном
<br> галактического судна с экипажем, который будет совершать
<br> подвиги под твоим командованием. так что вперед!
<br>
<br>
<h2>Знакомство с экипажем</h2>
<p>
Когда ты поднялся на борт корабля, тебя поприветствовала
<br> девушка с черной папкой в руках:- Здравствуйте, командир!
<br> Я Зинаида - ваша помощница. Видите? Там в углу пьет кофе
<br> наш штурман - сержант Перегарный Шлейф, под штурвалом
<br> спит наш бортмеханик Чёрный Богдан, а фотографирует его
<br> Сергей Стальная Пятка - наш навигатор.
</p>
    </div>
    <div class="btt">
<input type="text" name="name" size="24" >
<button class="bt" onclick="named(document.getElementsByName('name')[0].value)">Представится</button>
    </div>
</c:if>


<c:if test="${area == ZONE2}">
    <img src="/static/img/ufo.jpg">
    <h2 class="textgame"> Ты потерял память. Принять вызов НЛО?</h2>
<div class="button">
     <button class="bt"  onclick="select('zone3')">Принять вызов</button>
     <button class="bt" onclick="select('zone3_1')">Отклонить вызов</button>
</div>
</c:if>


<c:if test="${area == ZONE3_1}">
    <img src="/static/img/ufo.jpg">
    <h2 class="textgame"> Ты отклонил вызов. Поражение</h2>
<div class="button">
    <form>
    <button class="bt" onclick="restart()">Начать заново</button>
    </form>
</div>
</c:if>


<c:if test="${area == ZONE3}">
    <img src="/static/img/ufo_2.jpg">
    <h2 class="textgame">  Ты принял вызов. Поднимешся на мостик к капитану?</h2>
<div class="button">
      <button class="bt" onclick="select('zone4')">Подняться на мостик</button>
      <button class="bt" onclick="select('zone4_1')">Отказатся подниматся на мостик</button>
</div>
</c:if>


<c:if test="${area == ZONE4_1}">
    <img src="/static/img/ufo.jpg">
    <h2 class="textgame"> Ты не пошел на переговоры. Поражение</h2>
<div class="button">
    <form>
    <button class="bt" onclick="restart()">Начать заново</button>
    </form>
</div>
</c:if>


<c:if test="${area == ZONE4}">
    <img src="/static/img/ufo_3.jpg">
    <h2 class="textgame"> Ты поднялся на мостик. Ты кто?</h2>
<div class="button">
   <button class="bt" onclick="select('zone5')">Рассказать правду о себе</button>
   <button class="bt" onclick="select('zone5_1')">Солгать о себе</button>
</div>
</c:if>


<c:if test="${area == ZONE5_1}">
    <img src="/static/img/ufo.jpg">
    <h2 class="textgame"> Твою ложь разоблачили. Поражение</h2>
<div class="button">
    <form>
   <button class="bt" onclick="restart()">Начать заново</button>
    </form>
</div>
</c:if>


<c:if test="${area == ZONE5}">
    <img src="/static/img/ufo.jpg">
    <h2 class="textgame">  Тебя вернули домой. Победа</h2>
<div class="button">
    <form>
   <button class="bt" onclick="restart()">Начать заново</button>
    </form>
    <form action="init" method="get" >
        <input type="text" hidden="hidden" name="login" value="true">
        <button class="bt" onclick="restart()">Вернутся в меню</button>
    </form>
</div>
</c:if>


</h2>

    <div class="name" >
    <c:if test="${area != ZONE1 && area != ZONE0}">
    Ваше имя : <%=session.getAttribute("username")%>
    </c:if>
</div>


<%--Игра Миллионер--%>

<script>
    function select(move){
        $.ajax({
            type: 'POST',
            url: 'start',
            data: {move: move},
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
