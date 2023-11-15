<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Create a new Ad" />
  </jsp:include>
    <style><jsp:include page="/WEB-INF/partials/css_background.jsp" /></style>
</head>
<body>
<main>

<div class="container">
    <h1>Here is an individual Ad!</h1>
    <div class="col-md-6">
        <p class="zm"><a href="/adpage?adID=${ad.id}">Team Name: ${ad.playerName}</a></p>
        <p class="zm">Position: ${ad.playerTeam}</p>
        <p class="zm">Name: ${ad.playerPosition}</p>
        <p class="zm">Number: ${ad.number}</p>
        <p class="zm">Price: $${ad.price}</p>
        <p class="zm">Championships: ${ad.championships}</p>
    </div>
</div>

</main>

</body>
</html>
