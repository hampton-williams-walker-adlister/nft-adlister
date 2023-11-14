<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style><jsp:include page="/WEB-INF/partials/css_background.jsp" /></style>
</head>
<body>

<nav>
<c:choose>
    
    <c:when test="${empty sessionScope.user}">
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </c:when>
    
    <c:otherwise>
        <jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp" />
    </c:otherwise>

</c:choose>
</nav>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="grid">
            <p class="grid-item">
                Player's Name: ${ad.playerName}, Player's Team: ${ad.playerTeam}, Player's Position: ${ad.playerPosition}, Player's Number: ${ad.number}, Player's Card Price: ${ad.price}</p>
        </div>
    </c:forEach>
</div>
<footer>
    <h1>That's all folks</h1>
</footer>
</body>
</html>
