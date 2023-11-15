<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
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
                <label>Please Select a Position:</label>
                <label>
                    <select name="positionName">
                        <option selected>Teams</option>
                        <option value="1">Center</option>
                        <option value="2">Offensive Guard</option>
                        <option value="3">Offensive Tackle </option>
                        <option value="4">Quaterback</option>
                        <option value="5">Running Back</option>
                        <option value="6">Wide Receiver</option>
                        <option value="7">Tight End</option>
                        <option value="8">Defensive Tackle </option>
                        <option value="9">Defensive End </option>
                        <option value="10">Middle Linebacker</option>
                        <option value="11">Outside Linebacker</option>
                        <option value="12">Cornerback</option>
                        <option value="13">Safety </option>
                        <option value="14">Kicker</option>
                        <option value="15">Punter</option>
                        <option value="16">Holder</option>
                        <option value="17">Long Snapper</option>
                        <option value="18">Kick Returner</option>
                        <option value="19">Punt Returner</option>
                    </select>
            </div>
            <label>Please Select a Team:</label>
            <label>
                <select name="teamName">
                    <option selected>Teams</option>
                    <option value="1"> Arizona Cardinals </option>
                    <option value="2"> Atlanta Falcons </option>
                    <option value="3"> Baltimore Ravens </option>
                    <option value="4"> Buffalo Bills </option>
                    <option value="5"> Carolina Panthers </option>
                    <option value="6"> Chicago Bears </option>
                    <option value="7"> Cincinnati Bengals </option>
                    <option value="8"> Cleveland Browns </option>
                    <option value="9"> Dallas Cowboys </option>
                    <option value="10">Denver Broncos </option>
                    <option value="11">Detroit Lions </option>
                    <option value="12">Green Bay Packers </option>
                    <option value="13">Houston Texans </option>
                    <option value="14">Indianapolis Colts </option>
                    <option value="15">Jacksonville Jaguars </option>
                    <option value="16">Kansas City Chiefs </option>
                    <option value="17">Las Vegas Raiders </option>
                    <option value="18">Los Angeles Chargers </option>
                    <option value="19">Los Angeles Rams </option>
                    <option value="20">Miami Dolphins </option>
                    <option value="21">Minnesota Vikings </option>
                    <option value="22">New England Patriots </option>
                    <option value="23">New Orleans Saints </option>
                    <option value="24">New York Giants </option>
                    <option value="25">New York Jets </option>
                    <option value="26">Philadelphia Eagles </option>
                    <option value="27">Pittsburgh Steelers </option>
                    <option value="28">San Francisco 49ers </option>
                    <option value="29">Seattle Seahawks </option>
                    <option value="30">Tampa Bay Buccaneers </option>
                    <option value="31">Tennessee Titans </option>
                    <option value="32">Washington Commanders</option>
                </select>
            </label>
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
