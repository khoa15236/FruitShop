<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="Model.User" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"admin".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="CSS/admin.css"/>
</head>
<body>
    <div class="header">     <h1>Welcome, <%= user.getUsername() %> (Admin)</h1> </div>
    <div class="mid"><p>OPTION</p></div>
    <div class="option">
        <a href="manage_users.jsp">Manage Users</a>
        <a href="index.jsp">Logout</a>
    </div>
</body>
</html>
