<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style><jsp:include page="/WEB-INF/partials/css_background.jsp" /></style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp" />
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <br>
        <button type="button" class="btn btn-primary"><a class="editBtn" href="/update">Edit Profile</a></button>
        <button type="button" class="btn btn-primary"><a class="editBtn" href="/login">Delete Your Profile</a></button>
        <br>
        <h2>My Cards</h2>
        <div class="grid row-gap-3">
            <c:forEach var="ad" items="${userAds}">
                <div class="grid-item">
                    <p><a href="/adpage?adID=${ad.id}">Player: ${ad.playerName}</a></p>
                    <p>Team: ${ad.playerTeam}</p>
                    <p>Position: ${ad.playerPosition}</p>
                    <p>Number: ${ad.number}</p>
                    <p>Price: $${ad.price}</p>
                        <form action="/delete?adID=${ad.id}&action=edit" method="post">
                            <input class="btn btn-sm btn-increment" type="submit" name="edit" value="EDIT">
                        </form>
                        <form action="/delete?adID=${ad.id}&action=delete" method="post">
                            <input class="btn btn-danger btn-sm btn-decrement" type="submit" name="delete" value="DELETE">
                        </form>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
