<%@ page import="entity.Questions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Millioner</title>
    <script src="<c:url value="/static/jquery-3.6.0.min.js"/>"></script>
    <link href="../static/main.css" rel="stylesheet">
</head>
<body>
<c:set var="VOPROS1" value="<%=Questions.VOPROS1%>"/>
<c:set var="VOPROS2" value="<%=Questions.VOPROS2%>"/>
<c:set var="VOPROS3" value="<%=Questions.VOPROS3%>"/>
<c:set var="VOPROS4" value="<%=Questions.VOPROS4%>"/>
<c:set var="VOPROS5" value="<%=Questions.VOPROS5%>"/>
<c:set var="VOPROS6" value="<%=Questions.VOPROS6%>"/>
<c:set var="VOPROS7" value="<%=Questions.VOPROS7%>"/>
<c:set var="VOPROS8" value="<%=Questions.VOPROS8%>"/>
<c:set var="VOPROS9" value="<%=Questions.VOPROS9%>"/>
<c:set var="VOPROS10" value="<%=Questions.VOPROS10%>"/>
<c:set var="VOPROS11" value="<%=Questions.VOPROS11%>"/>
<c:set var="VOPROS12" value="<%=Questions.VOPROS12%>"/>
<c:set var="VOPROS13" value="<%=Questions.VOPROS13%>"/>
<c:set var="VOPROS14" value="<%=Questions.VOPROS14%>"/>
<c:set var="VOPROS15" value="<%=Questions.VOPROS15%>"/>
<c:set var="WIN" value="<%=Questions.WIN%>"/>
<c:set var="FAIL" value="<%=Questions.FAIL%>"/>

<c:if test="${quest != WIN}">
<img src="../static/img/mill.jpg">
</c:if>
<c:if test="${quest != null && quest != WIN && quest != FAIL}">
    <div class="ru">
        Выйгрыш : <%=session.getAttribute("ru")%>
    </div>
</c:if>
<c:if test="${quest == VOPROS1}">
        <h3 class="quest">Что растёт в огороде?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('t1')">A: Лук</button>
        <button class="button_Mill" onclick="select('false')">B: Пистолет</button>
        <button class="button_Mill" onclick="select('false')">C: Пулемёт</button>
        <button class="button_Mill" onclick="select('false')">D: Ракета</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS2}">
    <h3 class="quest">Как называют микроавтобусы, совершающие поездки по определённым маршрутам?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Рейсовка</button>
        <button class="button_Mill" onclick="select('false')">B: Путёвка</button>
        <button class="button_Mill" onclick="select('false')">C: Курсовка</button>
        <button class="button_Mill" onclick="select('t2')">D: Маршрутка</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS3}">
    <h3 class="quest"> О чём писал Грибоедов, отмечая, что он «нам сладок и приятен» ?</h3>
        <br>
        <div class="Mill">
        <button class="button_Mill" onclick="select('t3')">A: Дым Отечества</button>
        <button class="button_Mill" onclick="select('false')">B: Дух купечества</button>
        <button class="button_Mill" onclick="select('false')">C: Дар пророчества</button>
        <button class="button_Mill" onclick="select('false')">D: Пыл девичества</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS4}">
    <h3 class="quest">Какого персонажа нет в известной считалке «На золотом крыльце сидели»?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Сапожника</button>
        <button class="button_Mill" onclick="select('t4')">B: Кузнеца</button>
        <button class="button_Mill" onclick="select('false')">C: Короля</button>
        <button class="button_Mill" onclick="select('false')">D: Портного</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS5}">
    <h3 class="quest">Какой специалист занимается изучением неопознанных летающих объектов?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Кинолог</button>
        <button class="button_Mill" onclick="select('t5')">B: Уфолог</button>
        <button class="button_Mill" onclick="select('false')">C: Сексопатолог</button>
        <button class="button_Mill" onclick="select('false')">D: Психиатр</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS6}">
    <h3 class="quest">Как называется разновидность воды, в которой атом водорода замещён его изотопом дейтерием?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Лёгкая</button>
        <button class="button_Mill" onclick="select('false')">B: Средняя</button>
        <button class="button_Mill" onclick="select('t6')">C: Тяжёлая</button>
        <button class="button_Mill" onclick="select('false')">D: Невесомая</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS7}">
    <h3 class="quest">Что такое десница?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Бровь</button>
        <button class="button_Mill" onclick="select('false')">B: Глаз</button>
        <button class="button_Mill" onclick="select('false')">C: Шея</button>
        <button class="button_Mill" onclick="select('t7')">D: Рука</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS8}">
    <h3 class="quest">В какое море впадает река Урал?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Азовское</button>
        <button class="button_Mill" onclick="select('false')">B: Чёрное</button>
        <button class="button_Mill" onclick="select('false')">C: Средиземное</button>
        <button class="button_Mill" onclick="select('t8')">D: Каспийское</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS9}">
    <h3 class="quest">На что кладут руку члены английского общества лысых во время присяги?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Баскетбольный мяч</button>
        <button class="button_Mill" onclick="select('t9')">B: Бильярдный шар</button>
        <button class="button_Mill" onclick="select('false')">C: Апельсин</button>
        <button class="button_Mill" onclick="select('false')">D: Кокосовый орех</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS10}">
    <h3 class="quest">Как назывался каменный монолит, на котором установлен памятник Петру I в Санкт-Петербурге?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Дом-камень</button>
        <button class="button_Mill" onclick="select('t10')">B: Гром-камень</button>
        <button class="button_Mill" onclick="select('false')">C: Гора-камень</button>
        <button class="button_Mill" onclick="select('false')">D: Разрыв-камень</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS11}">
    <h3 class="quest">Как Пётр Ильич Чайковский назвал свою серенаду для скрипки с оркестром си-бемоль минор?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Флегматическая</button>
        <button class="button_Mill" onclick="select('t11')">B: Меланхолическая</button>
        <button class="button_Mill" onclick="select('false')">C: Холерическая</button>
        <button class="button_Mill" onclick="select('false')">D: Сангвиническая</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS12}">
    <h3 class="quest">Какого ордена не было у первого советского космонавта Юрия Гагарина?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: «Ожерелье Нила» (Египет)</button>
        <button class="button_Mill" onclick="select('false')">B: «Крест Грюнвальда» (Польша)</button>
        <button class="button_Mill" onclick="select('false')">C: «Плайя Хирон» (Куба)</button>
        <button class="button_Mill" onclick="select('t12')">D: «Орден двойного дракона» (Китай)</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS13}">
    <h3 class="quest">Какое животное имеет второе название — кугуар?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Оцелот</button>
        <button class="button_Mill" onclick="select('false')">B: Леопард</button>
        <button class="button_Mill" onclick="select('t13')">C: Пума</button>
        <button class="button_Mill" onclick="select('false')">D: Пантера</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS14}">
    <h3 class="quest">Что в России 19 века делали в дортуаре?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Ели</button>
        <button class="button_Mill" onclick="select('t14')">B: Спали</button>
        <button class="button_Mill" onclick="select('false')">C: Ездили верхом</button>
        <button class="button_Mill" onclick="select('false')">D: Купались</button>
    </div>
</c:if>

<c:if test="${quest == VOPROS15}">
    <h3 class="quest">Какой химический элемент назван в честь злого подземного гнома?</h3>
        <br>
    <div class="Mill">
        <button class="button_Mill" onclick="select('false')">A: Гафний</button>
        <button class="button_Mill" onclick="select('false')">B: Теллур</button>
        <button class="button_Mill" onclick="select('false')">C: Бериллий</button>
        <button class="button_Mill" onclick="select('t15')">D: Кобальт</button>
    </div>
</c:if>

<c:if test="${quest == WIN}">
    <img src="../static/img/win.jpg">
    <div class="Mill">
       Поздравляем вы стали МИЛЛИОНЕРОМ!
        <br><br><br>
        <form>
            <button class="button_Mill" onclick="restart()">Начать заново</button>
        </form>
        <form action="init" method="get" >
            <input type="text" hidden="hidden" name="login" value="true">
            <button class="button_Mill" onclick="restart()">Вернутся в меню</button>
        </form>
    </div>
</c:if>

 <c:if test="${quest == FAIL}">
    <div class="Mill">
       Неверный ответ ваш выйгрыш : <%=session.getAttribute("ru")%>
       <br><br><br>
        <form>
          <button class="button_Mill" onclick="restart()">Начать заново</button>
        </form>
          <form action="init" method="get" >
              <input type="text" hidden="hidden" name="login" value="true">
              <button class="button_Mill" onclick="restart()">Вернутся в меню</button>
          </form>
       </div>
 </c:if>


<script>
    function select(answer){
        $.ajax({
            type: 'POST',
            url: 'mill',
            data: {answer: answer},
            success: function (){
                location.reload();
            }
        });
    }

    function restart() {
        $.ajax({
            url: 'restart',
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
