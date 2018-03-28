<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 11:13 PM
--%>

<%@ page import="onlinelibrary.Book" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Author</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
<h2>Create new author</h2>
<g:form action="save" method="post">
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <g:textField name="fullName" class="form-control" id="fullName"/>
    </div>
        <div class="form-group">
        <label for="Books">Books:</label>
            <g:select name="book" from="${Book.list()}" class="form-control" value="${author?.book}" optionKey="id" multiple="true" id="Books"/>
        </div>
    <g:actionSubmit value="Save" class="btn btn-default"/>
</g:form>
</div>
</body>
</html>