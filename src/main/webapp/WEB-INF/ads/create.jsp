<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/logged_in_navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="playerName">Player Name</label>
                <input id="playerName" name="playerName" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="number">Number</label>
                <input id="number" name="number" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="position">Position</label>
                <select name="position" id="position">
                    <option value="Running Back">Running Back</option>
                    <option value="Quarterback">Quarterback</option>
                    <option value="Wide Receiver">Wide Receiver</option>
                    <option value="Tight End">Tight End</option>
                </select>
            </div>
            <div class="form-group">
                <label for="team">Team</label>
                <input id="team" name="team" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
