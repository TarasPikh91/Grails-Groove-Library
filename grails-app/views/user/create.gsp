<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/30/2018
  Time: 11:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
</div>
<div class="container">
    <h2>Registration</h2>
    <g:form action="save" method="post" class="createUser">
        <div class="form-group">
            <label for="login">Login:</label>
            <g:textField type="text" class="form-control requiredField" id="login" name="login"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <g:textField type="password" class="form-control requiredField" id="password" name="password"/>
        </div>
        <div class="form-group">
            <lable for="name">Name:</lable>
            <g:textField name="name" class="form-control requiredField" id="name"/>
        </div>
        <div class="form-group">
                <g:actionSubmit value="Save" class="btn btn-default" id="button"/>
        </div>
    </g:form>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="user/create.js"/>
</body>
</html>