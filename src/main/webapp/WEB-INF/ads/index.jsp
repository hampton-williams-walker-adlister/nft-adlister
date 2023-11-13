<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <p>${ad.id}</p>
            <p><a href="/adpage?adID=${ad.id}">${ad.playerName}</a></p>
            <p>${ad.number}</p>
            <p>${ad.price}</p>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
