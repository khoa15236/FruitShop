<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="Model.User, Model.UserDB, java.util.ArrayList" %>

<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"admin".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }

    ArrayList<User> userList = UserDB.listAllUsers();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Manage Users</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Manage Users</h1>

            <h2>Add New User</h2>
            <form action="modifiUser" method="post" class="form-inline">
                <input type="hidden" name="action" value="add">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" class="form-control mx-sm-3" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control mx-sm-3" required>
                </div>
                <div class="form-group">
                    <label for="role">Role:</label>
                    <select id="role" name="role" class="form-control mx-sm-3" required>
                        <option value="user">User</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Add User</button>
            </form>

            <h2>Existing Users</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>UserID</th>
                        <th>Username</th>
                        <th>Role</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (User u : userList) {
                    %>
                    <tr>
                        <td><%= u.getUserID() %></td>
                        <td><%= u.getUsername() %></td>
                        <td><%= u.getRole() %></td>
                        <td>
                            <form action="modifiUser" method="post" style="display:inline;">
                                <input type="hidden" name="userID" value="<%= u.getUserID() %>">
                                <button type="submit" class="btn btn-danger">Delete</button>
                                <input type="hidden" name="action" value="delete">
                            </form>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
