<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="Model.User" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"user".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
</head>
<body>
    <h1>Welcome, <%= user.getUsername() %> (User)</h1>
    <p>This is the user dashboard.</p>
    <ul>
        <li><a href="products.jsp">Products</a></li>
        <li><a href="cart.jsp">Cart</a></li>
        <li><a href="index.jsp">Logout</a></li>
    </ul>
</body>
</html>
