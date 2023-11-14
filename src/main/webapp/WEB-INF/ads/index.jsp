<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<c:choose>
    
    <c:when test="${empty sessionScope.user}">
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </c:when>
    
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp" />
    </c:otherwise>

</c:choose>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <p><a href="/adpage?adID=${ad.id}">Team Name: ${ad.playerName}</a></p>
            <p>Position: ${ad.playerTeam}</p>
            <p>Name: ${ad.playerPosition}</p>
            <p>Number: ${ad.number}</p>
            <p>Price: $${ad.price}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
