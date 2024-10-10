
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
<title>Quest</title>
    <script src="<c:url value="jquery-3.6.0.min.js"/> "></script>
</head>
<body>

<h3>Приветствую вас, представтесть пожалуйста!</h3>
<form action="/start" method="post">
<input type="text" name="name" size="10" >
<input type="submit" value="Ответить!">
</form>

<form>
Ваше имя : <%=session.getAttribute("username")%>
<c:if test="${1 == 1}">

    <h1>zona1</h1>
</c:if>
</form>

<%--<script>
    function move(zone){
        $.ajax({
            type: 'POST',
            url:'/start',
           data:{action: zone},
            success: function (){
                location.reload();
            }

        });
    }
</script>--%>
</body>
</html>
