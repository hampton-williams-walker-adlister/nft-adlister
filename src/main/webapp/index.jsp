<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style><jsp:include page="/WEB-INF/partials/css_background.jsp" /></style>
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

    
   
    <div class="container pd">
        <h1>Welcome to the Adlister!</h1>
        <h2>We have all the NFL cards you could ever need.</h2>
        <h2>And if we don't have it, we will get it. </h2>
        <h2>So what would you like to do today?</h2>
    </div>

    <div class="btns pd">

        <a class="nav-link btnsS btz" href="/login">Login</a>
        <a class="nav-link btnsS btz" href="/register">Register</a>
        <a class="nav-link btnsS btz" href="/ads">See All Ads</a>
    </div>

    <div class="pd">
        <h1>See what people are saying!!!!</h1>
    </div>

    <div class="cmt pd">
        <div class="cmtC">Rachel, Texas. "I love this site. I trade cards regualry and refuse to go anywhere else."</div>
        <div class="cmtC">Steven, Florida. "OMG just sold my first card. So easy and the user experince is amazing. I mean look at that call to action. Amazing</div>
        <div class="cmtC">Jackson, Arizona. "USE THIS SITE! And don't trust Russel. You know what you did."</div>
    </div>
</body>
</html>
