<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details"/>
    </jsp:include>
    <style>
        <jsp:include page="/WEB-INF/partials/css_background.jsp"/>
    </style>
</head>
<body>
<c:choose>

    <c:when test="${empty sessionScope.user}">
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    </c:when>

    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp"/>
    </c:otherwise>

</c:choose>
<main>
    <div class="container">
        <div class="row grid-item" style="width: 500px; height: 500px; margin-left: 35%; margin-top: 10%; font-size: 25px;">
            <div class="col justify-content-center">
                <p><a href="/adpage?adID=${ad.id}">Player: ${ad.playerName}</a></p>
                <p><strong>Team:</strong> ${ad.playerTeam}</p>
                <p><strong>Position:</strong> ${ad.playerPosition}</p>
                <p><strong>Number:</strong> ${ad.number}</p>
                <p><strong>Price:</strong> $${ad.price}</p>
            </div>
        </div>
    </div>
</main>

</body>
</html>
