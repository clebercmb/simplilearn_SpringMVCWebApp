<%--
  Created by IntelliJ IDEA.
  User: cleber
  Date: 5/26/21
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>

<--%@ page contentType="text/html;charset=UTF-8" language="java" %-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home</title>
</head>
<body>
    <h1>Hello welcome to Spring MVC Web</h1>

    <form action="sayName" method="post">
        <label>
            Enter Name <input type="text" name="fname"/>
        </label>

        <input type="submit" value="click me"/>

    </form>

    <br/>
    <h2>Try logging in</h2>
    <form action="Login" method="post">
        <label>
            User Name <input type="text" name="username"/>
        </label>
        <label>
            Password <input type="password" name="password"/>
        </label>

        <input type="submit" value="Login"/>

    </form>

    <span style="color:red">${errorMessage}</span> <br/>
    <a href="register">Click here to register</a>

</body>
</html>
