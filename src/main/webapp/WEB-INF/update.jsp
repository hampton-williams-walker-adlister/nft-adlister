<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Edit Profile" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp" />
<div class="container">
  <h1>Please fill in your information.</h1>
  
  <form action="/update" method="post">
    <div class="form-group">
      <label for="updatedUsername">Username</label>
      <input id="updatedUsername" name="updatedUsername" class="form-control" type="text" value="${sessionScope.user.username}">
    </div>
    <div class="form-group">
      <label for="updatedEmail">Email</label>
      <input id="updatedEmail" name="updatedEmail" class="form-control" type="text" value="${sessionScope.user.email}">
    </div>
    <div class="form-group">
      <label for="updatedPassword">Password</label>
      <input id="updatedPassword" name="updatedPassword" class="form-control" type="password" value="${sessionScope.user.password}">
    </div>
    <div class="form-group">
      <label for="confirm_updated_password">Confirm Password</label>
      <input id="confirm_updated_password" name="confirm_updated_password" class="form-control" type="password" value="${sessionScope.user.password}">
    </div>
    <input type="submit" class="btn btn-primary btn-block">
  </form>
  
</div>
</body>
</html>

