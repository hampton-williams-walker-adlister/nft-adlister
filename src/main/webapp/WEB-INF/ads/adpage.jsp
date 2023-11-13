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
            <p>${ad.id}</p>
            <p>${ad.playerName}</p>
            <p>${ad.number}</p>
            <p>${ad.price}</p>
            <p>${ad.description}</p>
        </div>
</body>
</html>
