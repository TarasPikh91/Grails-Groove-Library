<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/28/2018
  Time: 5:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="body contailer-fluid">
    <g:include view="index.gsp"/>
    <div class="container">
    <h2>Login</h2>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:form action="authenticate" method="post" >
                    <div class="form-group">
                        <label for="login">Login:</label>
                        <input type="text" class="form-control" id="login" name="login"/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="password"/>
                    </div>
        <div class="button">
            <span class="button">
                <input class="save btn btn-default" type="submit" value="Login" />
            </span>
        </div>
    </g:form>
    </div>
</div>
</body>
</html>