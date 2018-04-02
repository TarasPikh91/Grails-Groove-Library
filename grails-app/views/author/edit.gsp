<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 3/27/2018
  Time: 10:45 PM
--%>

<%@ page import="onlinelibrary.Book" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit author</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <g:include view="index.gsp"/>
    <h2>Edit author</h2>
    <g:form action="update" id="${author.id}" class="updateAuthor">
        <div class="form-group">
            <label for="FullName">Full Name:</label>
            <g:textField name="fullName" class="form-control requireField" id="FullName" value="${author.fullName}"/>
        </div>
        <div class="form-group">
            <label for="Books">Books:</label>
            <g:select name="book" from="${onlinelibrary.Book.list()}" class="form-control requireField" value="${author?.book}" optionKey="id" multiple="true" id="Books"/>
        </div>
        <g:actionSubmit value="Update" class="btn btn-default" id="button"/>
    </g:form>
</div>
<g:javascript src="jquery-3.3.1.min.js"/>
<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="author/edit.js"/>
</body>
</html>