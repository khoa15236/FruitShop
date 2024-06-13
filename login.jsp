<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="CSS/loginstyle.css"/>

    </head>
    <body>



        <div class="modal">
            <form class="modal-content" action="LoginServlet" method="post">
                <div class="imgcontainer">

                    <img src="https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="username"><b>Username</b></label>
                    <input  id="username" type="text" name="username" placeholder="Enter Username">
               
                    <label for="psw"><b>Password</b></label>
                    <input  type="password" placeholder="Enter Password" id="password" name="password">
                    <input type="checkbox"  id="rememberMe"> <label for="rememberMe">Remember me</label>
                    <button type="submit">Login</button>

                </div>


            </form>
        </div>

        <%
            String error = request.getParameter("error");
            if (error != null) {
                out.println("<p style='color:red'>" + error + "</p>");
            }
        %>
    </body>
</html>
