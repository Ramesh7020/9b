<%@ page language="java" import="java.util.*" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    // Get name from form
    String name = request.getParameter("username");

    // If new name is submitted, store in session
    if (name != null) {
        session.setAttribute("username", name);
    }

    // Set session expiry to 1 minute (60 seconds)
    session.setMaxInactiveInterval(60);

    // Get name from session
    String user = (String) session.getAttribute("username");

    if (user != null) {
%>

<h2>Hello <%= user %>!</h2>
<p>Session will expire in 1 minute.</p>

<%
    } else {
%>

<h2>Session Expired!</h2>
<p>Please enter your name again.</p>
<a href="index.jsp">Go Back</a>

<%
    }
%>

</body>
</html>