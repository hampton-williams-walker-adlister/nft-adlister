<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Create a new Ad" />
  </jsp:include>
</head>
<body>

<div class="container">
    <h1>Here is an individual Ad!</h1>
    <div class="col-md-6">
        <p><a href="/adpage?adID=${ad.id}">Team Name: ${ad.playerName}</a></p>
        <p>Position: ${ad.playerTeam}</p>
        <p>Name: ${ad.playerPosition}</p>
        <p>Number: ${ad.number}</p>
        <p>Price: $${ad.price}</p>
        <p>Championships: ${ad.championships}</p>
    </div>
</body>
</html>
