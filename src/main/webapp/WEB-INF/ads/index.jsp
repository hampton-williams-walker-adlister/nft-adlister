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
    <h1 class="buffer">Here Are all the ads!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="grid">
            <p class="grid-item">Seller's Name: ${ad.userId}</p>
            <p class="grid-item"><a href="/adpage?adID=${ad.id}">Player's Name: ${ad.playerName}</p>
            <p class="grid-item">Player's Team: ${ad.playerTeam}</p>
            <p class="grid-item">Player's Position: ${ad.playerPosition}</p>
            <p class="grid-item">Player's Number: ${ad.number}</p>
            <p class="grid-item">Card's Price: ${ad.price}</p>
        </div>
    </c:forEach>
</div>
<footer>
    <h1>That's all folks</h1>
</footer>
</body>
</html>
