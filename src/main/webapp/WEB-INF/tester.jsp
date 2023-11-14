
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <body>
        <head>
            <jsp:include page="partials/head.jsp">
                <jsp:param name="title" value="Register For Our Site!"  />
            </jsp:include>
            <style><jsp:include page="/WEB-INF/partials/css_background.jsp" /></style>
            <title>Test Page</title>

        </head>

        <main>
            <nav>
            <jsp:include page="/WEB-INF/partials/navbar.jsp" />
            </nav>

            <h1>Hello world this is the test page</h1>

            <h2>Who would you like to view? </h2>

            <form action="/tester" method="POST">
                <div>
                    <label>Please Select a Team:</label>
                    <label>
                        <select name="teamName">
                            <option selected>Teams</option>
                            <option value="Cowboys">Cowboys</option>
                            <option value="Eagles">Eagles</option>
                            <option value="Washington Football Team">Washington Football Team</option>
                        </select>
                    </label>
                </div>
                <input type="submit" value="Submit" >
            </form>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
            <h1>Push</h1>
        </main>
        <footer>
            <h1>That's all folks</h1>
        </footer>
    </body>
</html>
