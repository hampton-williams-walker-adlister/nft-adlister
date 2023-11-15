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
<h1 class="buffer">Here Are all the ads!</h1>
<div class="container">
    <div class="grid gap-3">
        <c:forEach var="ad" items="${ads}">
            <div class="grid-item">
                <p><strong>Seller's Name:</strong> ${ad.userId}</p>
                <p><a href="/adpage?adID=${ad.id}"><em>Player's Name:</em> ${ad.playerName}</a></p>
                <p><strong>Player's Team:</strong> ${ad.playerTeam}</p>
                <p><strong>Player's Position:</strong> ${ad.playerPosition}</p>
                <p><strong>Player's Number:</strong> ${ad.number}</p>
                <p><strong>Card's Price:</strong> ${ad.price}</p>
            </div>
        </c:forEach>
    </div>
</div>
<footer>
    <h1>That's all folks</h1>
</footer>
</body>
</html>
